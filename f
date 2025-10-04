--// SilentLib UI Library
--// Clean dark theme, draggable frame, tab system, and basic components
--// Created by thirst + Druum (for SilentHub)

local SilentLib = {}
SilentLib.__index = SilentLib

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

-- Default theme
SilentLib.Theme = {
	MainColor = Color3.fromRGB(20, 20, 20),
	AccentColor = Color3.fromRGB(255, 58, 84),
	ButtonColor = Color3.fromRGB(35, 35, 35),
	TextColor = Color3.fromRGB(255, 255, 255),
	CornerRadius = 10,
	Font = Enum.Font.GothamSemibold
}

--// Utility functions
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

--// Create Window
function SilentLib:CreateWindow(name)
	local self = setmetatable({}, SilentLib)

	-- ScreenGui
	self.Gui = Instance.new("ScreenGui")
	self.Gui.Name = name .. "_UI"
	self.Gui.ResetOnSpawn = false
	self.Gui.Parent = player:WaitForChild("PlayerGui")

	-- Main Frame
	self.MainFrame = Instance.new("Frame", self.Gui)
	self.MainFrame.Size = UDim2.new(0, 520, 0, 360)
	self.MainFrame.Position = UDim2.new(0.5, -260, 0.5, -180)
	self.MainFrame.BackgroundColor3 = self.Theme.MainColor
	self.MainFrame.BorderSizePixel = 0
	createCorner(self.MainFrame)
	applyStroke(self.MainFrame, self.Theme.AccentColor, 2)

	-- Title
	local Title = Instance.new("TextLabel", self.MainFrame)
	Title.Text = name
	Title.Size = UDim2.new(1, 0, 0, 40)
	Title.BackgroundTransparency = 1
	Title.TextColor3 = self.Theme.TextColor
	Title.Font = Enum.Font.GothamBold
	Title.TextSize = 22

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
	self.TabBar.Size = UDim2.new(1, 0, 0, 35)
	self.TabBar.Position = UDim2.new(0, 0, 0, 40)
	self.TabBar.BackgroundTransparency = 1

	local TabLayout = Instance.new("UIListLayout", self.TabBar)
	TabLayout.FillDirection = Enum.FillDirection.Horizontal
	TabLayout.Padding = UDim.new(0, 8)
	TabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

	self.Tabs = {}
	self.ActiveTab = nil

	function self:CreateTab(tabName)
		local tab = {}

		local Button = Instance.new("TextButton", self.TabBar)
		Button.Size = UDim2.new(0, 100, 1, 0)
		Button.Text = tabName
		Button.BackgroundColor3 = self.Theme.ButtonColor
		Button.TextColor3 = self.Theme.TextColor
		Button.Font = self.Theme.Font
		Button.TextSize = 14
		createCorner(Button)

		local Frame = Instance.new("Frame", self.MainFrame)
		Frame.Size = UDim2.new(1, -20, 1, -80)
		Frame.Position = UDim2.new(0, 10, 0, 75)
		Frame.BackgroundTransparency = 1
		Frame.Visible = false

		local Layout = Instance.new("UIListLayout", Frame)
		Layout.Padding = UDim.new(0, 8)
		Layout.SortOrder = Enum.SortOrder.LayoutOrder

		Button.MouseButton1Click:Connect(function()
			if self.ActiveTab then self.ActiveTab.Visible = false end
			Frame.Visible = true
			self.ActiveTab = Frame
		end)

		tab.Frame = Frame

		function tab:CreateButton(name, callback)
			local btn = Instance.new("TextButton", Frame)
			btn.Size = UDim2.new(0, 200, 0, 36)
			btn.BackgroundColor3 = SilentLib.Theme.ButtonColor
			btn.TextColor3 = SilentLib.Theme.TextColor
			btn.Text = name
			btn.Font = SilentLib.Theme.Font
			btn.TextSize = 15
			createCorner(btn)
			applyStroke(btn, Color3.fromRGB(50, 50, 50), 1)
			btn.MouseEnter:Connect(function()
				btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			end)
			btn.MouseLeave:Connect(function()
				btn.BackgroundColor3 = SilentLib.Theme.ButtonColor
			end)
			btn.MouseButton1Click:Connect(function()
				pcall(callback)
			end)
			return btn
		end

		function tab:CreateLabel(text)
			local lbl = Instance.new("TextLabel", Frame)
			lbl.Size = UDim2.new(1, -20, 0, 30)
			lbl.Text = text
			lbl.BackgroundTransparency = 1
			lbl.TextColor3 = SilentLib.Theme.TextColor
			lbl.Font = SilentLib.Theme.Font
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			return lbl
		end

		function tab:CreateToggle(name, default, callback)
			local toggled = default or false
			local toggleFrame = Instance.new("Frame", Frame)
			toggleFrame.Size = UDim2.new(0, 200, 0, 36)
			toggleFrame.BackgroundColor3 = SilentLib.Theme.ButtonColor
			createCorner(toggleFrame)
			applyStroke(toggleFrame, Color3.fromRGB(50, 50, 50), 1)

			local label = Instance.new("TextLabel", toggleFrame)
			label.Size = UDim2.new(0.7, 0, 1, 0)
			label.BackgroundTransparency = 1
			label.Text = name
			label.TextColor3 = SilentLib.Theme.TextColor
			label.Font = SilentLib.Theme.Font
			label.TextSize = 14
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.Position = UDim2.new(0.05, 0, 0, 0)

			local btn = Instance.new("TextButton", toggleFrame)
			btn.Size = UDim2.new(0.25, 0, 0.8, 0)
			btn.Position = UDim2.new(0.7, 0, 0.1, 0)
			btn.BackgroundColor3 = toggled and SilentLib.Theme.AccentColor or Color3.fromRGB(50, 50, 50)
			btn.Text = ""
			createCorner(btn)

			btn.MouseButton1Click:Connect(function()
				toggled = not toggled
				btn.BackgroundColor3 = toggled and SilentLib.Theme.AccentColor or Color3.fromRGB(50, 50, 50)
				pcall(callback, toggled)
			end)

			return btn
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
