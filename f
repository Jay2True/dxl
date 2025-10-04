-- SilentLib UI Library (v2) - Adds Sliders, Dropdowns, Notifications
-- Clean dark theme, draggable frame, tab system, and components
-- By thirst (polished)

local SilentLib = {}
SilentLib.__index = SilentLib

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- Default theme
SilentLib.Theme = {
	MainColor = Color3.fromRGB(20,20,20),
	AccentColor = Color3.fromRGB(255,58,84),
	ButtonColor = Color3.fromRGB(35,35,35),
	TextColor = Color3.fromRGB(255,255,255),
	CornerRadius = 10,
	Font = Enum.Font.GothamSemibold
}

-- Helpers
local function createCorner(parent, radius)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, radius or SilentLib.Theme.CornerRadius)
	c.Parent = parent
	return c
end

local function applyStroke(parent, color, thickness)
	local s = Instance.new("UIStroke")
	s.Color = color
	s.Thickness = thickness or 1.5
	s.Parent = parent
	return s
end

local function fadeGui(guiObject, goalProps, props)
	props = props or {}
	local tweenInfo = TweenInfo.new(props.time or 0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	TweenService:Create(guiObject, tweenInfo, goalProps):Play()
end

local function round(num, decimals)
	decimals = decimals or 0
	local mult = 10 ^ decimals
	return math.floor(num * mult + 0.5) / mult
end

-- Create Window
function SilentLib:CreateWindow(name)
	local self = setmetatable({}, SilentLib)

	-- ScreenGui
	self.Gui = Instance.new("ScreenGui")
	self.Gui.Name = name .. "_UI"
	self.Gui.ResetOnSpawn = false
	self.Gui.Parent = player:WaitForChild("PlayerGui")

	-- Notification container
	local notifContainer = Instance.new("Frame", self.Gui)
	notifContainer.AnchorPoint = Vector2.new(1, 0)
	notifContainer.Position = UDim2.new(1, -10, 0, 10)
	notifContainer.Size = UDim2.new(0, 300, 0, 0)
	notifContainer.BackgroundTransparency = 1
	self._notifQueue = {}
	self._notifContainer = notifContainer

	-- Main Frame
	self.MainFrame = Instance.new("Frame", self.Gui)
	self.MainFrame.Size = UDim2.new(0, 540, 0, 380)
	self.MainFrame.Position = UDim2.new(0.5, -270, 0.5, -190)
	self.MainFrame.BackgroundColor3 = self.Theme.MainColor
	self.MainFrame.BorderSizePixel = 0
	createCorner(self.MainFrame)
	applyStroke(self.MainFrame, self.Theme.AccentColor, 2)

	-- Header
	local Header = Instance.new("Frame", self.MainFrame)
	Header.Size = UDim2.new(1, 0, 0, 44)
	Header.Position = UDim2.new(0, 0, 0, 0)
	Header.BackgroundTransparency = 1

	local Title = Instance.new("TextLabel", Header)
	Title.Text = name
	Title.Size = UDim2.new(1, 0, 1, 0)
	Title.BackgroundTransparency = 1
	Title.TextColor3 = self.Theme.TextColor
	Title.Font = Enum.Font.GothamBold
	Title.TextSize = 20
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.TextStrokeTransparency = 1
	Title.Position = UDim2.new(0, 12, 0, 0)

	-- Close & Minimize buttons (optional)
	local CloseBtn = Instance.new("TextButton", Header)
	CloseBtn.Size = UDim2.new(0, 34, 0, 24)
	CloseBtn.Position = UDim2.new(1, -44, 0, 10)
	CloseBtn.BackgroundTransparency = 0
	CloseBtn.Text = "✕"
	CloseBtn.Font = Enum.Font.SourceSansBold
	CloseBtn.TextSize = 18
	CloseBtn.TextColor3 = Color3.new(1,1,1)
	CloseBtn.BackgroundColor3 = Color3.fromRGB(45,45,45)
	createCorner(CloseBtn)
	applyStroke(CloseBtn, Color3.fromRGB(60,60,60), 1)

	local MinBtn = Instance.new("TextButton", Header)
	MinBtn.Size = UDim2.new(0, 34, 0, 24)
	MinBtn.Position = UDim2.new(1, -84, 0, 10)
	MinBtn.BackgroundTransparency = 0
	MinBtn.Text = "—"
	MinBtn.Font = Enum.Font.SourceSansBold
	MinBtn.TextSize = 18
	MinBtn.TextColor3 = Color3.new(1,1,1)
	MinBtn.BackgroundColor3 = Color3.fromRGB(45,45,45)
	createCorner(MinBtn)
	applyStroke(MinBtn, Color3.fromRGB(60,60,60), 1)

	local minimized = false
	MinBtn.MouseButton1Click:Connect(function()
		minimized = not minimized
		local target = minimized and UDim2.new(0, 200, 0, 44) or UDim2.new(0, 540, 0, 380)
		fadeGui(self.MainFrame, {Size = target}, {time = 0.22})
	end)

	CloseBtn.MouseButton1Click:Connect(function()
		self.Gui:Destroy()
	end)

	-- Draggable
	local dragging, dragInput, dragStart, startPos
	self.MainFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = self.MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	self.MainFrame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - dragStart
			self.MainFrame.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)

	-- Tab bar
	self.TabBar = Instance.new("Frame", self.MainFrame)
	self.TabBar.Size = UDim2.new(1, 0, 0, 36)
	self.TabBar.Position = UDim2.new(0, 0, 0, 44)
	self.TabBar.BackgroundTransparency = 1

	local TabLayout = Instance.new("UIListLayout", self.TabBar)
	TabLayout.FillDirection = Enum.FillDirection.Horizontal
	TabLayout.Padding = UDim.new(0, 8)
	TabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

	self.Tabs = {}
	self.ActiveTab = nil

	-- Content area
	local ContentArea = Instance.new("Frame", self.MainFrame)
	ContentArea.Size = UDim2.new(1, -24, 1, -96)
	ContentArea.Position = UDim2.new(0, 12, 0, 88)
	ContentArea.BackgroundTransparency = 1
	self.ContentArea = ContentArea

	-- Notification helper
	function self:Notify(title, text, duration)
		duration = duration or 4
		-- Build notification
		local nf = Instance.new("Frame")
		nf.Size = UDim2.new(1, 0, 0, 60)
		nf.BackgroundColor3 = Color3.fromRGB(28,28,28)
		nf.AnchorPoint = Vector2.new(1, 0)
		nf.Position = UDim2.new(1, 0, 0, 0)
		nf.Parent = self._notifContainer
		createCorner(nf, 8)
		applyStroke(nf, Color3.fromRGB(40,40,40), 1)

		local ttl = Instance.new("TextLabel", nf)
		ttl.Size = UDim2.new(1, -12, 0, 20)
		ttl.Position = UDim2.new(0, 6, 0, 6)
		ttl.BackgroundTransparency = 1
		ttl.Text = title or "Notification"
		ttl.Font = self.Theme.Font
		ttl.TextColor3 = self.Theme.TextColor
		ttl.TextSize = 14
		ttl.TextXAlignment = Enum.TextXAlignment.Left

		local body = Instance.new("TextLabel", nf)
		body.Size = UDim2.new(1, -12, 0, 30)
		body.Position = UDim2.new(0, 6, 0, 24)
		body.BackgroundTransparency = 1
		body.Text = text or ""
		body.Font = self.Theme.Font
		body.TextColor3 = Color3.fromRGB(200,200,200)
		body.TextSize = 13
		body.TextXAlignment = Enum.TextXAlignment.Left

		-- animate slide-in
		nf.Position = UDim2.new(1, 320, 0, 0)
		fadeGui(nf, {Position = UDim2.new(1, 0, 0, 0)})
		-- auto remove
		task.delay(duration, function()
			if nf and nf.Parent then
				fadeGui(nf, {Position = UDim2.new(1, 320, 0, 0)})
				task.wait(0.28)
				nf:Destroy()
			end
		end)
	end

	-- Tab creation
	function self:CreateTab(tabName)
		local tab = {}

		local Button = Instance.new("TextButton", self.TabBar)
		Button.Size = UDim2.new(0, 110, 1, 0)
		Button.Text = tabName
		Button.BackgroundColor3 = self.Theme.ButtonColor
		Button.TextColor3 = self.Theme.TextColor
		Button.Font = self.Theme.Font
		Button.TextSize = 14
		createCorner(Button)
		applyStroke(Button, Color3.fromRGB(40,40,40), 1)

		local Frame = Instance.new("Frame", ContentArea)
		Frame.Size = UDim2.new(1, 0, 1, 0)
		Frame.Position = UDim2.new(0, 0, 0, 0)
		Frame.BackgroundTransparency = 1
		Frame.Visible = false

		local Layout = Instance.new("UIListLayout", Frame)
		Layout.Padding = UDim.new(0, 8)
		Layout.SortOrder = Enum.SortOrder.LayoutOrder
		Layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
		Layout.VerticalAlignment = Enum.VerticalAlignment.Top

		Button.MouseButton1Click:Connect(function()
			if self.ActiveTab then self.ActiveTab.Visible = false end
			Frame.Visible = true
			self.ActiveTab = Frame
		end)

		-- Components
		function tab:CreateButton(name, callback)
			local btn = Instance.new("TextButton", Frame)
			btn.Size = UDim2.new(0, 260, 0, 36)
			btn.BackgroundColor3 = SilentLib.Theme.ButtonColor
			btn.TextColor3 = SilentLib.Theme.TextColor
			btn.Text = name
			btn.Font = SilentLib.Theme.Font
			btn.TextSize = 15
			createCorner(btn)
			applyStroke(btn, Color3.fromRGB(50,50,50), 1)

			-- hover
			btn.MouseEnter:Connect(function()
				fadeGui(btn, {BackgroundColor3 = Color3.fromRGB(45,45,45)})
			end)
			btn.MouseLeave:Connect(function()
				fadeGui(btn, {BackgroundColor3 = SilentLib.Theme.ButtonColor})
			end)
			btn.MouseButton1Click:Connect(function()
				pcall(callback)
			end)
			return btn
		end

		function tab:CreateLabel(text)
			local lbl = Instance.new("TextLabel", Frame)
			lbl.Size = UDim2.new(0, 520-24, 0, 24)
			lbl.BackgroundTransparency = 1
			lbl.Text = text
			lbl.TextColor3 = SilentLib.Theme.TextColor
			lbl.Font = SilentLib.Theme.Font
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			return lbl
		end

		function tab:CreateToggle(name, default, callback)
			local toggled = (default == true)
			local toggleFrame = Instance.new("Frame", Frame)
			toggleFrame.Size = UDim2.new(0, 260, 0, 36)
			toggleFrame.BackgroundColor3 = SilentLib.Theme.ButtonColor
			createCorner(toggleFrame)
			applyStroke(toggleFrame, Color3.fromRGB(50,50,50), 1)

			local label = Instance.new("TextLabel", toggleFrame)
			label.Size = UDim2.new(0.65, 0, 1, 0)
			label.Position = UDim2.new(0.04, 0, 0, 0)
			label.BackgroundTransparency = 1
			label.Text = name
			label.TextColor3 = SilentLib.Theme.TextColor
			label.Font = SilentLib.Theme.Font
			label.TextSize = 14
			label.TextXAlignment = Enum.TextXAlignment.Left

			local btn = Instance.new("TextButton", toggleFrame)
			btn.Size = UDim2.new(0.25, 0, 0.7, 0)
			btn.Position = UDim2.new(0.71, 0, 0.15, 0)
			btn.BackgroundColor3 = toggled and SilentLib.Theme.AccentColor or Color3.fromRGB(50,50,50)
			btn.Text = ""
			createCorner(btn)

			btn.MouseButton1Click:Connect(function()
				toggled = not toggled
				btn.BackgroundColor3 = toggled and SilentLib.Theme.AccentColor or Color3.fromRGB(50,50,50)
				pcall(callback, toggled)
			end)

			return btn
		end

		function tab:CreateSlider(name, min, max, default, callback)
			min = min or 0
			max = max or 100
			default = default or min
			local value = math.clamp(default, min, max)

			local container = Instance.new("Frame", Frame)
			container.Size = UDim2.new(0, 320, 0, 52)
			container.BackgroundTransparency = 1

			local label = Instance.new("TextLabel", container)
			label.Size = UDim2.new(1, 0, 0, 18)
			label.Position = UDim2.new(0, 0, 0, 0)
			label.BackgroundTransparency = 1
			label.Text = name.." : "..tostring(value)
			label.Font = SilentLib.Theme.Font
			label.TextSize = 14
			label.TextColor3 = SilentLib.Theme.TextColor
			label.TextXAlignment = Enum.TextXAlignment.Left

			local barBg = Instance.new("Frame", container)
			barBg.Size = UDim2.new(1, 0, 0, 14)
			barBg.Position = UDim2.new(0, 0, 0, 26)
			barBg.BackgroundColor3 = Color3.fromRGB(45,45,45)
			createCorner(barBg, 6)
			applyStroke(barBg, Color3.fromRGB(40,40,40), 1)

			local fill = Instance.new("Frame", barBg)
			fill.Size = UDim2.new((value - min) / (max - min), 0, 1, 0)
			fill.BackgroundColor3 = SilentLib.Theme.AccentColor
			createCorner(fill, 6)

			local draggingSlider = false
			local function updateFromInput(input)
				local absX = input.Position.X
				local left = barBg.AbsolutePosition.X
				local width = barBg.AbsoluteSize.X
				local rel = math.clamp((absX - left) / width, 0, 1)
				local newVal = min + (rel * (max - min))
				-- keep 2 decimals if needed
				value = round(newVal, 2)
				fill.Size = UDim2.new((value - min) / (max - min), 0, 1, 0)
				label.Text = name.." : "..tostring(value)
				pcall(callback, value)
			end

			barBg.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					draggingSlider = true
					updateFromInput(input)
				end
			end)
			barBg.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					draggingSlider = false
				end
			end)
			UserInputService.InputChanged:Connect(function(input)
				if draggingSlider and input.UserInputType == Enum.UserInputType.MouseMovement then
					updateFromInput(input)
				end
			end)
			return {
				Frame = container,
				GetValue = function() return value end,
				SetValue = function(v)
					value = math.clamp(v, min, max)
					fill.Size = UDim2.new((value - min) / (max - min), 0, 1, 0)
					label.Text = name.." : "..tostring(value)
					pcall(callback, value)
				end
			}
		end

		function tab:CreateDropdown(name, options, default, callback)
			options = options or {}
			default = default or options[1]
			local opened = false
			local selected = default

			local container = Instance.new("Frame", Frame)
			container.Size = UDim2.new(0, 320, 0, 36)
			container.BackgroundColor3 = SilentLib.Theme.ButtonColor
			createCorner(container)
			applyStroke(container, Color3.fromRGB(50,50,50), 1)

			local label = Instance.new("TextLabel", container)
			label.Size = UDim2.new(0.6, 0, 1, 0)
			label.Position = UDim2.new(0.04, 0, 0, 0)
			label.BackgroundTransparency = 1
			label.Text = name
			label.Font = SilentLib.Theme.Font
			label.TextSize = 14
			label.TextColor3 = SilentLib.Theme.TextColor
			label.TextXAlignment = Enum.TextXAlignment.Left

			local sel = Instance.new("TextLabel", container)
			sel.Size = UDim2.new(0.34, -8, 1, 0)
			sel.Position = UDim2.new(0.62, 0, 0, 0)
			sel.BackgroundTransparency = 1
			sel.Text = tostring(selected)
			sel.Font = SilentLib.Theme.Font
			sel.TextSize = 14
			sel.TextColor3 = SilentLib.Theme.TextColor
			sel.TextXAlignment = Enum.TextXAlignment.Right

			local arrow = Instance.new("TextButton", container)
			arrow.Size = UDim2.new(0, 30, 0, 28)
			arrow.Position = UDim2.new(1, -38, 0, 4)
			arrow.Text = "▾"
			arrow.Font = SilentLib.Theme.Font
			arrow.TextSize = 14
			arrow.BackgroundTransparency = 1
			arrow.TextColor3 = SilentLib.Theme.TextColor

			local listFrame = Instance.new("Frame", container)
			listFrame.Size = UDim2.new(1, 0, 0, 0)
			listFrame.Position = UDim2.new(0, 0, 1, 6)
			listFrame.BackgroundTransparency = 1
			listFrame.ClipsDescendants = true

			local function toggleDropdown()
				opened = not opened
				if opened then
					-- populate
					listFrame:ClearAllChildren()
					local y = 0
					for i, opt in ipairs(options) do
						local btn = Instance.new("TextButton", listFrame)
						btn.Size = UDim2.new(1, 0, 0, 28)
						btn.Position = UDim2.new(0, 0, 0, y)
						btn.BackgroundColor3 = Color3.fromRGB(40,40,40)
						btn.Text = tostring(opt)
						btn.Font = SilentLib.Theme.Font
						btn.TextSize = 14
						btn.TextColor3 = SilentLib.Theme.TextColor
						btn.AnchorPoint = Vector2.new(0,0)
						createCorner(btn, 6)
						btn.MouseButton1Click:Connect(function()
							selected = opt
							sel.Text = tostring(opt)
							pcall(callback, opt)
							toggleDropdown()
						end)
						y = y + 32
					end
					local targetH = math.clamp(#options * 32, 0, 220)
					fadeGui(listFrame, {Size = UDim2.new(1, 0, 0, targetH)}, {time = 0.16})
				else
					fadeGui(listFrame, {Size = UDim2.new(1, 0, 0, 0)}, {time = 0.12})
					-- destroy children after animation
					task.delay(0.14, function()
						for _, c in ipairs(listFrame:GetChildren()) do
							if not c:IsA("UIListLayout") then c:Destroy() end
						end
					end)
				end
			end

			arrow.MouseButton1Click:Connect(toggleDropdown)
			container.InputBegan:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 then
					toggleDropdown()
				end
			end)

			return {
				Frame = container,
				GetValue = function() return selected end,
				SetValue = function(v) selected = v; sel.Text = tostring(v); pcall(callback, v) end
			}
		end

		self.Tabs[tabName] = tab
		if not self.ActiveTab then
			self.ActiveTab = Frame
			Frame.Visible = true
		end

		return tab
	end

	return self
end

return SilentLib
