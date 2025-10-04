-- SilentLib v3 - Maximum Advanced UI Library
-- By thirst (overhauled)
-- Features: draggable/resizable windows, tabs, sections, buttons, toggles,
-- sliders, dropdowns, textbox, colorpicker, keybinds, notifications, theme editor,
-- save/load config (writefile/readfile if available), blur, shadows, modals

local SilentLib = {}
SilentLib.__index = SilentLib

-- Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local HttpService = game:GetService("HttpService")

local player = Players.LocalPlayer

-- Executor FS functions detection
local canWrite = type(writefile) == "function" and type(readfile) == "function" and type(isfile) == "function"
local CONFIG_FILENAME = "silentlib_config.json"

-- Default theme presets
SilentLib.DefaultThemes = {
	Dark = {
		MainColor = Color3.fromRGB(18,18,18),
		AccentColor = Color3.fromRGB(255,58,84),
		ButtonColor = Color3.fromRGB(35,35,35),
		TextColor = Color3.fromRGB(240,240,240),
		Corner = 12,
		Font = Enum.Font.Gotham
	},
	Neon = {
		MainColor = Color3.fromRGB(10,10,20),
		AccentColor = Color3.fromRGB(0,255,200),
		ButtonColor = Color3.fromRGB(18,18,30),
		TextColor = Color3.fromRGB(230,230,255),
		Corner = 10,
		Font = Enum.Font.GothamSemibold
	}
}

-- Defaults
SilentLib.Config = {
	Theme = SilentLib.DefaultThemes.Dark,
	WindowPosition = nil,
	WindowSize = nil,
	Keybind = Enum.KeyCode.RightShift,
	BlurEnabled = false
}

-- util: deep copy table
local function deepCopy(t)
	if type(t) ~= "table" then return t end
	local res = {}
	for k,v in pairs(t) do res[k] = deepCopy(v) end
	return res
end

-- save / load config
local function saveConfig(data)
	local ok, encoded = pcall(HttpService.JSONEncode, HttpService, data)
	if not ok then return false end
	if canWrite then
		pcall(function() writefile(CONFIG_FILENAME, encoded) end)
		return true
	else
		-- fallback to Player attribute (string)
		pcall(function() player:SetAttribute("SilentLib_Config", encoded) end)
		return true
	end
end

local function loadConfig()
	local loaded = nil
	if canWrite and isfile(CONFIG_FILENAME) then
		local ok, content = pcall(readfile, CONFIG_FILENAME)
		if ok and content then
			local succ, tbl = pcall(HttpService.JSONDecode, HttpService, content)
			if succ then loaded = tbl end
		end
	else
		local attr = player:GetAttribute("SilentLib_Config")
		if type(attr) == "string" then
			local succ, tbl = pcall(HttpService.JSONDecode, HttpService, attr)
			if succ then loaded = tbl end
		end
	end
	return loaded
end

-- theme helpers
local function applyStroke(parent, color, thickness)
	local s = Instance.new("UIStroke")
	s.Color = color
	s.Thickness = thickness or 1.2
	s.Parent = parent
	return s
end

local function makeCorner(parent, radius)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, radius or 10)
	c.Parent = parent
	return c
end

local function tween(instance, props, t, style, dir)
	t = t or 0.22
	style = style or Enum.EasingStyle.Sine
	dir = dir or Enum.EasingDirection.Out
	local info = TweenService:Create(instance, TweenInfo.new(t, style, dir), props)
	info:Play()
	return info
end

-- small rounding helper for sliders
local function round(n, d)
	d = d or 2
	local m = 10^d
	return math.floor(n*m + 0.5)/m
end

-- Notification queue manager
local function makeNotificationContainer(parent)
	local cont = Instance.new("Frame")
	cont.Name = "SilentLibNotifications"
	cont.AnchorPoint = Vector2.new(1,0)
	cont.Position = UDim2.new(1, -12, 0, 12)
	cont.Size = UDim2.new(0, 320, 0, 0)
	cont.BackgroundTransparency = 1
	cont.Parent = parent
	return cont
end

-- Blur effect for background (clientside)
local function enableBlur(on)
	if on then
		if not Lighting:FindFirstChild("__SilentLibBlur") then
			local b = Instance.new("BlurEffect")
			b.Name = "__SilentLibBlur"
			b.Size = 12
			b.Parent = Lighting
		end
	else
		local found = Lighting:FindFirstChild("__SilentLibBlur")
		if found then found:Destroy() end
	end
end

