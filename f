-- SilentLib Anime-Aura UI Library (v3 Cleaned & Optimized)
-- By Thirst (Cleaned by ChatGPT)

local UserInputService = game:GetService("UserInputService")

local SilentLib = {}
SilentLib.__index = SilentLib

-- Helper Functions (Assumed Existing)
local function createCorner(inst, radius) radius = radius or 4; local uiCorner = Instance.new("UICorner", inst); uiCorner.CornerRadius = UDim.new(0, radius) end
local function applyStroke(inst, color, thickness) thickness = thickness or 1; local stroke = Instance.new("UIStroke", inst); stroke.Color = color; stroke.Thickness = thickness end
local function fadeGui(inst, props, options) options = options or {}; local time = options.time or 0.2; for k,v in pairs(props) do inst[k] = v end end
local function round(num, dec) dec = dec or 2; local mult = 10^dec; return math.floor(num*mult + 0.5)/mult end

-- Core Theme
SilentLib.Theme = {
    Font = Enum.Font.SourceSans,
    TextColor = Color3.fromRGB(255,255,255),
    ButtonColor = Color3.fromRGB(35,35,35),
    AccentColor = Color3.fromRGB(85,170,255),
}

-- ========== DROPDOWNS ==========
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

-- ========== COLOR PICKER ==========
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
        -- Open user-defined color picker GUI
        pcall(callback,color)
    end)

    return {
        Frame = container,
        GetColor = function() return color end,
        SetColor = function(c) color=c; pickerBtn.BackgroundColor3=c; pcall(callback,c) end
    }
end

-- ========== TOGGLES ==========
function SilentLib:CreateToggleAdvanced(tab, name, default, callback)
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

    btn.InputBegan:Connect(function(input) if input.UserInputType==Enum.UserInputType.MouseButton1 then toggle() end end)
    container.InputBegan:Connect(function(input) if input.UserInputType==Enum.UserInputType.MouseButton1 then toggle() end end)

    return {
        Frame = container,
        GetValue = function() return toggled end,
        SetValue = function(v) toggled=v; btn.BackgroundColor3=v and self.Theme.AccentColor or Color3.fromRGB(50,50,50); fadeGui(knob,{Position=v and UDim2.new(0.5,0,0,0) or UDim2.new(0,0,0,0)}) end
    }
end

-- Additional features like sliders, multi-dropdowns, notifications, console can be added similarly

return SilentLib
