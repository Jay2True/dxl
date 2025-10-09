-- 🍎 Advanced Bush-to-Bush AutoFarm (Instant TP + Transparent Box + Fixed Counter + Webhook)
-- Fully local + draggable GUI (Executor use)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer
local event = ReplicatedStorage:WaitForChild("Events"):WaitForChild("DataEvent")

-- 🔗 Discord webhook
local WEBHOOK_URL = "https://discordapp.com/api/webhooks/1425657138205950104/kdZK9lZz3K5U9oC2BgJ_CSGTLhIe0qFczmi0fojjizphqL0ifj9H08gIAcxu9nxmvlrc"
local function sendWebhook(message)
    if not WEBHOOK_URL or WEBHOOK_URL == "" then return end
    local data = { content = message }
    local json = HttpService:JSONEncode(data)
    pcall(function()
        HttpService:PostAsync(WEBHOOK_URL, json, Enum.HttpContentType.ApplicationJson)
    end)
end

-- Fruit names
local fruitNames = {
    ["Alluring Apple"]=true,
    ["Apple"]=true,
    ["Banana"]=true,
    ["Pair"]=true,
    ["Orange"]=true,
    ["Mango"]=true
}

local running = false
local fruitsCollected = 0
local bushes = {}
local collected = {} -- ✅ Cache for already picked fruits
local boxSize = 35 -- range around player
local tpTime = 0.7 -- unused, instant tp

-- 🟢 GUI Setup
local gui = Instance.new("ScreenGui")
gui.Name = "BushAutoFarm"
gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 360, 0, 200)
frame.Position = UDim2.new(0.5, -180, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,40)
title.BackgroundColor3 = Color3.fromRGB(35,35,35)
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.Text = "Fruit AutoFarm"
title.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.8,0,0,40)
button.Position = UDim2.new(0.1,0,0.3,0)
button.BackgroundColor3 = Color3.fromRGB(40,120,40)
button.TextColor3 = Color3.new(1,1,1)
button.Font = Enum.Font.Gotham
button.TextSize = 16
button.Text = "Start Farming"
button.Parent = frame

local counter = Instance.new("TextLabel")
counter.Size = UDim2.new(1,0,0,35)
counter.Position = UDim2.new(0,0,0.75,0)
counter.BackgroundColor3 = Color3.fromRGB(35,35,35)
counter.TextColor3 = Color3.new(1,1,1)
counter.Font = Enum.Font.Gotham
counter.TextSize = 16
counter.Text = "Fruits Collected: 0"
counter.Parent = frame

-- 🧩 Helpers
local function getRoot()
	local char = player.Character or player.CharacterAdded:Wait()
	return char:WaitForChild("HumanoidRootPart")
end

local function scaleCharacter()
	local char = player.Character
	if not char then return end
	for _, part in pairs(char:GetChildren()) do
		if part:IsA("BasePart") then
			part.Size = part.Size * 1.15
		end
	end
end

-- 🟦 Visual Box around player
local rangeBox = Instance.new("Part")
rangeBox.Anchored = true
rangeBox.CanCollide = false
rangeBox.Size = Vector3.new(boxSize * 2, boxSize * 2, boxSize * 2)
rangeBox.Color = Color3.fromRGB(0, 255, 0)
rangeBox.Material = Enum.Material.ForceField
rangeBox.Transparency = 0.8
rangeBox.Name = "FruitRangeBox"
rangeBox.Parent = workspace

task.spawn(function()
	while task.wait(0.05) do
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			rangeBox.CFrame = player.Character.HumanoidRootPart.CFrame
		end
	end
end)

-- Scan workspace for all TreeBush parts inside Tree models
local function getBushes()
	local results = {}
	for _, obj in pairs(workspace:GetChildren()) do
		if obj:IsA("Model") and obj.Name:sub(1,4) == "Tree" then
			for _, part in pairs(obj:GetChildren()) do
				if part:IsA("BasePart") and part.Name:sub(1,8) == "TreeBush" then
					table.insert(results, part)
				end
			end
		end
	end
	return results
end

local function findNearbyFruits(root)
	local fruits = {}
	for _, obj in pairs(workspace:GetChildren()) do
		if obj:IsA("BasePart") and fruitNames[obj.Name] then
			local id = obj:FindFirstChild("ID")
			local active = obj:FindFirstChild("Active")
			if id and (not active or active.Value) then
				if (obj.Position - root.Position).Magnitude < boxSize then
					table.insert(fruits, obj)
				end
			end
		end
	end
	return fruits
end

-- ✅ Fixed pickup with cache
local function pickupFruit(fruit)
	local id = fruit:FindFirstChild("ID")
	if id and not collected[id.Value] then
		collected[id.Value] = true -- prevent double counting
		pcall(function()
			event:FireServer("PickUp", id.Value)
			fruitsCollected += 1
			counter.Text = "Fruits Collected: " .. fruitsCollected
		end)
	end
end

-- ⚙️ Instant Teleport
local function instantTP(root, pos)
	root.CFrame = CFrame.new(pos + Vector3.new(0,5,0))
end

-- ⚙️ AutoFarm loop with webhook logging
local function startFarm()
	if running then return end
	running = true
	button.Text = "Stop Farming"
	button.BackgroundColor3 = Color3.fromRGB(150,40,40)
	scaleCharacter()
	
	-- Webhook log
	sendWebhook(player.Name .. " started farming")

	task.spawn(function()
		while running do
			collected = {} -- clear cache every scan cycle
			bushes = getBushes()
			print("Found " .. #bushes .. " TreeBushs")

			for _, bush in ipairs(bushes) do
				if not running then break end
				local root = getRoot()
				if bush and bush:IsDescendantOf(workspace) then
					instantTP(root, bush.Position)

					local fruits = findNearbyFruits(root)
					if #fruits > 0 then
						for _, fruit in ipairs(fruits) do
							if not running then break end
							if fruit and fruit:IsDescendantOf(workspace) then
								instantTP(root, fruit.Position)
								pickupFruit(fruit)
								task.wait(0.1)
							end
						end
					else
						task.wait(0.1)
					end
				end
			end

			task.wait(2)
		end
	end)
end

local function stopFarm()
	running = false
	button.Text = "Start Farming"
	button.BackgroundColor3 = Color3.fromRGB(40,120,40)

	-- Webhook log
	sendWebhook(player.Name .. " stopped farming  Fruits Collected: " .. fruitsCollected)
end

-- 🎛️ Button logic
button.MouseButton1Click:Connect(function()
	if running then
		stopFarm()
	else
		startFarm()
	end
end)

-- 🧠 Safety: Stop if player dies
player.CharacterAdded:Connect(function()
	if running then
		stopFarm()
	end
end)