-- Builder: create base window
function SilentLib:CreateWindow(name, opts)
	opts = opts or {}
	local lib = {}
	setmetatable(lib, {__index = self})

	-- load saved config if present
	local saved = loadConfig()
	if saved and type(saved) == "table" then
		for k,v in pairs(saved) do
			SilentLib.Config[k] = v
		end
	end

	-- Window state
	lib._name = name or "SilentLibWindow"
	lib._theme = deepCopy(SilentLib.Config.Theme or SilentLib.DefaultThemes.Dark)
	lib._keybind = SilentLib.Config.Keybind or Enum.KeyCode.RightShift
	lib._blur = SilentLib.Config.BlurEnabled or false
	lib._tabs = {}
	lib._notifQueue = {}

	-- ScreenGui
	local sg = Instance.new("ScreenGui")
	sg.Name = lib._name .. "_SG"
	sg.ResetOnSpawn = false
	sg.Parent = player:WaitForChild("PlayerGui")

	-- optional shadow frame behind main
	local shadow = Instance.new("Frame", sg)
	shadow.Name = "Shadow"
	shadow.Size = UDim2.new(0, 560, 0, 400)
	shadow.Position = UDim2.new(0.5, -280, 0.5, -200)
	shadow.BackgroundColor3 = Color3.fromRGB(0,0,0)
	shadow.BackgroundTransparency = 0.6
	makeCorner(shadow, lib._theme.Corner + 6)
	shadow.ZIndex = 0

	-- main frame
	local main = Instance.new("Frame", sg)
	main.Name = "Main"
	main.Size = UDim2.new(0, 540, 0, 380)
	main.Position = SilentLib.Config.WindowPosition and UDim2.new(SilentLib.Config.WindowPosition[1], SilentLib.Config.WindowPosition[2], SilentLib.Config.WindowPosition[3], SilentLib.Config.WindowPosition[4]) or (SilentLib.Config.WindowSize and UDim2.new(0.5, -SilentLib.Config.WindowSize[1]/2, 0.5, -SilentLib.Config.WindowSize[2]/2) or UDim2.new(0.5, -270, 0.5, -190))
	main.BackgroundColor3 = lib._theme.MainColor
	main.BorderSizePixel = 0
	main.ZIndex = 2
	makeCorner(main, lib._theme.Corner)
	applyStroke(main, lib._theme.AccentColor, 1.6)

	-- header
	local header = Instance.new("Frame", main)
	header.Size = UDim2.new(1, 0, 0, 44)
	header.BackgroundTransparency = 1

	local title = Instance.new("TextLabel", header)
	title.Size = UDim2.new(1, -120, 1, 0)
	title.Position = UDim2.new(0, 12, 0, 0)
	title.BackgroundTransparency = 1
	title.Text = lib._name
	title.TextColor3 = lib._theme.TextColor
	title.Font = lib._theme.Font
	title.TextSize = 18
	title.TextXAlignment = Enum.TextXAlignment.Left

	-- header control buttons
	local controls = Instance.new("Frame", header)
	controls.Size = UDim2.new(0, 120, 1, 0)
	controls.Position = UDim2.new(1, -132, 0, 8)
	controls.BackgroundTransparency = 1

	local minBtn = Instance.new("TextButton", controls)
	minBtn.Size = UDim2.new(0, 36, 0, 26)
	minBtn.Position = UDim2.new(1, -88, 0, 0)
	minBtn.Text = "—"
	minBtn.Font = Enum.Font.SourceSansBold
	minBtn.TextSize = 20
	minBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
	minBtn.TextColor3 = lib._theme.TextColor
	makeCorner(minBtn, 6)
	applyStroke(minBtn, Color3.fromRGB(30,30,30), 1)

	local closeBtn = Instance.new("TextButton", controls)
	closeBtn.Size = UDim2.new(0, 36, 0, 26)
	closeBtn.Position = UDim2.new(1, -44, 0, 0)
	closeBtn.Text = "✕"
	closeBtn.Font = Enum.Font.SourceSansBold
	closeBtn.TextSize = 18
	closeBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
	closeBtn.TextColor3 = lib._theme.TextColor
	makeCorner(closeBtn, 6)
	applyStroke(closeBtn, Color3.fromRGB(30,30,30), 1)

	-- minimize / close logic
	local minimized = false
	minBtn.MouseButton1Click:Connect(function()
		minimized = not minimized
		if minimized then
			tween(main, {Size = UDim2.new(0, 300, 0, 44)}, 0.25)
			tween(shadow, {Size = UDim2.new(0, 320, 0, 54)}, 0.25)
		else
			tween(main, {Size = UDim2.new(0, 540, 0, 380)}, 0.25)
			tween(shadow, {Size = UDim2.new(0, 560, 0, 400)}, 0.25)
		end
	end)

	closeBtn.MouseButton1Click:Connect(function()
		-- save window state before close
		local pos = main.Position
		local size = main.Size
		SilentLib.Config.WindowPosition = {pos.X.Scale, pos.X.Offset, pos.Y.Scale, pos.Y.Offset}
		SilentLib.Config.WindowSize = {size.X.Offset, size.Y.Offset}
		SilentLib.Config.Keybind = lib._keybind
		SilentLib.Config.BlurEnabled = lib._blur
		SilentLib.Config.Theme = lib._theme
		saveConfig(SilentLib.Config)
		sg:Destroy()
	end)

	-- content area and tab bar
	local tabbar = Instance.new("Frame", main)
	tabbar.Size = UDim2.new(1, 0, 0, 36)
	tabbar.Position = UDim2.new(0, 0, 0, 44)
	tabbar.BackgroundTransparency = 1

	local tabLayout = Instance.new("UIListLayout", tabbar)
	tabLayout.FillDirection = Enum.FillDirection.Horizontal
	tabLayout.Padding = UDim.new(0, 8)
	tabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

	local content = Instance.new("Frame", main)
	content.Size = UDim2.new(1, -24, 1, -96)
	content.Position = UDim2.new(0, 12, 0, 88)
	content.BackgroundTransparency = 1
	content.ClipsDescendants = true

	-- resize handle (bottom-right)
	local resizeHandle = Instance.new("Frame", main)
	resizeHandle.Size = UDim2.new(0, 14, 0, 14)
	resizeHandle.Position = UDim2.new(1, -18, 1, -18)
	resizeHandle.BackgroundColor3 = Color3.fromRGB(60,60,60)
	makeCorner(resizeHandle, 6)
	resizeHandle.ZIndex = 5
	local resizing = false

	resizeHandle.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 then
			resizing = true
			local startMouse = inp.Position
			local startSize = main.AbsoluteSize
			local conn
			conn = UserInputService.InputChanged:Connect(function(move)
				if resizing and move.UserInputType == Enum.UserInputType.MouseMovement then
					local delta = move.Position - startMouse
					local newW = math.clamp(startSize.X + delta.X, 320, 1100)
					local newH = math.clamp(startSize.Y + delta.Y, 120, 900)
					main.Size = UDim2.new(0, newW, 0, newH)
					shadow.Size = UDim2.new(0, newW + 20, 0, newH + 20)
				end
			end)
			local upConn
			upConn = UserInputService.InputEnded:Connect(function(endInp)
				if endConn then endConn:Disconnect() end
				if endInp.UserInputType == Enum.UserInputType.MouseButton1 then
					resizing = false
					if conn then conn:Disconnect() end
					if upConn then upConn:Disconnect() end
				end
			end)
		end
	end)

	-- notification container
	local notifCont = makeNotificationContainer(sg)

	-- expose internals
	lib._screenGui = sg
	lib._main = main
	lib._content = content
	lib._tabbar = tabbar
	lib._notifCont = notifCont
	lib._shadow = shadow

	-- blur toggle
	enableBlur(lib._blur)

	-- Dragging main
	do
		local dragging, dragInput, dragStart, startPos
		main.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				dragStart = input.Position
				startPos = main.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		main.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				local delta = input.Position - dragStart
				main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				shadow.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X - 10, startPos.Y.Scale, startPos.Y.Offset + delta.Y - 10)
			end
		end)
	end

	-- keybind toggle (shows/hides UI)
	do
		local visible = true
		lib._toggleKey = lib._keybind or Enum.KeyCode.RightShift
		local function onInput(input, gpe)
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == lib._toggleKey then
					visible = not visible
					if visible then
						tween(main, {Position = main.Position, Size = main.Size}, 0.14)
						main.Visible = true
						shadow.Visible = true
						if lib._blur then enableBlur(true) end
					else
						main.Visible = false
						shadow.Visible = false
						if lib._blur then enableBlur(false) end
					end
				end
			end
		end
		UserInputService.InputBegan:Connect(onInput)
	end

	-- notification API
	function lib:Notify(title, text, duration)
		duration = duration or 4
		local nf = Instance.new("Frame")
		nf.Size = UDim2.new(0, 320, 0, 64)
		nf.BackgroundColor3 = Color3.fromRGB(24,24,24)
		nf.AnchorPoint = Vector2.new(1, 0)
		nf.Position = UDim2.new(1, 340, 0, 0)
		nf.Parent = notifCont
		nf.ZIndex = 10
		makeCorner(nf, 8)
		applyStroke(nf, Color3.fromRGB(36,36,36), 1)

		local ttl = Instance.new("TextLabel", nf)
		ttl.Size = UDim2.new(1, -16, 0, 20)
		ttl.Position = UDim2.new(0, 8, 0, 6)
		ttl.BackgroundTransparency = 1
		ttl.Text = title or "Notification"
		ttl.Font = lib._theme.Font
		ttl.TextColor3 = lib._theme.TextColor
		ttl.TextSize = 14
		ttl.TextXAlignment = Enum.TextXAlignment.Left

		local body = Instance.new("TextLabel", nf)
		body.Size = UDim2.new(1, -16, 0, 34)
		body.Position = UDim2.new(0, 8, 0, 24)
		body.BackgroundTransparency = 1
		body.Text = text or ""
		body.Font = lib._theme.Font
		body.TextColor3 = Color3.fromRGB(210,210,210)
		body.TextSize = 13
		body.TextXAlignment = Enum.TextXAlignment.Left
		tween(nf, {Position = UDim2.new(1, 0, 0, 0)}, 0.24)
		task.delay(duration, function()
			if nf and nf.Parent then
				tween(nf, {Position = UDim2.new(1, 340, 0, 0)}, 0.22)
				task.wait(0.22)
				pcall(function() nf:Destroy() end)
			end
		end)
		return nf
	end

	-- Theme editor modal (small)
	local function openThemeEditor()
		local modal = Instance.new("Frame", lib._screenGui)
		modal.Size = UDim2.new(0, 420, 0, 260)
		modal.Position = UDim2.new(0.5, -210, 0.5, -130)
		modal.BackgroundColor3 = Color3.fromRGB(18,18,18)
		modal.ZIndex = 50
		makeCorner(modal, lib._theme.Corner)
		applyStroke(modal, lib._theme.AccentColor, 1.6)

		local lbl = Instance.new("TextLabel", modal)
		lbl.Size = UDim2.new(1, -12, 0, 28)
		lbl.Position = UDim2.new(0, 6, 0, 8)
		lbl.BackgroundTransparency = 1
		lbl.Text = "Theme Editor"
		lbl.Font = lib._theme.Font
		lbl.TextColor3 = lib._theme.TextColor
		lbl.TextSize = 16
		lbl.TextXAlignment = Enum.TextXAlignment.Left

		local accentLabel = Instance.new("TextLabel", modal)
		accentLabel.Size = UDim2.new(0, 120, 0, 20)
		accentLabel.Position = UDim2.new(0, 12, 0, 44)
		accentLabel.BackgroundTransparency = 1
		accentLabel.Text = "Accent Color"
		accentLabel.TextColor3 = lib._theme.TextColor
		accentLabel.Font = lib._theme.Font
		accentLabel.TextSize = 14
		accentLabel.TextXAlignment = Enum.TextXAlignment.Left

		-- simple palette squares (preset colors)
		local pal = {"FF3A54","00FFC8","6A5CFF","FFD300","00A8FF","FF6A00","66FF66"}
		local xoffset = 12
		for i,hex in ipairs(pal) do
			local r = tonumber("0x"..hex:sub(1,2))
			local g = tonumber("0x"..hex:sub(3,4))
			local b = tonumber("0x"..hex:sub(5,6))
			local col = Color3.fromRGB(r,g,b)
			local sq = Instance.new("TextButton", modal)
			sq.Size = UDim2.new(0, 36, 0, 28)
			sq.Position = UDim2.new(0, xoffset, 0, 70)
			sq.BackgroundColor3 = col
			sq.Text = ""
			makeCorner(sq, 6)
			sq.MouseButton1Click:Connect(function()
				lib._theme.AccentColor = col
				applyStroke(main, lib._theme.AccentColor, 1.6)
				applyStroke(lib._shadow, lib._theme.AccentColor, 1.6)
				saveConfig(SilentLib.Config)
			end)
			xoffset = xoffset + 44
		end

		local close = Instance.new("TextButton", modal)
		close.Size = UDim2.new(0, 80, 0, 28)
		close.Position = UDim2.new(1, -92, 1, -36)
		close.BackgroundColor3 = Color3.fromRGB(40,40,40)
		close.Text = "Close"
		makeCorner(close, 6)
		close.MouseButton1Click:Connect(function() modal:Destroy() end)
	end

	-- CreateTab API
	function lib:CreateTab(tabName)
		local t = {}
		local btn = Instance.new("TextButton", tabbar)
		btn.Text = tabName
		btn.Size = UDim2.new(0, 110, 1, 0)
		btn.BackgroundColor3 = lib._theme.ButtonColor
		btn.Font = lib._theme.Font
		btn.TextColor3 = lib._theme.TextColor
		makeCorner(btn, lib._theme.Corner/1.6)
		applyStroke(btn, Color3.fromRGB(36,36,36), 1)

		local frame = Instance.new("Frame", content)
		frame.Size = UDim2.new(1, 0, 1, 0)
		frame.BackgroundTransparency = 1
		frame.Visible = false
		frame.ClipsDescendants = true

		local layout = Instance.new("UIListLayout", frame)
		layout.SortOrder = Enum.SortOrder.LayoutOrder
		layout.Padding = UDim.new(0,8)
		layout.HorizontalAlignment = Enum.HorizontalAlignment.Left

		local innerPad = Instance.new("Frame", frame)
		innerPad.Size = UDim2.new(1, -12, 1, 0)
		innerPad.Position = UDim2.new(0, 6, 0, 0)
		innerPad.BackgroundTransparency = 1

		btn.MouseButton1Click:Connect(function()
			if lib._activeTab and lib._activeFrame then lib._activeFrame.Visible = false end
			frame.Visible = true
			lib._activeTab = btn
			lib._activeFrame = frame
		end)

		-- Component builders
		function t:Section(title)
			local section = Instance.new("Frame", innerPad)
			section.Size = UDim2.new(1, 0, 0, 32)
			section.BackgroundTransparency = 1
			local lbl = Instance.new("TextLabel", section)
			lbl.BackgroundTransparency = 1
			lbl.Size = UDim2.new(1, 0, 1, 0)
			lbl.Text = title
			lbl.Font = lib._theme.Font
			lbl.TextColor3 = lib._theme.TextColor
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			return section
		end

		function t:CreateButton(text, cb)
			local b = Instance.new("TextButton", innerPad)
			b.Size = UDim2.new(0, 300, 0, 36)
			b.Text = text
			b.Font = lib._theme.Font
			b.TextSize = 15
			b.TextColor3 = lib._theme.TextColor
			b.BackgroundColor3 = lib._theme.ButtonColor
			makeCorner(b, 8)
			applyStroke(b, Color3.fromRGB(36,36,36), 1)
			b.MouseEnter:Connect(function() tween(b, {BackgroundColor3 = Color3.fromRGB(46,46,46)}, 0.12) end)
			b.MouseLeave:Connect(function() tween(b, {BackgroundColor3 = lib._theme.ButtonColor}, 0.12) end)
			b.MouseButton1Click:Connect(function() pcall(cb) end)
			return b
		end

		function t:CreateToggle(labelText, default, cb)
			local frameToggle = Instance.new("Frame", innerPad)
			frameToggle.Size = UDim2.new(0, 300, 0, 36)
			frameToggle.BackgroundColor3 = lib._theme.ButtonColor
			makeCorner(frameToggle, 8)
			applyStroke(frameToggle, Color3.fromRGB(36,36,36), 1)

			local lbl = Instance.new("TextLabel", frameToggle)
			lbl.Size = UDim2.new(0.65, 0, 1, 0)
			lbl.Position = UDim2.new(0.04, 0, 0, 0)
			lbl.BackgroundTransparency = 1
			lbl.Text = labelText
			lbl.Font = lib._theme.Font
			lbl.TextColor3 = lib._theme.TextColor
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left

			local btn = Instance.new("TextButton", frameToggle)
			btn.Size = UDim2.new(0.25, 0, 0.7, 0)
			btn.Position = UDim2.new(0.71, 0, 0.15, 0)
			btn.BackgroundColor3 = default and lib._theme.AccentColor or Color3.fromRGB(50,50,50)
			btn.Text = ""
			makeCorner(btn, 8)
			local toggled = default or false

			btn.MouseButton1Click:Connect(function()
				toggled = not toggled
				btn.BackgroundColor3 = toggled and lib._theme.AccentColor or Color3.fromRGB(50,50,50)
				pcall(cb, toggled)
			end)
			return btn
		end

		function t:CreateSlider(labelText, min, max, default, cb)
			min = min or 0; max = max or 100
			default = default or min
			local value = math.clamp(default, min, max)
			local container = Instance.new("Frame", innerPad)
			container.Size = UDim2.new(0, 360, 0, 56)
			container.BackgroundTransparency = 1

			local lbl = Instance.new("TextLabel", container)
			lbl.Size = UDim2.new(1, 0, 0, 18)
			lbl.BackgroundTransparency = 1
			lbl.Text = labelText.." : "..tostring(value)
			lbl.Font = lib._theme.Font
			lbl.TextSize = 14
			lbl.TextColor3 = lib._theme.TextColor
			lbl.TextXAlignment = Enum.TextXAlignment.Left

			local barBg = Instance.new("Frame", container)
			barBg.Size = UDim2.new(1, 0, 0, 14)
			barBg.Position = UDim2.new(0, 0, 0, 30)
			barBg.BackgroundColor3 = Color3.fromRGB(44,44,44)
			makeCorner(barBg, 8)
			applyStroke(barBg, Color3.fromRGB(36,36,36), 1)

			local fill = Instance.new("Frame", barBg)
			fill.Size = UDim2.new((value - min)/(max - min), 0, 1, 0)
			fill.BackgroundColor3 = lib._theme.AccentColor
			makeCorner(fill, 8)

			local draggingS = false
			local function updateFromInput(inp)
				local absX = inp.Position.X
				local left = barBg.AbsolutePosition.X
				local width = barBg.AbsoluteSize.X
				local rel = math.clamp((absX - left)/width, 0, 1)
				value = round(min + rel*(max-min), 2)
				fill.Size = UDim2.new((value - min)/(max - min), 0, 1, 0)
				lbl.Text = labelText.." : "..tostring(value)
				pcall(cb, value)
			end

			barBg.InputBegan:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 then
					draggingS = true
					updateFromInput(inp)
				end
			end)
			barBg.InputEnded:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 then
					draggingS = false
				end
			end)
			UserInputService.InputChanged:Connect(function(inp)
				if draggingS and inp.UserInputType == Enum.UserInputType.MouseMovement then
					updateFromInput(inp)
				end
			end)
			return {
				GetValue = function() return value end,
				SetValue = function(v) value = math.clamp(v,min,max); fill.Size = UDim2.new((value-min)/(max-min),0,1,0); lbl.Text = labelText.." : "..tostring(value); pcall(cb, value) end,
				Frame = container
			}
		end

		function t:CreateDropdown(labelText, options, default, cb)
			options = options or {}
			default = default or options[1]
			local opened = false
			local selected = default

			local container = Instance.new("Frame", innerPad)
			container.Size = UDim2.new(0, 360, 0, 36)
			container.BackgroundColor3 = lib._theme.ButtonColor
			makeCorner(container, 8)
			applyStroke(container, Color3.fromRGB(36,36,36), 1)

			local lbl = Instance.new("TextLabel", container)
			lbl.Size = UDim2.new(0.6, 0, 1, 0)
			lbl.Position = UDim2.new(0.04, 0, 0, 0)
			lbl.BackgroundTransparency = 1
			lbl.Text = labelText
			lbl.Font = lib._theme.Font
			lbl.TextColor3 = lib._theme.TextColor
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left

			local sel = Instance.new("TextLabel", container)
			sel.Size = UDim2.new(0.34, -8, 1, 0)
			sel.Position = UDim2.new(0.62, 0, 0, 0)
			sel.BackgroundTransparency = 1
			sel.Text = tostring(selected)
			sel.Font = lib._theme.Font
			sel.TextSize = 14
			sel.TextColor3 = lib._theme.TextColor
			sel.TextXAlignment = Enum.TextXAlignment.Right

			local arrow = Instance.new("TextButton", container)
			arrow.Size = UDim2.new(0, 30, 0, 28)
			arrow.Position = UDim2.new(1, -38, 0, 4)
			arrow.Text = "▾"
			arrow.Font = lib._theme.Font
			arrow.TextSize = 14
			arrow.BackgroundTransparency = 1
			arrow.TextColor3 = lib._theme.TextColor

			local listFrame = Instance.new("Frame", container)
			listFrame.Size = UDim2.new(1, 0, 0, 0)
			listFrame.Position = UDim2.new(0, 0, 1, 6)
			listFrame.BackgroundTransparency = 1
			listFrame.ClipsDescendants = true

			local function toggleList()
				opened = not opened
				if opened then
					-- populate
					for i,opt in ipairs(options) do
						local b = Instance.new("TextButton", listFrame)
						b.Size = UDim2.new(1, -8, 0, 28)
						b.Position = UDim2.new(0, 4, 0, (i-1)*32)
						b.BackgroundColor3 = Color3.fromRGB(36,36,36)
						b.Text = tostring(opt)
						b.Font = lib._theme.Font
						b.TextColor3 = lib._theme.TextColor
						makeCorner(b, 6)
						b.MouseButton1Click:Connect(function()
							selected = opt
							sel.Text = tostring(opt)
							pcall(cb, opt)
							toggleList()
						end)
					end
					local target = math.clamp(#options * 32, 0, 240)
					tween(listFrame, {Size = UDim2.new(1, 0, 0, target)}, 0.16)
				else
					tween(listFrame, {Size = UDim2.new(1, 0, 0, 0)}, 0.12)
					task.delay(0.14, function()
						for _,c in ipairs(listFrame:GetChildren()) do
							if c:IsA("TextButton") then c:Destroy() end
						end
					end)
				end
			end

			arrow.MouseButton1Click:Connect(toggleList)
			container.InputBegan:Connect(function(inp) if inp.UserInputType==Enum.UserInputType.MouseButton1 then toggleList() end end)

			return {
				GetValue = function() return selected end,
				SetValue = function(v) selected = v; sel.Text = tostring(v); pcall(cb, v) end,
				Frame = container
			}
		end

		function t:CreateTextbox(labelText, placeholder, cb)
			local cont = Instance.new("Frame", innerPad)
			cont.Size = UDim2.new(0, 360, 0, 40)
			cont.BackgroundTransparency = 1

			local lbl = Instance.new("TextLabel", cont)
			lbl.Size = UDim2.new(1, 0, 0, 14)
			lbl.BackgroundTransparency = 1
			lbl.Text = labelText
			lbl.Font = lib._theme.Font
			lbl.TextColor3 = lib._theme.TextColor
			lbl.TextSize = 13
			lbl.TextXAlignment = Enum.TextXAlignment.Left

			local box = Instance.new("TextBox", cont)
			box.Size = UDim2.new(1, 0, 0, 22)
			box.Position = UDim2.new(0, 0, 0, 16)
			box.BackgroundColor3 = lib._theme.ButtonColor
			box.Text = placeholder or ""
			box.TextColor3 = lib._theme.TextColor
			box.Font = lib._theme.Font
			box.TextSize = 14
			makeCorner(box, 6)
			applyStroke(box, Color3.fromRGB(36,36,36), 1)

			box.FocusLost:Connect(function(enter)
				if enter then pcall(cb, box.Text) end
			end)
			return box
		end

		function t:CreateColorPicker(labelText, defaultColor, cb)
			local cont = Instance.new("Frame", innerPad)
			cont.Size = UDim2.new(0, 360, 0, 60)
			cont.BackgroundTransparency = 1

			local lbl = Instance.new("TextLabel", cont)
			lbl.Size = UDim2.new(1, 0, 0, 14)
			lbl.Position = UDim2.new(0, 0, 0, 0)
			lbl.BackgroundTransparency = 1
			lbl.Text = labelText
			lbl.Font = lib._theme.Font
			lbl.TextColor3 = lib._theme.TextColor
			lbl.TextSize = 13
			lbl.TextXAlignment = Enum.TextXAlignment.Left

			local preview = Instance.new("Frame", cont)
			preview.Size = UDim2.new(0, 36, 0, 36)
			preview.Position = UDim2.new(0, 0, 0, 20)
			preview.BackgroundColor3 = defaultColor or lib._theme.AccentColor
			makeCorner(preview, 6)
			applyStroke(preview, Color3.fromRGB(36,36,36), 1)

			local openBtn = Instance.new("TextButton", cont)
			openBtn.Size = UDim2.new(0, 80, 0, 28)
			openBtn.Position = UDim2.new(0, 44, 0, 26)
			openBtn.Text = "Pick"
			openBtn.Font = lib._theme.Font
			openBtn.TextColor3 = lib._theme.TextColor
			openBtn.BackgroundColor3 = lib._theme.ButtonColor
			makeCorner(openBtn, 6)
			applyStroke(openBtn, Color3.fromRGB(36,36,36), 1)

			local modal = nil
			openBtn.MouseButton1Click:Connect(function()
				if modal and modal.Parent then modal:Destroy() end
				modal = Instance.new("Frame", lib._screenGui)
				modal.Size = UDim2.new(0, 320, 0, 220)
				modal.Position = UDim2.new(0.5, -160, 0.5, -110)
				modal.BackgroundColor3 = Color3.fromRGB(18,18,18)
				makeCorner(modal, 10)
				applyStroke(modal, lib._theme.AccentColor, 1.4)

				local pre = Instance.new("Frame", modal)
				pre.Size = UDim2.new(0, 48, 0, 48)
				pre.Position = UDim2.new(0.5, -24, 0, 12)
				pre.BackgroundColor3 = preview.BackgroundColor3
				makeCorner(pre, 8)

				-- simple palette to pick from (basic)
				local pal = {Color3.fromRGB(255,58,84), Color3.fromRGB(0,255,200), Color3.fromRGB(106,92,255), Color3.fromRGB(255,211,0), Color3.fromRGB(0,168,255)}
				local x = 12
				for i,col in ipairs(pal) do
					local sq = Instance.new("TextButton", modal)
					sq.Size = UDim2.new(0, 44, 0, 28)
					sq.Position = UDim2.new(0, x, 0, 80)
					sq.BackgroundColor3 = col
					sq.Text = ""
					makeCorner(sq, 6)
					sq.MouseButton1Click:Connect(function()
						preview.BackgroundColor3 = col
						pre.BackgroundColor3 = col
						pcall(cb, col)
					end)
					x = x + 52
				end

				local close = Instance.new("TextButton", modal)
				close.Size = UDim2.new(0, 80, 0, 28)
				close.Position = UDim2.new(1, -96, 1, -40)
				close.Text = "Close"
				close.Font = lib._theme.Font
				close.BackgroundColor3 = lib._theme.ButtonColor
				makeCorner(close, 6)
				close.MouseButton1Click:Connect(function() modal:Destroy() end)
			end)

			return {
				Preview = preview,
				Set = function(c) preview.BackgroundColor3 = c; pcall(cb,c) end,
				Get = function() return preview.BackgroundColor3 end
			}
		end

		function t:CreateKeybind(labelText, defaultKey, cb)
			local cont = Instance.new("Frame", innerPad)
			cont.Size = UDim2.new(0, 360, 0, 36)
			cont.BackgroundTransparency = 1

			local lbl = Instance.new("TextLabel", cont)
			lbl.Size = UDim2.new(0.6, 0, 1, 0)
			lbl.Position = UDim2.new(0, 6, 0, 0)
			lbl.BackgroundTransparency = 1
			lbl.Text = labelText
			lbl.Font = lib._theme.Font
			lbl.TextColor3 = lib._theme.TextColor
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left

			local keyBtn = Instance.new("TextButton", cont)
			keyBtn.Size = UDim2.new(0.3, 0, 0.7, 0)
			keyBtn.Position = UDim2.new(0.66, 0, 0.15, 0)
			keyBtn.Font = lib._theme.Font
			keyBtn.TextSize = 14
			keyBtn.Text = tostring(defaultKey or lib._keybind)
			keyBtn.BackgroundColor3 = lib._theme.ButtonColor
			makeCorner(keyBtn, 8)
			applyStroke(keyBtn, Color3.fromRGB(36,36,36), 1)

			local binding = defaultKey or lib._keybind
			local listening = false
			local conn = nil

			keyBtn.MouseButton1Click:Connect(function()
				if listening then return end
				listening = true
				keyBtn.Text = "Press a key..."
				conn = UserInputService.InputBegan:Connect(function(inp)
					if inp.UserInputType == Enum.UserInputType.Keyboard then
						binding = inp.KeyCode
						keyBtn.Text = tostring(binding)
						if conn then conn:Disconnect() end
						listening = false
						lib._keybind = binding
						SilentLib.Config.Keybind = binding
						saveConfig(SilentLib.Config)
						pcall(cb, binding)
					end
				end)
			end)
			return {
				Get = function() return binding end,
				Set = function(k) binding = k; keyBtn.Text = tostring(k); lib._keybind = k; SilentLib.Config.Keybind = k; saveConfig(SilentLib.Config) end
			}
		end

		-- convenience: show theme editor button on tab
		function t:CreateThemeButton()
			local b = t:CreateButton("Open Theme Editor", openThemeEditor)
			return b
		end

		-- expose tab frame
		t._frame = frame
		lib._tabs[tabName] = t
		if not lib._activeTab then
			lib._activeTab = btn
			lib._activeFrame = frame
			frame.Visible = true
		end

		return t
	end

	-- Save current UI config (theme/keybind/window pos)
	function lib:SaveUI()
		local pos = main.Position
		local size = main.Size
		SilentLib.Config.WindowPosition = {pos.X.Scale, pos.X.Offset, pos.Y.Scale, pos.Y.Offset}
		SilentLib.Config.WindowSize = {size.X.Offset, size.Y.Offset}
		SilentLib.Config.Keybind = lib._keybind
		SilentLib.Config.BlurEnabled = lib._blur
		SilentLib.Config.Theme = lib._theme
		saveConfig(SilentLib.Config)
	end

	-- set theme dynamically
	function lib:SetTheme(themeTable)
		for k,v in pairs(themeTable) do lib._theme[k] = v end
		main.BackgroundColor3 = lib._theme.MainColor
		title.TextColor3 = lib._theme.TextColor
		applyStroke(main, lib._theme.AccentColor, 1.6)
		-- update other elements if needed
	end

	-- toggle blur
	function lib:ToggleBlur(on)
		lib._blur = (on == nil) and not lib._blur or on
		enableBlur(lib._blur)
		SilentLib.Config.BlurEnabled = lib._blur
		saveConfig(SilentLib.Config)
	end

	-- return the library window object
	return lib
end

-- convenience: expose presets / helpers
SilentLib.LoadedConfig = SilentLib.Config
SilentLib.Presets = SilentLib.DefaultThemes

-- return module
return SilentLib
