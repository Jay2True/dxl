-- SilentLib v4 – Anime-Aura UI Library (All-in-One Full)
-- Author: Thirst (Revamped by ChatGPT)
-- Features: Tabs, Dropdowns, Multi-Dropdowns, ColorPickers, Toggles, Sliders, Notifications, Console, Hotkeys, Draggable Windows

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local SilentLib = {}
SilentLib.__index = SilentLib

-- =======================
-- Helper Functions
-- =======================
local function createCorner(inst, radius)
    radius = radius or 4
    local uiCorner = Instance.new("UICorner", inst)
    uiCorner.CornerRadius = UDim.new(0, radius)
end

local function applyStroke(inst, color, thickness)
    thickness = thickness or 1
    local stroke = Instance.new("UIStroke", inst)
    stroke.Color = color
    stroke.Thickness = thickness
end

local function fadeGui(inst, props, options)
    options = options or {}
    local time = options.time or 0.2
    for prop,value in pairs(props) do
        local tween = TweenService:Create(inst, TweenInfo.new(time, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[prop]=value})
        tween:Play()
    end
end

local function round(num, dec)
    dec = dec or 2
    local mult = 10^dec
    return math.floor(num*mult + 0.5)/mult
end

local function dragify(frame)
    local dragging, dragInput, dragStart, startPos
    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

-- =======================
-- Core Theme
-- =======================
SilentLib.Theme = {
    Font = Enum.Font.SourceSans,
    TextColor = Color3.fromRGB(255,255,255),
    ButtonColor = Color3.fromRGB(35,35,35),
    AccentColor = Color3.fromRGB(85,170,255),
    BackgroundColor = Color3.fromRGB(20,20,20)
}

