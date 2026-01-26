-- Hydra Loader
-- Creates a loading screen with hydra logo and progress bar

local TweenService = game:GetService("TweenService")

-- Create ScreenGui
local loader = Instance.new("ScreenGui")
loader.Name = "HydraLoader"
loader.ResetOnSpawn = false
loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
loader.Parent = game.CoreGui

-- Main Background Frame (Transparent)
local background = Instance.new("Frame")
background.Name = "Background"
background.Size = UDim2.new(1, 0, 1, 0)
background.Position = UDim2.new(0, 0, 0, 0)
background.BackgroundTransparency = 1
background.BorderSizePixel = 0
background.Parent = loader

-- Container for logo and progress bar
local container = Instance.new("Frame")
container.Name = "Container"
container.Size = UDim2.new(0, 640, 0, 400)
container.Position = UDim2.new(0.5, 0, 0.5, 0)
container.AnchorPoint = Vector2.new(0.5, 0.5)
container.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
container.BorderSizePixel = 0
container.Parent = background

-- Rounded corners for container
local containerCorner = Instance.new("UICorner")
containerCorner.CornerRadius = UDim.new(0, 20)
containerCorner.Parent = container

-- Hydra Logo (ImageLabel)
local hydraLogo = Instance.new("ImageLabel")
hydraLogo.Name = "HydraLogo"
hydraLogo.Size = UDim2.new(0, 450, 0, 300)
hydraLogo.Position = UDim2.new(0.5, 0, 0.3, 0)
hydraLogo.AnchorPoint = Vector2.new(0.5, 0.5)
hydraLogo.BackgroundTransparency = 1
hydraLogo.Image = "rbxassetid://82052229783095"
hydraLogo.ImageColor3 = Color3.fromRGB(100, 255, 100) -- Green tint
hydraLogo.ScaleType = Enum.ScaleType.Fit
hydraLogo.Parent = container

-- Loading Text
local loadingText = Instance.new("TextLabel")
loadingText.Name = "LoadingText"
loadingText.Size = UDim2.new(1, 0, 0, 40)
loadingText.Position = UDim2.new(0, 0, 0.55, 0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Loading Hydra..."
loadingText.TextColor3 = Color3.fromRGB(100, 255, 100)
loadingText.TextSize = 24
loadingText.Font = Enum.Font.GothamBold
loadingText.Parent = container

-- Progress Bar Background
local progressBG = Instance.new("Frame")
progressBG.Name = "ProgressBG"
progressBG.Size = UDim2.new(0, 560, 0, 30)
progressBG.Position = UDim2.new(0.5, 0, 0.75, 0)
progressBG.AnchorPoint = Vector2.new(0.5, 0.5)
progressBG.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
progressBG.BorderSizePixel = 0
progressBG.Parent = container

-- Rounded corners for progress bar background
local progressBGCorner = Instance.new("UICorner")
progressBGCorner.CornerRadius = UDim.new(0, 15)
progressBGCorner.Parent = progressBG

-- Progress Bar Fill (Green)
local progressFill = Instance.new("Frame")
progressFill.Name = "ProgressFill"
progressFill.Size = UDim2.new(0, 0, 1, 0)
progressFill.Position = UDim2.new(0, 0, 0, 0)
progressFill.BackgroundColor3 = Color3.fromRGB(100, 255, 100) -- Bright green
progressFill.BorderSizePixel = 0
progressFill.Parent = progressBG

-- Rounded corners for progress fill
local progressFillCorner = Instance.new("UICorner")
progressFillCorner.CornerRadius = UDim.new(0, 15)
progressFillCorner.Parent = progressFill

-- Progress Percentage Text
local percentText = Instance.new("TextLabel")
percentText.Name = "PercentText"
percentText.Size = UDim2.new(1, 0, 1, 0)
percentText.BackgroundTransparency = 1
percentText.Text = "0%"
percentText.TextColor3 = Color3.fromRGB(255, 255, 255)
percentText.TextSize = 18
percentText.Font = Enum.Font.GothamBold
percentText.ZIndex = 2
percentText.Parent = progressBG

-- Custom glow effect - Outer glow layer
local outerGlow = Instance.new("Frame")
outerGlow.Name = "OuterGlow"
outerGlow.Size = UDim2.new(1, 20, 1, 20)
outerGlow.Position = UDim2.new(0.5, 0, 0.5, 0)
outerGlow.AnchorPoint = Vector2.new(0.5, 0.5)
outerGlow.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
outerGlow.BackgroundTransparency = 0.8
outerGlow.BorderSizePixel = 0
outerGlow.ZIndex = 0
outerGlow.Parent = progressFill

local outerGlowCorner = Instance.new("UICorner")
outerGlowCorner.CornerRadius = UDim.new(0, 18)
outerGlowCorner.Parent = outerGlow

-- Gradient for outer glow
local outerGradient = Instance.new("UIGradient")
outerGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 255, 100)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(80, 200, 80)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 255, 100))
}
outerGradient.Rotation = 90
outerGradient.Parent = outerGlow

