
local WEBHOOK_URL = "https://discordapp.com/api/webhooks/1425657138205950104/kdZK9lZz3K5U9oC2BgJ_CSGTLhIe0qFczmi0fojjizphqL0ifj9H08gIAcxu9nxmvlrc"

local HttpService = game:GetService("HttpService")

local function sendWebhook(message)
    if not WEBHOOK_URL or WEBHOOK_URL == "" then return end
    local data = {
        content = message
    }
    local json = HttpService:JSONEncode(data)
    -- pcall to prevent script breaking if webhook fails
    pcall(function()
        HttpService:PostAsync(WEBHOOK_URL, json, Enum.HttpContentType.ApplicationJson)
    end)
end

-- ⚙️ Updated startFarm & stopFarm with webhook
local function startFarm()
	if running then return end
	running = true
	button.Text = "Stop Farming"
	button.BackgroundColor3 = Color3.fromRGB(150,40,40)
	scaleCharacter()
	
	-- send webhook
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

	-- send webhook
	sendWebhook(player.Name .. " stopped farming  Fruits Collected: " .. fruitsCollected)
end