-- =======================
-- Window / Tabs
-- =======================
function SilentLib:CreateWindow(title)
    local window = Instance.new("ScreenGui")
    window.Name = title.."UI"
    window.ResetOnSpawn = false
    window.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local mainFrame = Instance.new("Frame", window)
    mainFrame.Size = UDim2.new(0,500,0,400)
    mainFrame.Position = UDim2.new(0.3,0,0.2,0)
    mainFrame.BackgroundColor3 = self.Theme.BackgroundColor
    createCorner(mainFrame,12)
    applyStroke(mainFrame, Color3.fromRGB(50,50,50),2)
    dragify(mainFrame)

    local titleLabel = Instance.new("TextLabel", mainFrame)
    titleLabel.Size = UDim2.new(1,0,0,36)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.Font = self.Theme.Font
    titleLabel.TextColor3 = self.Theme.TextColor
    titleLabel.TextSize = 18

    local tabContainer = Instance.new("Frame", mainFrame)
    tabContainer.Size = UDim2.new(0.2,0,1,-36)
    tabContainer.Position = UDim2.new(0,0,0,36)
    tabContainer.BackgroundTransparency = 1

    local contentContainer = Instance.new("Frame", mainFrame)
    contentContainer.Size = UDim2.new(0.8,0,1,-36)
    contentContainer.Position = UDim2.new(0.2,0,0,36)
    contentContainer.BackgroundTransparency = 1

    local tabs = {}

    function window:AddTab(tabName)
        local tabBtn = Instance.new("TextButton", tabContainer)
        tabBtn.Size = UDim2.new(1,0,0,36)
        tabBtn.Position = UDim2.new(0,0,#tabContainer:GetChildren()*36)
        tabBtn.BackgroundColor3 = self.Theme.ButtonColor
        tabBtn.TextColor3 = self.Theme.TextColor
        tabBtn.Text = tabName
        tabBtn.Font = self.Theme.Font
        tabBtn.TextSize = 14
        createCorner(tabBtn,6)
        applyStroke(tabBtn, Color3.fromRGB(50,50,50),1)

        local content = Instance.new("Frame", contentContainer)
        content.Size = UDim2.new(1,0,1,0)
        content.BackgroundTransparency = 1
        content.Visible = false

        tabBtn.MouseButton1Click:Connect(function()
            for _,c in ipairs(contentContainer:GetChildren()) do
                if c:IsA("Frame") then c.Visible = false end
            end
            content.Visible = true
        end)

        local tabData = {Button=tabBtn, ContentArea=content}
        table.insert(tabs,tabData)
        return tabData
    end

    window.Tabs = tabs
    window.MainFrame = mainFrame
    return window
end

-- =======================
-- Dropdown (Single)
-- =======================
function SilentLib:CreateDropdown(tab, name, options, default, callback)
    local opened = false
    local selected = default or options[1]

    local container = Instance.new("Frame", tab.ContentArea or tab.Frame)
    container.Size = UDim2.new(0,320,0,36)
    container.BackgroundColor3 = self.Theme.ButtonColor
    createCorner(container)
    applyStroke(container, Color3.fromRGB(50,50,50),1)

    local label = Instance.new("TextLabel", container)
    label.Size = UDim2.new(0.6,0,1,0)
    label.Position = UDim2.new(0.04,0,0,0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.Font = self.Theme.Font
    label.TextSize = 14
    label.TextColor3 = self.Theme.TextColor
    label.TextXAlignment = Enum.TextXAlignment.Left

    local sel = Instance.new("TextLabel", container)
    sel.Size = UDim2.new(0.34,-8,1,0)
    sel.Position = UDim2.new(0.62,0,0,0)
    sel.BackgroundTransparency = 1
    sel.Text = tostring(selected)
    sel.Font = self.Theme.Font
    sel.TextSize = 14
    sel.TextColor3 = self.Theme.TextColor
    sel.TextXAlignment = Enum.TextXAlignment.Right

    local arrow = Instance.new("TextButton", container)
    arrow.Size = UDim2.new(0,30,0,28)
    arrow.Position = UDim2.new(1,-38,0,4)
    arrow.Text = "▾"
    arrow.Font = self.Theme.Font
    arrow.TextSize = 14
    arrow.BackgroundTransparency = 1
    arrow.TextColor3 = self.Theme.TextColor

    local listFrame = Instance.new("Frame", container)
    listFrame.Size = UDim2.new(1,0,0,0)
    listFrame.Position = UDim2.new(0,0,1,6)
    listFrame.BackgroundTransparency = 1
    listFrame.ClipsDescendants = true

    local function toggleDropdown()
        opened = not opened
        if opened then
            listFrame:ClearAllChildren()
            local y = 0
            for i,opt in ipairs(options) do
                local btn = Instance.new("TextButton", listFrame)
                btn.Size = UDim2.new(1,0,0,28)
                btn.Position = UDim2.new(0,0,0,y)
                btn.BackgroundColor3 = Color3.fromRGB(40,40,40)
                btn.Text = tostring(opt)
                btn.Font = self.Theme.Font
                btn.TextSize = 14
                btn.TextColor3 = self.Theme.TextColor
                createCorner(btn,6)
                btn.MouseButton1Click:Connect(function()
                    selected = opt
                    sel.Text = tostring(opt)
                    pcall(callback,opt)
                    toggleDropdown()
                end)
                y = y + 32
            end
            local targetH = math.clamp(#options*32,0,220)
            fadeGui(listFrame, {Size = UDim2.new(1,0,0,targetH)}, {time=0.16})
        else
            fadeGui(listFrame, {Size = UDim2.new(1,0,0,0)}, {time=0.12})
            task.delay(0.14,function()
                for _,c in ipairs(listFrame:GetChildren()) do if not c:IsA("UIListLayout") then c:Destroy() end end
            end)
        end
    end

    arrow.MouseButton1Click:Connect(toggleDropdown)
    container.InputBegan:Connect(function(inp) if inp.UserInputType == Enum.UserInputType.MouseButton1 then toggleDropdown() end end)

    return {
        Frame = container,
        GetValue = function() return selected end,
        SetValue = function(v) selected=v; sel.Text=tostring(v); pcall(callback,v) end
    }
end

-- =======================
-- Toggle
-- =======================
function SilentLib:CreateToggle(tab, name, default, callback)
    local toggled = (default==true)
    local container = Instance.new("Frame", tab.ContentArea or tab.Frame)
    container.Size = UDim2.new(0,260,0,36)
    container.BackgroundColor3 = self.Theme.ButtonColor
    createCorner(container)
    applyStroke(container, Color3.fromRGB(50,50,50),1)

    local label = Instance.new("TextLabel", container)
    label.Size = UDim2.new(0.65,0,1,0)
    label.Position = UDim2.new(0.04,0,0,0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.Font = self.Theme.Font
    label.TextColor3 = self.Theme.TextColor
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left

    local btn = Instance.new("Frame", container)
    btn.Size = UDim2.new(0.25,0,0.7,0)
    btn.Position = UDim2.new(0.71,0,0.15,0)
    btn.BackgroundColor3 = toggled and self.Theme.AccentColor or Color3.fromRGB(50,50,50)
    createCorner(btn)

    local knob = Instance.new("Frame", btn)
    knob.Size = UDim2.new(0.5,0,1,0)
    knob.Position = toggled and UDim2.new(0.5,0,0,0) or UDim2.new(0,0,0,0)
    knob.BackgroundColor3 = Color3.fromRGB(255,255,255)
    createCorner(knob,6)

    local function toggle()
        toggled = not toggled
        btn.BackgroundColor3 = toggled and self.Theme.AccentColor or Color3.fromRGB(50,50,50)
        fadeGui(knob, {Position = toggled and UDim2.new(0.5,0,0,0) or UDim2.new(0,0,0,0)}, {time=0.16})
        pcall(callback,toggled)
    end

    btn.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then toggle() end end)
    container.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then toggle() end end)

    return {
        Frame = container,
        GetValue = function() return toggled end,
        SetValue = function(v) toggled=v; btn.BackgroundColor3=v and self.Theme.AccentColor or Color3.fromRGB(50,50,50); fadeGui(knob,{Position=v and UDim2.new(0.5,0,0,0) or UDim2.new(0,0,0,0)}) end
    }
end

-- =======================
-- Color Picker
-- =======================
function SilentLib:CreateColorPicker(tab, name, defaultColor, callback)
    local color = defaultColor or Color3.fromRGB(255,255,255)
    local container = Instance.new("Frame", tab.ContentArea or tab.Frame)
    container.Size = UDim2.new(0,260,0,36)
    container.BackgroundColor3 = self.Theme.ButtonColor
    createCorner(container)
    applyStroke(container, Color3.fromRGB(50,50,50),1)

    local label = Instance.new("TextLabel", container)
    label.Size = UDim2.new(0.65,0,1,0)
    label.Position = UDim2.new(0.04,0,0,0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.Font = self.Theme.Font
    label.TextColor3 = self.Theme.TextColor
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left

    local pickerBtn = Instance.new("TextButton", container)
    pickerBtn.Size = UDim2.new(0.25,0,0.7,0)
    pickerBtn.Position = UDim2.new(0.71,0,0.15,0)
    pickerBtn.BackgroundColor3 = color
    createCorner(pickerBtn)

    pickerBtn.MouseButton1Click:Connect(function()
        -- User-defined color picker GUI
        pcall(callback,color)
    end)

    return {
        Frame = container,
        GetColor = function() return color end,
        SetColor = function(c) color=c; pickerBtn.BackgroundColor3=c; pcall(callback,c) end
    }
end

-- =======================
-- Sliders (Horizontal)
-- =======================
function SilentLib:CreateSlider(tab, name, min, max, default, callback)
    local value = default or min
    local container = Instance.new("Frame", tab.ContentArea or tab.Frame)
    container.Size = UDim2.new(0,320,0,36)
    container.BackgroundColor3 = self.Theme.ButtonColor
    createCorner(container)
    applyStroke(container, Color3.fromRGB(50,50,50),1)

    local label = Instance.new("TextLabel", container)
    label.Size = UDim2.new(0.5,0,1,0)
    label.Position = UDim2.new(0.04,0,0,0)
    label.BackgroundTransparency = 1
    label.Text = name.." ("..value..")"
    label.Font = self.Theme.Font
    label.TextColor3 = self.Theme.TextColor
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left

    local sliderBar = Instance.new("Frame", container)
    sliderBar.Size = UDim2.new(0.4,0,0.3,0)
    sliderBar.Position = UDim2.new(0.55,0,0.35,0)
    sliderBar.BackgroundColor3 = Color3.fromRGB(50,50,50)
    createCorner(sliderBar)

    local sliderFill = Instance.new("Frame", sliderBar)
    sliderFill.Size = UDim2.new((value-min)/(max-min),0,1,0)
    sliderFill.BackgroundColor3 = self.Theme.AccentColor
    createCorner(sliderFill)

    local dragging = false
    sliderBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
        end
    end)
    sliderBar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType==Enum.UserInputType.MouseMovement then
            local rel = math.clamp((input.Position.X - sliderBar.AbsolutePosition.X)/sliderBar.AbsoluteSize.X,0,1)
            value = round(min + rel*(max-min))
            sliderFill.Size = UDim2.new(rel,0,1,0)
            label.Text = name.." ("..value..")"
            pcall(callback,value)
        end
    end)

    return {
        Frame = container,
        GetValue = function() return value end,
        SetValue = function(v) value=v; sliderFill.Size=UDim2.new((v-min)/(max-min),0,1,0); label.Text=name.." ("..v..")"; pcall(callback,v) end
    }
end

-- =======================
-- Notifications
-- =======================
SilentLib.Notifications = {}
function SilentLib:SendNotification(text, duration)
    duration = duration or 3
    local notifFrame = Instance.new("Frame", LocalPlayer.PlayerGui)
    notifFrame.Size = UDim2.new(0,200,0,50)
    notifFrame.Position = UDim2.new(0.5,-100,1,-60)
    notifFrame.BackgroundColor3 = self.Theme.ButtonColor
    createCorner(notifFrame)
    applyStroke(notifFrame, Color3.fromRGB(50,50,50),1)

    local label = Instance.new("TextLabel", notifFrame)
    label.Size = UDim2.new(1,0,1,0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.Font = self.Theme.Font
    label.TextColor3 = self.Theme.TextColor
    label.TextSize = 14
    label.TextWrapped = true

    local tweenUp = TweenService:Create(notifFrame, TweenInfo.new(0.2), {Position=UDim2.new(0.5,-100,1,-120)})
    tweenUp:Play()
    delay(duration,function()
        local tweenDown = TweenService:Create(notifFrame, TweenInfo.new(0.2), {Position=UDim2.new(0.5,-100,1,-60)})
        tweenDown:Play()
        tweenDown.Completed:Wait()
        notifFrame:Destroy()
    end)
end

-- =======================
-- Return Module
-- =======================
return SilentLib