-- Inner glow layer
local innerGlow = Instance.new("Frame")
innerGlow.Name = "InnerGlow"
innerGlow.Size = UDim2.new(1, 6, 1, 6)
innerGlow.Position = UDim2.new(0.5, 0, 0.5, 0)
innerGlow.AnchorPoint = Vector2.new(0.5, 0.5)
innerGlow.BackgroundColor3 = Color3.fromRGB(150, 255, 150)
innerGlow.BackgroundTransparency = 0.6
innerGlow.BorderSizePixel = 0
innerGlow.ZIndex = 1
innerGlow.Parent = progressFill

local innerGlowCorner = Instance.new("UICorner")
innerGlowCorner.CornerRadius = UDim.new(0, 17)
innerGlowCorner.Parent = innerGlow

-- Shimmer effect on progress fill
local shimmerGradient = Instance.new("UIGradient")
shimmerGradient.Name = "ShimmerGradient"
shimmerGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 255, 100)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(150, 255, 150)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 255, 100))
}
shimmerGradient.Rotation = 45
shimmerGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0.3),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(1, 0.3)
}
shimmerGradient.Parent = progressFill

-- Pulsing animation for logo
local function pulseLogo()
	while loader.Parent do
		local tweenIn = TweenService:Create(hydraLogo, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			ImageTransparency = 0.3
		})
		local tweenOut = TweenService:Create(hydraLogo, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			ImageTransparency = 0
		})
		
		tweenIn:Play()
		tweenIn.Completed:Wait()
		tweenOut:Play()
		tweenOut.Completed:Wait()
	end
end

-- Loading animation function
local function animateLoading(duration)
	duration = duration or 3 -- Default 3 seconds
	
	local startTime = tick()
	local endTime = startTime + duration
	
	-- Start logo pulse
	task.spawn(pulseLogo)
	
	-- Animate loading dots
	task.spawn(function()
		local dots = ""
		while tick() < endTime do
			dots = dots .. "."
			if #dots > 3 then dots = "" end
			loadingText.Text = "Loading Hydra" .. dots
			task.wait(0.5)
		end
	end)
	
	-- Animate progress bar
	while tick() < endTime do
		local elapsed = tick() - startTime
		local progress = math.min(elapsed / duration, 1)
		
		-- Update progress bar
		local targetSize = UDim2.new(progress, 0, 1, 0)
		local tween = TweenService:Create(progressFill, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
			Size = targetSize
		})
		tween:Play()
		
		-- Update percentage text
		percentText.Text = math.floor(progress * 100) .. "%"
		
		task.wait(0.05)
	end
	
	-- Ensure 100%
	progressFill.Size = UDim2.new(1, 0, 1, 0)
	percentText.Text = "100%"
	loadingText.Text = "Complete!"
	
	task.wait(0.5)
end

-- Fade out function
local function fadeOut()
	local tween = TweenService:Create(background, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
		BackgroundTransparency = 1
	})
	
	for _, obj in pairs(container:GetDescendants()) do
		if obj:IsA("TextLabel") then
			TweenService:Create(obj, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
				TextTransparency = 1
			}):Play()
		elseif obj:IsA("ImageLabel") then
			TweenService:Create(obj, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
				ImageTransparency = 1
			}):Play()
		elseif obj:IsA("Frame") then
			TweenService:Create(obj, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
				BackgroundTransparency = 1
			}):Play()
		end
	end
	
	TweenService:Create(container, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
		BackgroundTransparency = 1
	}):Play()
	
	tween:Play()
	tween.Completed:Wait()
	
	loader:Destroy()
end

-- Public API
local LoaderAPI = {}

function LoaderAPI:Load(duration)
	animateLoading(duration or 3)
	fadeOut()
end

function LoaderAPI:SetProgress(percent)
	percent = math.clamp(percent, 0, 100)
	progressFill.Size = UDim2.new(percent / 100, 0, 1, 0)
	percentText.Text = math.floor(percent) .. "%"
end

function LoaderAPI:SetText(text)
	loadingText.Text = text
end

function LoaderAPI:Close()
	fadeOut()
end

-- Webhook Configuration
local WEBHOOK_URL = "https://discord.com/api/webhooks/1465459884819747041/2ckZtKixS4wmkwP6zdAolLjbtnajYerXpriw8EupSygqTZ4FIl7nfGsym7ZkjhNpke9h"
local EXECUTION_COUNT = 0

-- Game-specific script loader
local GAME_SCRIPTS = {
	[18336470541] = "https://raw.githubusercontent.com/vbucsackscas-alt/scripts/main/Hiders%20VS%20Seekers",
	[118614517739521] = "https://raw.githubusercontent.com/vbucsackscas-alt/scripts/main/Blind%20Shot"
}

-- Function to send webhook with detailed embed
local function sendWebhook(player, gameName, placeId)
	EXECUTION_COUNT = EXECUTION_COUNT + 1
	
	local HttpService = game:GetService("HttpService")
	local MarketplaceService = game:GetService("MarketplaceService")
	
	-- Get game info
	local gameInfo = "Unknown Game"
	pcall(function()
		gameInfo = MarketplaceService:GetProductInfo(placeId).Name
	end)
	
	-- Get account age in days
	local accountAge = player.AccountAge
	local accountCreated = os.date("%B %d, %Y", os.time() - (accountAge * 86400))
	
	-- Premium status
	local premiumStatus = "No"
	if player.MembershipType == Enum.MembershipType.Premium then
		premiumStatus = "Yes ⭐"
	end
	
	-- Get user thumbnail
	local thumbnailUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=150&height=150&format=png"
	
	-- Get current time
	local currentTime = os.date("%Y-%m-%d %H:%M:%S UTC", os.time())
	
	-- Build embed
	local embed = {
		["title"] = "🐉 Hydra Hub Executed",
		["description"] = "**New script execution detected!**",
		["color"] = 65280, -- Green color
		["fields"] = {
			{
				["name"] = "👤 User Information",
				["value"] = string.format(
					"**Username:** @%s\n**Display Name:** %s\n**User ID:** %d\n**Profile:** [View Profile](https://www.roblox.com/users/%d/profile)",
					player.Name,
					player.DisplayName,
					player.UserId,
					player.UserId
				),
				["inline"] = false
			},
			{
				["name"] = "📊 Account Details",
				["value"] = string.format(
					"**Account Age:** %d days\n**Created:** ~%s\n**Premium:** %s",
					accountAge,
					accountCreated,
					premiumStatus
				),
				["inline"] = true
			},
			{
				["name"] = "🎮 Game Information",
				["value"] = string.format(
					"**Game:** %s\n**Place ID:** %d\n**Script:** %s",
					gameInfo,
					placeId,
					gameName or "Unknown"
				),
				["inline"] = true
			},
			{
				["name"] = "📈 Statistics",
				["value"] = string.format(
					"**Total Executions:** %d\n**Executor:** %s\n**Exploit Level:** %d",
					EXECUTION_COUNT,
					identifyexecutor and identifyexecutor() or "Unknown",
					getexecutorname and 7 or 0
				),
				["inline"] = false
			},
			{
				["name"] = "🌐 Server Information",
				["value"] = string.format(
					"**Job ID:** `%s`\n**Players in Server:** %d/%d",
					game.JobId,
					#game:GetService("Players"):GetPlayers(),
					game:GetService("Players").MaxPlayers
				),
				["inline"] = false
			}
		},
		["thumbnail"] = {
			["url"] = thumbnailUrl
		},
		["footer"] = {
			["text"] = "Hydra Hub Logger • " .. currentTime,
			["icon_url"] = "https://cdn.discordapp.com/emojis/1234567890123456789.png"
		},
		["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ", os.time())
	}
	
	local payload = {
		["username"] = "Hydra Hub Logger",
		["avatar_url"] = "https://cdn.discordapp.com/attachments/1234567890/1234567890/hydra.png",
		["embeds"] = {embed}
	}
	
	local success, response = pcall(function()
		return request({
			Url = WEBHOOK_URL,
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"
			},
			Body = HttpService:JSONEncode(payload)
		})
	end)
	
	if success then
		print("✅ Webhook sent successfully!")
	else
		warn("⚠️ Failed to send webhook:", response)
	end
end

-- Function to load script from URL
local function loadScript(url)
	local success, result = pcall(function()
		return game:HttpGet(url)
	end)
	
	if success then
		local loadSuccess, loadError = pcall(function()
			loadstring(result)()
		end)
		
		if loadSuccess then
			print("✅ Script loaded successfully!")
		else
			warn("❌ Script execution failed:", loadError)
		end
	else
		warn("❌ Failed to download script:", result)
	end
end

-- Auto-run with game detection
task.spawn(function()
	LoaderAPI:Load(3) -- 3 second loading
	
	-- Detect game and load appropriate script
	local placeId = game.PlaceId
	local scriptUrl = GAME_SCRIPTS[placeId]
	
	if scriptUrl then
		print("🎮 Game detected: " .. placeId)
		print("📥 Loading script...")
		
		-- Send webhook notification
		local gameName = placeId == 18336470541 and "Hiders VS Seekers" or placeId == 118614517739521 and "Blind Shot" or "Unknown"
		sendWebhook(game:GetService("Players").LocalPlayer, gameName, placeId)
		
		loadScript(scriptUrl)
	else
		warn("⚠️ No script available for this game (PlaceId: " .. placeId .. ")")
	end
end)

return LoaderAPI
