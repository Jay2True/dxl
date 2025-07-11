-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-11 05:17:36
-- Luau version 6, Types version 3
-- Time taken: 1.028683 seconds

local longstring1 = "......<font color=\"rgb(255, 121, 150)\">Even in my pain......you mock me?</font>......I won't forget...... ......what you......did to me......."
local longstring2 = ".........<font color=\"rgb(255, 121, 150)\">Is this.....salt water?</font>........My insides...........ache......... .......<font color=\"rgb(198, 147, 255)\">curse you!</font>........"
local longstring3 = ".......<i>munch</i>.........<i>munch</i>..........<i>munch</i>........-Sorry what was that, I was too busy eating to notice......hehe......<i>scratches head</i>"
local longstring4 = "........I'd really love to.........but for some reason, I can't leave this oasis ever sinc-                     <font color=\"rgb(255, 121, 150)\">***                    ***                    ***</font>                   -I don't really know actually. Good thing I have travellers like you who can get it for me!"
local longstring5 = "<font color=\"rgb(255, 144, 110)\">.....How'd you get into this fort?...Wait...Haha!...You didn't actually think I'd help someone like you, did you?! HAHAHA.....</font>"
local longstring6 = "Why, of course! I don't sell them but I'm more than experienced in the art of making them! Tell you what! <font color=\"rgb(255, 121, 150)\">Find me 5 each of 5 different fruits</font> and I'll make you the best fruit bowl you've ever laid a tongue on!"
local longstring7 = "Wings?...Oh you mean Butterfly Mode? I know a thing or two about that. <font color=\"rgb(255, 121, 150)\">Bring me an all star fruit bowl and I'll impart some knowledge about it to you.</font>"
local longstring8 = "Keep dreaming. That technique is reserved for the Akimichi. Specifically those with a large enough stomach to stomach the training required for this ability."
local longstring9 = "People always say that me and my brothers look alike, we've taken the mantle of Inn Keepers throughout the towns as our forefathers did before us. <font color=\"rgb(255, 121, 150)\">Could you pass on this message to a brother of mine?</font>"
local longstring10 = "<font color=\"rgb(255, 144, 110)\">I've heard of you.....and the devilish things you've done.....to so many people....I'm not teaching someone like you</font>"
local longstring11 = "<font color=\"rgb(255, 144, 110)\">I've heard of you.....and the devilish things you've done.....to so many people.....I don't need your help.....</font>"
local longstring12 = "There you go...Careful with who you give it to though...I understand there are some dangerous golems in the expanse that became infamous for their rampages. But ever since their flaming hearts were replaced with stone, they've become passive. The more you know. Good day."
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local ServerStorage_upvr = game:GetService("ServerStorage")
local Debris_upvr = game:GetService("Debris")
local TweenService_upvr = game:GetService("TweenService")
local Chat_upvr = game:GetService("Chat")
local Players_upvr = game:GetService("Players")
local DataEvent_upvr = ReplicatedStorage_upvr.Events:WaitForChild("DataEvent")
local BindableFunction_upvr = ReplicatedStorage_upvr.Events:WaitForChild("BindableFunction")
local module_6_upvr = {
	PriceModifiers = {
		Own = {
			Booming = {
				Buy = 0.8;
				Sell = 1.2;
			};
			Average = {
				Buy = 1;
				Sell = 1;
			};
			Struggling = {
				Buy = 1.2;
				Sell = 0.8;
			};
		};
		Allied = {
			Booming = {
				Buy = 0.85;
				Sell = 1.15;
			};
			Average = {
				Buy = 1;
				Sell = 1;
			};
			Struggling = {
				Buy = 1.25;
				Sell = 0.75;
			};
		};
		Neutral = {
			Booming = {
				Buy = 1.25;
				Sell = 0.75;
			};
			Average = {
				Buy = 1.3;
				Sell = 0.7;
			};
			Struggling = {
				Buy = 1.35;
				Sell = 0.65;
			};
		};
		War = {
			Booming = {
				Buy = 2;
				Sell = 0.5;
			};
			Average = {
				Buy = 2;
				Sell = 0.5;
			};
			Struggling = {
				Buy = 2;
				Sell = 0.5;
			};
		};
	};
}
function module_6_upvr.createRegion3(arg1, arg2, arg3, arg4) -- Line 48
	return Region3.new(Vector3.new(math.min(arg2.X, arg3.X), math.min(arg2.Y, arg3.Y), math.min(arg2.Z, arg3.Z)), Vector3.new(math.max(arg2.X, arg3.X), math.max(arg2.Y, arg3.Y), math.max(arg2.Z, arg3.Z)))
end
function module_6_upvr.getSettings(arg1, arg2) -- Line 82
	if arg2:FindFirstChild("Settings") then
		return arg2.Settings
	end
	if game:GetService("ReplicatedStorage").Settings:FindFirstChild(arg2.Name) then
		return game:GetService("ReplicatedStorage").Settings[arg2.Name]
	end
	return false
end
function module_6_upvr.getTeleportLocationsCount(arg1) -- Line 91
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var31 = 0
	for _, _ in next, module_6_upvr.TeleportLocations do
		var31 += 1
	end
	return var31
end
function module_6_upvr.searchInDict(arg1, arg2, arg3, arg4) -- Line 99
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 22. Error Block 17 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [29] 22. Error Block 17 end (CF ANALYSIS FAILED)
end
function module_6_upvr.searchInPlayers(arg1, arg2) -- Line 114
	for _, v_2 in ipairs(game.Players:GetChildren()) do
		if v_2.Name == arg2 then
			return true
		end
	end
	return false
end
function module_6_upvr.searchInList(arg1, arg2, arg3) -- Line 123
	if arg3 then
		for i_3 = 1, #arg2 do
			if arg2[i_3] == arg3 then
				return true
			end
		end
	end
	return false
end
function module_6_upvr.removeFromList(arg1, arg2, arg3) -- Line 134
	for i_4 = 1, #arg2 do
		if arg3 and arg2[i_4] == arg3 and false == false then
			table.remove(arg2, i_4)
			return arg2
		end
	end
	return arg2
end
function module_6_upvr.hasItem(arg1, arg2, arg3, arg4) -- Line 146
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if module_6_upvr:searchInDict(arg2.Loadout, arg3, arg4) or module_6_upvr:searchInDict(arg2.Inventory, arg3, arg4) then
		return true
	end
	return false
end
function module_6_upvr.getModifiedPrice(arg1, arg2, arg3, arg4, arg5) -- Line 153
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if not arg3 then
		return arg2
	end
	if not arg4 then
		return arg2
	end
	if type(arg2) ~= "number" then
		return arg2
	end
	return math.floor(arg2 * module_6_upvr.PriceModifiers[arg3][arg4][arg5])
end
function module_6_upvr.getPrice(arg1, arg2) -- Line 165
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if module_6_upvr.Items[arg2] then
		return module_6_upvr.Items[arg2].SalePrice
	end
	if module_6_upvr.Clothing[arg2] then
		return module_6_upvr.Clothing[arg2].SalePrice
	end
	return false
end
function module_6_upvr.deleteSkill(arg1, arg2, arg3) -- Line 174
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for i_5 = 1, #arg2.UnlockedSkills do
		if arg2.UnlockedSkills[i_5] == arg3 then
			table.remove(arg2.UnlockedSkills, i_5)
			if module_6_upvr:hasItem(arg2, arg3) then
				module_6_upvr:removeItem(arg2, arg3)
			end
		end
	end
	return false
end
function module_6_upvr.unlockSkill(arg1, arg2, arg3, arg4) -- Line 186
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if not module_6_upvr:hasSkill(arg3, arg4) then
		table.insert(arg3.UnlockedSkills, arg4)
		if module_6_upvr.Skills[arg4].SkillType ~= "Passive" then
			module_6_upvr:InsertItem(arg2, arg3, arg4)
		end
	end
end
function module_6_upvr.hasAnAwakening(arg1, arg2) -- Line 195
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for i_6 = 1, #arg2.UnlockedSkills do
		if module_6_upvr.Skills[arg2.UnlockedSkills[i_6]] and module_6_upvr.Skills[arg2.UnlockedSkills[i_6]].SkillType == "Awakening" then
			return true
		end
	end
	return false
end
function module_6_upvr.hasSkill(arg1, arg2, arg3, arg4) -- Line 204
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 31 start (CF ANALYSIS FAILED)
	for i_7 = 1, #arg2.UnlockedSkills do
		if arg2.UnlockedSkills[i_7] == arg3 then
			return true
		end
	end
	-- KONSTANTERROR: [25] 20. Error Block 31 end (CF ANALYSIS FAILED)
end
function module_6_upvr.InsertItem(arg1, arg2, arg3, arg4, arg5) -- Line 233
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: DataEvent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if game:GetService("RunService"):IsServer() then
		local var88_upvw
		if module_6_upvr:hasItem(arg3, arg4) and not module_6_upvr.Skills[arg4] then
			if module_6_upvr:searchInDict(arg3.Loadout, arg4) then
				for _, v_3 in next, arg3.Loadout do
					if v_3.Item == arg4 then
						v_3.Quantity = math.min(module_6_upvr.Settings.MaxItems, v_3.Quantity + (arg5 or 1))
						var88_upvw = true
					end
				end
			end
			if module_6_upvr:searchInDict(arg3.Inventory, arg4) then
				for _, v_4 in next, arg3.Inventory do
					if v_4.Item == arg4 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						v_4.Quantity = math.min(module_6_upvr.Settings.MaxItems, v_4.Quantity + (arg5 or 1))
						var88_upvw = true
					end
				end
			end
		end
		if var88_upvw == false then
			local var89_upvr = arg5 or 1
			for i_10 = 1, 10 do
				(function(arg1_3, arg2_3) -- Line 263, Named "place"
					--[[ Upvalues[7]:
						[1]: var88_upvw (read and write)
						[2]: arg4 (readonly)
						[3]: arg5 (readonly)
						[4]: module_6_upvr (copied, readonly)
						[5]: var89_upvr (readonly)
						[6]: DataEvent_upvr (copied, readonly)
						[7]: arg2 (readonly)
					]]
					if var88_upvw == false and arg2_3.Item == "" then
						var88_upvw = true
						arg2_3.Item = arg4
						if arg5 then
							arg2_3.Quantity = math.min(module_6_upvr.Settings.MaxItems, var89_upvr)
							if module_6_upvr.Items[arg4] and module_6_upvr.Items[arg4].MaxHold and module_6_upvr.Items[arg4].MaxHold < arg2_3.Quantity then
								arg2_3.Quantity = module_6_upvr.Items[arg4].MaxHold
								DataEvent_upvr:FireClient(arg2, "Notification", "You are already holding the max amount of this item.")
							end
						end
					end
				end)(tostring(i_10), arg3.Loadout[tostring(i_10)])
				local var90
			end
			if var88_upvw == false then
				i_10 = nil
				for i_11, v_5 in next, arg3.Inventory, i_10 do
					var90(i_11, v_5)
				end
			end
		end
		DataEvent_upvr:FireClient(arg2, "UpdateItems", arg3.Inventory, arg3.Loadout)
		return arg3.Inventory, arg3.Loadout
	end
end
function module_6_upvr.isSkillBlocked(arg1, arg2, arg3) -- Line 297
	for i_12 = 1, #arg2.BlockedSkills do
		if arg2.BlockedSkills[i_12] == arg3 then
			return true
		end
	end
	return false
end
function module_6_upvr.removeClothing(arg1, arg2, arg3) -- Line 306
	if arg3 and arg2:FindFirstChild(arg3) then
		arg2[arg3]:Destroy()
	end
	for _, v_6 in ipairs(arg2:GetChildren()) do
		if v_6.ClassName == "Shirt" or v_6.ClassName == "Pants" then
			v_6:Destroy()
		end
	end
end
function module_6_upvr.insertClothing(arg1, arg2, arg3, arg4) -- Line 317
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 34. Error Block 48 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 34. Error Block 48 end (CF ANALYSIS FAILED)
end
function module_6_upvr.updateGraphics(arg1, arg2) -- Line 391
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1_14, ipairs_result2_2, ipairs_result3_6 = ipairs(game.Workspace:GetChildren())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [118] 77. Error Block 20 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [118] 77. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 8. Error Block 37 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [118.7]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil ~= 1 then
			if arg2 == "Low" then
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
					-- KONSTANTWARNING: GOTO [118] #77
				end
			end
			-- KONSTANTWARNING: GOTO [118] #77
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [118.8]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [118.9]
		for _, _ in nil do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [118.12]
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil ~= 1 then
					if arg2 == "Low" then
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if nil then
						end
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
	-- KONSTANTERROR: [11] 8. Error Block 37 end (CF ANALYSIS FAILED)
end
function module_6_upvr.teleportBubble(arg1, arg2, arg3) -- Line 423
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	local function _(arg1_4) -- Line 424, Named "setRealNumber"
		if arg1_4 == 1 then
			return -8
		end
		return 8
	end
	local var108
	if var108 == 1 then
		var108 = -8
	else
		var108 = 8
	end
	var108 = math.random(1, 2)
	if var108 == 1 then
		var108 = -8
	else
		var108 = 8
	end
	var108 = nil
	if arg3 then
		var108 = CFrame.new(arg3.Main.Position + Vector3.new(var108, 0.5, var108))
		local clone_2 = ReplicatedStorage_upvr.Models.TeleportBall:Clone()
		clone_2.Parent = workspace
		clone_2.CFrame = var108
		clone_2.CanCollide = false
		module_6_upvr:TweenObject(clone_2, {
			Size = Vector3.new(8, 8, 8);
		}, 1, nil, nil)
	end
	local clone_22 = ReplicatedStorage_upvr.Models.TeleportBall:Clone()
	clone_22.Parent = workspace
	clone_22.CFrame = arg2.Torso.CFrame
	clone_22.CanCollide = false
	module_6_upvr:TweenObject(clone_22, {
		Size = Vector3.new(8, 8, 8);
	}, 1, nil, nil)
	wait(1)
	module_6_upvr:TweenObject(clone_22, {
		Size = Vector3.new(0.05000, 0.05000, 0.05000);
	}, 1, nil, 1)
	if arg3 then
		arg2.HumanoidRootPart.CFrame = var108
		module_6_upvr:TweenObject(clone_2, {
			Size = Vector3.new(0.05000, 0.05000, 0.05000);
		}, 1, nil, 1)
	end
end
function module_6_upvr.stopIfPlaying(arg1, arg2) -- Line 464
	if arg2.Playing then
		arg2:Stop()
	end
end
function module_6_upvr.chargingEffect(arg1, arg2, arg3) -- Line 470
	--[[ Upvalues[2]:
		[1]: Debris_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	local ipairs_result1_6, ipairs_result2_8, ipairs_result3_18 = ipairs(arg2.HumanoidRootPart:GetChildren())
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [9.7]
	if nil.Name ~= "Charging1" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil.Name == "Charging2" then
			-- KONSTANTERROR: [17] 11. Error Block 12 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.Enabled = false
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			Debris_upvr:AddItem(nil, 0.5)
			-- KONSTANTERROR: [17] 11. Error Block 12 end (CF ANALYSIS FAILED)
		end
		-- KONSTANTWARNING: GOTO [9] #7
	end
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 11. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 11. Error Block 12 end (CF ANALYSIS FAILED)
end
function module_6_upvr.bloodSplatter(arg1, arg2, arg3, arg4) -- Line 483
	--[[ Upvalues[3]:
		[1]: ServerStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	delay(0.3, function() -- Line 484
		--[[ Upvalues[6]:
			[1]: ServerStorage_upvr (copied, readonly)
			[2]: Debris_upvr (copied, readonly)
			[3]: arg4 (readonly)
			[4]: arg2 (readonly)
			[5]: module_6_upvr (copied, readonly)
			[6]: arg3 (readonly)
		]]
		local clone_56 = ServerStorage_upvr.Effects.Blood:GetChildren()[math.random(1, #ServerStorage_upvr.Effects.Blood:GetChildren())]:Clone()
		clone_56.Parent = workspace
		clone_56.Size = Vector3.new(0.05000, 0.05000, 0.05000)
		Debris_upvr:AddItem(clone_56, 60)
		if arg4 then
			clone_56.Decal.Color3 = arg4
		end
		local var120 = arg2 * CFrame.new(0, -2, 0)
		local any_CastRay_result1_9, any_CastRay_result2_3 = module_6_upvr:CastRay(var120.p, var120.p - (var120 * CFrame.new(0, 10, 0)).p, arg3)
		local var123 = 2 + math.random()
		if any_CastRay_result1_9 then
			module_6_upvr:TweenObject(clone_56, {
				Size = Vector3.new(var123, 0.05, var123);
			}, 0.5)
			clone_56.CFrame = CFrame.new(any_CastRay_result2_3) * CFrame.new(math.random(-3, 3), 0, math.random(-3, 3)) * CFrame.Angles(0, math.rad(math.random(-180, 180)), 0)
		else
			clone_56:Destroy()
		end
	end)
end
function module_6_upvr.loadCharacterParticles(arg1, arg2, arg3) -- Line 504
	--[[ Upvalues[3]:
		[1]: ServerStorage_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
	]]
	if arg3 == true then
		local tbl_10 = {arg2.LeftHandPoint, arg2.RightHandPoint, arg2.LeftLegPoint, arg2.RightLegPoint}
		for i_15 = 1, #tbl_10 do
			local var129 = tbl_10[i_15]
			if not var129:FindFirstChild("Attachment0") then
				local Attachment_2 = Instance.new("Attachment")
				Attachment_2.Name = "Attachment0"
				Attachment_2.Position = Vector3.new(-0.25, 0, 0)
				Attachment_2.Parent = var129
			end
			if not var129:FindFirstChild("Attachment1") then
				local Attachment_3 = Instance.new("Attachment")
				Attachment_3.Name = "Attachment1"
				Attachment_3.Position = Vector3.new(0.25, 0, 0)
				Attachment_3.Parent = var129
			end
			local clone_40 = ServerStorage_upvr.Effects.Trails.HeavyTrail:Clone()
			local clone_27 = ServerStorage_upvr.Effects.Trails.DashTrail:Clone()
			clone_40.Parent = tbl_10[i_15]
			clone_27.Parent = tbl_10[i_15]
			clone_40.Attachment0 = var129.Attachment0
			clone_27.Attachment0 = var129.Attachment0
			clone_40.Attachment1 = var129.Attachment1
			clone_27.Attachment1 = var129.Attachment1
			if arg2.Name == "Desertoid" then
				clone_27.Color = ColorSequence.new(Color3.fromRGB(255, 185, 64))
			end
		end
	end
	for i_16, v_8 in next, module_6_upvr.Particles do
		if v_8.Preset == true and arg2:FindFirstChild(v_8.PresetParent) then
			ReplicatedStorage_upvr.Particles[i_16]:Clone().Parent = arg2[v_8.PresetParent]
		end
	end
end
function module_6_upvr.getMat(arg1, arg2) -- Line 543
	local tbl_28 = {}
	for i_17 = 8, 0, -1 do
		if workspace:FindFirstChild(arg2.."Mat"..i_17) then
			table.insert(tbl_28, workspace[arg2.."Mat"..i_17])
		end
	end
	local var137 = false
	if 0 < #tbl_28 then
		var137 = tbl_28[math.random(1, #tbl_28)]
	end
	return var137
end
function module_6_upvr.createBlock(arg1, arg2, arg3, arg4, arg5) -- Line 553
	--[[ Upvalues[1]:
		[1]: Debris_upvr (readonly)
	]]
	local Part_4 = Instance.new("Part")
	Part_4.Anchored = true
	Part_4.CanCollide = false
	if not arg5 then
		Part_4.Transparency = 0
	else
		Part_4.Transparency = 1
	end
	Part_4.Size = Vector3.new(0.05000, 0.05000, 0.05000)
	Part_4.Name = arg2
	Part_4.Parent = workspace
	Part_4.Position = arg3
	if arg4 then
		Debris_upvr:AddItem(Part_4, arg4)
	end
	return Part_4
end
function module_6_upvr.downwardsRay(arg1, arg2) -- Line 579
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if arg2:IsA("Model") then
		return module_6_upvr:CastRay((arg2.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)).p, arg2.HumanoidRootPart.Position - (arg2.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)).p, arg2)
	end
	return module_6_upvr:CastRay((arg2.CFrame * CFrame.new(0, 0, -3)).p, arg2.Position - (arg2.CFrame * CFrame.new(0, 10, 0)).p, arg2)
end
function module_6_upvr.trueDownwardsRay(arg1, arg2) -- Line 587
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var139 = arg2 + Vector3.new(0, 0.5, 0)
	return module_6_upvr:CastRay(var139, (var139) - (var139 + Vector3.new(0, 10, 0)))
end
function module_6_upvr.angelicRescue(arg1, arg2) -- Line 592
	--[[ Upvalues[4]:
		[1]: ServerStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: module_6_upvr (readonly)
	]]
	local HumanoidRootPart_7 = arg2.HumanoidRootPart
	local clone = ServerStorage_upvr.Models.wings:Clone()
	clone.Parent = workspace
	Debris_upvr:AddItem(clone, 1.5)
	clone.CFrame = HumanoidRootPart_7.CFrame * CFrame.new(0, 0, 4) * CFrame.Angles((-math.pi/2), 0, 0)
	TweenService_upvr:Create(clone, TweenInfo.new(1.5), {
		Position = clone.Position + Vector3.new(0, 85, 0);
		Transparency = 1;
	}):Play()
	module_6_upvr:smokeBlock(HumanoidRootPart_7.Position, "Giant", Color3.new(255, 245, 97))
	module_6_upvr:createBodyVelocity(HumanoidRootPart_7, (HumanoidRootPart_7.Position - (HumanoidRootPart_7.CFrame * CFrame.new(math.random(math.random(-20, -10), math.random(10, 20)), -100, math.random(math.random(-20, -10), math.random(10, 20)))).p).unit, 120, 0.7, "KnockbackBV", Vector3.new(0, 1, 0))
end
function module_6_upvr.explosion(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 607
	--[[ Upvalues[3]:
		[1]: ServerStorage_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_12_upvr = ServerStorage_upvr.Effects.Explosion.Particle1:Clone()
	local clone_9_upvr = ServerStorage_upvr.Effects.Explosion.Particle2:Clone()
	local clone_50_upvr = ServerStorage_upvr.Effects.Explosion.Light:Clone()
	clone_12_upvr.Parent = arg5
	clone_9_upvr.Parent = arg5
	clone_50_upvr.Parent = arg5
	if arg6 then
		clone_50_upvr:Destroy()
	end
	clone_12_upvr.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, arg3 or 20)})
	clone_9_upvr.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, arg3 or 20)})
	spawn(function() -- Line 631
		--[[ Upvalues[6]:
			[1]: arg4 (readonly)
			[2]: clone_50_upvr (readonly)
			[3]: TweenService_upvr (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: clone_12_upvr (readonly)
			[6]: clone_9_upvr (readonly)
		]]
		wait(arg4 or 1)
		if clone_50_upvr then
			TweenService_upvr:Create(clone_50_upvr, TweenInfo.new(0.3), {
				Brightness = 1;
				Range = 0;
			}):Play()
			Debris_upvr:AddItem(clone_50_upvr, 0.3)
		end
		clone_12_upvr.Enabled = false
		clone_9_upvr.Enabled = false
		Debris_upvr:AddItem(clone_12_upvr, 0.3)
		Debris_upvr:AddItem(clone_9_upvr, 0.3)
	end)
end
function module_6_upvr.wipedEffect(arg1, arg2) -- Line 646
	--[[ Upvalues[4]:
		[1]: ServerStorage_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	local clone_46_upvr = ServerStorage_upvr.Models.wipeChar:Clone()
	clone_46_upvr.HumanoidRootPart.CFrame = CFrame.new(arg2.HumanoidRootPart.Position + Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.rad(math.random(0, 360)), 0)
	clone_46_upvr.Parent = workspace
	module_6_upvr:getAnimation("WipeFloat", clone_46_upvr.Humanoid):Play()
	for _, v_9 in ipairs(clone_46_upvr:GetChildren()) do
		if v_9:IsA("BasePart") and v_9.Name ~= "HumanoidRootPart" then
			TweenService_upvr:Create(v_9, TweenInfo.new(0.75), {
				Transparency = 0.8;
			}):Play()
		end
	end
	delay(4.8, function() -- Line 660
		--[[ Upvalues[3]:
			[1]: clone_46_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: Debris_upvr (copied, readonly)
		]]
		for _, v_10 in ipairs(clone_46_upvr:GetChildren()) do
			if v_10:IsA("BasePart") then
				if v_10.Name ~= "HumanoidRootPart" then
					TweenService_upvr:Create(v_10, TweenInfo.new(0.5), {
						Transparency = 1;
					}):Play()
				end
			end
		end
		Debris_upvr:AddItem(clone_46_upvr, 1)
	end)
end
function module_6_upvr.AfterEffect(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 670
	--[[ Upvalues[2]:
		[1]: Debris_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	local Model = Instance.new("Model")
	Instance.new("Humanoid").Parent = Model
	Model.Parent = workspace
	if arg4 then
	else
		Debris_upvr:AddItem(Model, 2)
	end
	for _, v_11 in pairs(arg2:GetDescendants()) do
		if v_11:IsA("BasePart") and v_11.Name ~= "InvertedSphere" and v_11.Transparency ~= 1 then
			local clone_39_upvr = v_11:Clone()
			clone_39_upvr.CollisionGroup = "NoCollision"
			for var177, v_12 in ipairs(clone_39_upvr:GetDescendants()) do
				if not v_12:IsA("FileMesh") then
					v_12:Destroy()
				end
			end
			clone_39_upvr.CanCollide = false
			clone_39_upvr.Anchored = true
			clone_39_upvr.CFrame = v_11.CFrame
			clone_39_upvr.Parent = Model
			if arg5 and arg5 == "SolidColor" then
				clone_39_upvr.Color = arg6
			end
			var177 = TweenInfo.new
			v_12 = 0.5
			var177 = var177(v_12)
			v_12 = {}
			v_12.Transparency = 1
			v_12.Size = clone_39_upvr.Size * 1.03
			local any_Create_result1 = TweenService_upvr:Create(clone_39_upvr, var177, v_12)
			any_Create_result1:Play()
			function var177() -- Line 704
				--[[ Upvalues[1]:
					[1]: clone_39_upvr (readonly)
				]]
				clone_39_upvr:Destroy()
			end
			any_Create_result1.Completed:Connect(var177)
		else
			clone_39_upvr = v_11.ClassName
			local function INLINED() -- Internal function, doesn't exist in bytecode
				clone_39_upvr = v_11.ClassName
				return clone_39_upvr ~= "Pants"
			end
			if clone_39_upvr == "Shirt" or INLINED() then
			end
		end
	end
	if arg5 and arg5 == "SolidColor" then
	else
		if arg2:FindFirstChild("Shirt") then
			arg2.Shirt:Clone().Parent = Model
		end
		if arg2:FindFirstChild("ShirtBroken") then
			arg2.ShirtBroken:Clone().Parent = Model
		end
		if arg2:FindFirstChild("Pants") then
			arg2.Pants:Clone().Parent = Model
		end
		if arg2:FindFirstChild("PantsBroken") then
			arg2.PantsBroken:Clone().Parent = Model
		end
	end
end
function module_6_upvr.playEffect(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 732
	--[[ Upvalues[2]:
		[1]: Debris_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var194_upvw
	if arg2 then
		var194_upvw = #arg3
		for i_22 = 1, var194_upvw do
			arg3[i_22].Parent = arg2
		end
	end
	if arg6 then
		var194_upvw = #arg3
		for i_23 = 1, var194_upvw do
			Debris_upvr:AddItem(arg3[i_23], arg6)
		end
	end
	var194_upvw = nil
	if arg7 then
		for i_24 = 1, #arg3 do
			if arg8 then
				if arg3[i_24]:FindFirstChild("EffectID") then
					arg3[i_24].EffectID.Value = math.random(1, 1000000)
				else
					local NumberValue_upvw = Instance.new("NumberValue", arg3[i_24])
					NumberValue_upvw.Name = "EffectID"
					NumberValue_upvw.Value = math.random(1, 1000000)
				end
			end
			var194_upvw = arg3[i_24].Color
			if arg5 == "Particle" then
				arg3[i_24].Color = ColorSequence.new(arg7, arg7)
			else
				arg3[i_24].Color = ColorSequence.new(arg7)
			end
		end
	end
	for i_25_upvr = 1, #arg3 do
		if arg5 == "Particle" and module_6_upvr.Particles[arg3[i_25_upvr].Name] and module_6_upvr.Particles[arg3[i_25_upvr].Name].RotationLock == true then
			arg3[i_25_upvr].Rotation = NumberRange.new(math.random(-360, 360))
		end
		arg3[i_25_upvr].Enabled = true
		local Value_upvw = NumberValue_upvw.Value
		delay(arg4, function() -- Line 777
			--[[ Upvalues[7]:
				[1]: arg3 (readonly)
				[2]: i_25_upvr (readonly)
				[3]: var194_upvw (read and write)
				[4]: NumberValue_upvw (read and write)
				[5]: arg8 (readonly)
				[6]: Value_upvw (read and write)
				[7]: arg5 (readonly)
			]]
			arg3[i_25_upvr].Enabled = false
			if arg3[i_25_upvr] and var194_upvw then
				if NumberValue_upvw and arg8 and NumberValue_upvw.Value == Value_upvw then
					if arg5 == "Particle" then
						arg3[i_25_upvr].Color = var194_upvw
					else
						arg3[i_25_upvr].Color = var194_upvw
					end
					NumberValue_upvw:Destroy()
				end
			end
		end)
	end
end
function module_6_upvr.sealingStun(arg1, arg2, arg3, arg4) -- Line 793
	--[[ Upvalues[4]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	local clone_28_upvr = ReplicatedStorage_upvr.Models.Sealed:Clone()
	clone_28_upvr.Parent = arg2.Parent
	local Weld_9 = Instance.new("Weld")
	Weld_9.Part0 = arg2
	Weld_9.Part1 = clone_28_upvr.Main
	Weld_9.Parent = clone_28_upvr.Main
	for i_26, v_13 in ipairs(clone_28_upvr:GetChildren()) do
		if v_13.Name == "Part" then
			for _, v_14 in ipairs(v_13:GetChildren()) do
				local tbl_18 = {}
				local var215 = arg4
				if not var215 then
					var215 = module_6_upvr.UI.SealingColor
				end
				tbl_18.Color3 = var215
				TweenService_upvr:Create(v_14, TweenInfo.new((arg3 or 2) / 2), tbl_18):Play()
			end
		end
	end
	if arg3 then
		i_26 = arg3
		Debris_upvr:AddItem(clone_28_upvr, i_26)
		delay(arg3 / 2, function() -- Line 812
			--[[ Upvalues[3]:
				[1]: clone_28_upvr (readonly)
				[2]: TweenService_upvr (copied, readonly)
				[3]: arg3 (readonly)
			]]
			for _, v_15 in ipairs(clone_28_upvr:GetChildren()) do
				if v_15.Name == "Part" then
					for _, v_16 in ipairs(v_15:GetChildren()) do
						TweenService_upvr:Create(v_16, TweenInfo.new(arg3 / 2), {
							Color3 = Color3.new(0, 0, 0);
						}):Play()
					end
				end
			end
		end)
	end
end
function module_6_upvr.sealingTween(arg1, arg2, arg3, arg4) -- Line 824
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	for _, v_17 in ipairs(arg2:GetChildren()) do
		if v_17.ClassName == "Decal" then
			local tbl_19 = {}
			local var236 = arg4
			if not var236 then
				var236 = module_6_upvr.UI.SealingColor
			end
			tbl_19.Color3 = var236
			TweenService_upvr:Create(v_17, TweenInfo.new(arg3 / 2), tbl_19):Play()
		end
	end
	delay(arg3 / 2, function() -- Line 830
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: arg3 (readonly)
		]]
		if arg2 then
			for _, v_18 in ipairs(arg2:GetChildren()) do
				if v_18.ClassName == "Decal" then
					TweenService_upvr:Create(v_18, TweenInfo.new(arg3 / 2), {
						Color3 = Color3.new(0, 0, 0);
					}):Play()
				end
			end
		end
	end)
end
function module_6_upvr.startStun(arg1, arg2, arg3, arg4, arg5) -- Line 841
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_getSettings_result1_12 = module_6_upvr:getSettings(arg2.Parent)
	local var245
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 14. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 14. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 21. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 21. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 32. Error Block 8 start (CF ANALYSIS FAILED)
	arg2.WalkSpeed = module_6_upvr.NPC[any_getSettings_result1_12.NPCName.Value].Combat.OriginSpeed
	any_getSettings_result1_12.Stunned.Value = false
	any_getSettings_result1_12.NPCOccupied.Value = ""
	do
		return var245
	end
	-- KONSTANTERROR: [49] 32. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 47. Error Block 32 start (CF ANALYSIS FAILED)
	if var245 == any_getSettings_result1_12.StunID.Value then
		while var245 == any_getSettings_result1_12.StunID.Value do
			var245 = math.random(1, 1000000)
			wait()
		end
	end
	any_getSettings_result1_12.Stunned.Value = true
	if arg2 then
		if arg3 then
			arg2.WalkSpeed = arg3
		else
			arg2.WalkSpeed = 0
		end
		arg2.JumpPower = module_6_upvr.Settings.StunJump
		return var245
	end
	-- KONSTANTERROR: [74] 47. Error Block 32 end (CF ANALYSIS FAILED)
end
function module_6_upvr.endStun(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 873
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local any_getSettings_result1_6 = module_6_upvr:getSettings(arg2.Parent)
	if not any_getSettings_result1_6 then
		for i_32, v_19 in ipairs(game.Players:GetChildren()) do
			if v_19.Name.."Husk" == arg2.Parent.Name then
				any_getSettings_result1_6 = module_6_upvr:getSettings(v_19.Character)
			end
		end
	end
	if any_getSettings_result1_6.Stunned.Value == true and arg2 and arg8 or arg2 and arg3 and arg3 == arg4 then
		arg2.WalkSpeed = arg5
		arg2.JumpPower = arg6
		if arg7 then
			arg7.Value = false
		end
		if arg8 then
			i_32 = 1000000
			any_getSettings_result1_6.StunID.Value = math.random(1, i_32)
		end
		return true
	end
	return false
end
function module_6_upvr.jump(arg1, arg2, arg3, arg4) -- Line 896
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local HumanoidRootPart_2 = arg2:FindFirstChild("HumanoidRootPart")
	local var255
	if HumanoidRootPart_2 then
		if HumanoidRootPart_2:FindFirstChild("DashBV") then
			HumanoidRootPart_2.DashBV:Destroy()
		elseif HumanoidRootPart_2:FindFirstChild("JumpBV") then
			HumanoidRootPart_2.JumpBV:Destroy()
		end
		if arg3 == "DoubleJump" then
			var255 = 60
		elseif arg3 == "TripleJump" then
			var255 = 70
		end
		module_6_upvr:createBodyVelocity(HumanoidRootPart_2, (HumanoidRootPart_2.Position - (HumanoidRootPart_2.CFrame * CFrame.new(0, -100, 0)).p).unit, var255, 0.1, "JumpBV", Vector3.new(0, 1, 0))
		local any_getAnimation_result1, _ = module_6_upvr:getAnimation(arg3, arg2.Humanoid)
		any_getAnimation_result1:Play()
	end
end
function module_6_upvr.getHumanoid(arg1, arg2) -- Line 918
	if arg2:FindFirstChild("Humanoid") then
		return arg2.Humanoid
	end
end
function module_6_upvr.effect(arg1, arg2, arg3, arg4, arg5) -- Line 924
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: Debris_upvr (readonly)
		[3]: ServerStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Part = Instance.new("Part")
	Part.Transparency = 1
	Part.CanCollide = false
	Part.Anchored = false
	Part.CanTouch = false
	Part.Parent = workspace
	local Weld_11 = Instance.new("Weld")
	Weld_11.Part0 = arg2.Torso
	Weld_11.Part1 = Part
	Weld_11.Parent = Part
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 23. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 23. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 26. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 26. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_6_upvr.TweenObject(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 1030
	--[[ Upvalues[2]:
		[1]: Debris_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	local var260
	if arg2:IsA("BasePart") then
		arg2.Anchored = true
	end
	if arg6 then
		Debris_upvr:AddItem(arg2, arg6)
	end
	if not var260 then
		var260 = TweenInfo.new(arg4)
	end
	local any_Create_result1_upvr = TweenService_upvr:Create(arg2, var260, arg3)
	if arg8 then
		return any_Create_result1_upvr
	end
	any_Create_result1_upvr:Play()
	if arg5 and arg5 == "Unanchor" then
		delay(arg4, function() -- Line 1046
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: any_Create_result1_upvr (readonly)
			]]
			arg2.Anchored = false
			any_Create_result1_upvr:Destroy()
		end)
	end
end
function module_6_upvr.updateObitoBlock(arg1, arg2) -- Line 1054
	local Frame = workspace.ObitoStoneBlock.SurfaceGui.Frame
	Frame.plrName5.Text = Frame.plrName4.Text
	Frame.plrName4.Text = Frame.plrName3.Text
	Frame.plrName3.Text = Frame.plrName2.Text
	Frame.plrName2.Text = Frame.plrName1.Text
	Frame.plrName1.Text = arg2
end
function module_6_upvr.CastRayParams(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1065
	local RaycastParams_new_result1 = RaycastParams.new()
	if arg4 then
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
	else
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Include
	end
	RaycastParams_new_result1.FilterDescendantsInstances = arg4
	RaycastParams_new_result1.IgnoreWater = true
	if arg6 then
		RaycastParams_new_result1.CollisionGroup = arg6
	end
	local workspace_Raycast_result1 = workspace:Raycast(arg2, arg3 * (arg5 or 25), RaycastParams_new_result1)
	if workspace_Raycast_result1 then
		return workspace_Raycast_result1.Instance, workspace_Raycast_result1.Position
	end
end
function module_6_upvr.CastRay(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1094
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var266
	if arg6 then
		local workspace_FindPartOnRayWithWhitelist_result1, workspace_FindPartOnRayWithWhitelist_result2, _ = workspace:FindPartOnRayWithWhitelist(Ray.new(arg2, arg3), arg6)
		var266 = workspace_FindPartOnRayWithWhitelist_result1
		local _ = workspace_FindPartOnRayWithWhitelist_result2
	elseif arg4 then
		if type(arg4) == "table" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local workspace_FindPartOnRayWithIgnoreList_result1, _, _ = workspace:FindPartOnRayWithIgnoreList(Ray.new(arg2, arg3), arg4)
			var266 = workspace_FindPartOnRayWithIgnoreList_result1
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local workspace_FindPartOnRay_result1_3, _, _ = workspace:FindPartOnRay(Ray.new(arg2, arg3), arg4)
			var266 = workspace_FindPartOnRay_result1_3
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local workspace_FindPartOnRay_result1_2, workspace_FindPartOnRay_result2_2, _ = workspace:FindPartOnRay(Ray.new(arg2, arg3))
		var266 = workspace_FindPartOnRay_result1_2
	end
	if var266 then
		if arg5 then
			if arg5 == "Hit" then
				return var266
			end
		end
		if arg5 and arg5 == "Position" then
			return workspace_FindPartOnRay_result2_2
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return var266, workspace_FindPartOnRay_result2_2
	end
	return false
end
function module_6_upvr.BreakBlockLight(arg1, arg2, arg3) -- Line 1124
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local any_CastRay_result1_4 = module_6_upvr:CastRay(arg2.HumanoidRootPart.Position, (arg3:FindFirstChild("HumanoidRootPart") or arg3).Position - arg2.HumanoidRootPart.Position, nil, "Hit", {arg3:FindFirstChild("Torso"), arg3:FindFirstChild("Back")})
	if any_CastRay_result1_4 and any_CastRay_result1_4.Name == "Back" then
		return true
	end
	return false
end
function module_6_upvr.Ribcage(arg1, arg2, arg3) -- Line 1136
	--[[ Upvalues[1]:
		[1]: ServerStorage_upvr (readonly)
	]]
	local clone_51 = ServerStorage_upvr.Models[arg3]:Clone()
	clone_51.Parent = arg2
	clone_51.Name = "Ribcage"
	local Weld_6 = Instance.new("Weld")
	Weld_6.Part0 = arg2.HumanoidRootPart
	Weld_6.Part1 = clone_51
	Weld_6.Parent = clone_51
	Weld_6.C0 *= CFrame.Angles(0, math.pi, 0)
end
local tbl_33_upvr = {}
local tbl_21_upvr = {}
function module_6_upvr.RagdollCharacter(arg1, arg2, arg3, arg4, arg5) -- Line 1148
	--[[ Upvalues[5]:
		[1]: module_6_upvr (readonly)
		[2]: tbl_33_upvr (readonly)
		[3]: tbl_21_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
		[5]: Debris_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 137 start (CF ANALYSIS FAILED)
	if arg2 and (not arg2 or arg2.Name ~= "Manda") then
		if arg2 and (not arg2:FindFirstChildWhichIsA("Humanoid") or not arg2:FindFirstChild("HumanoidRootPart")) then
			-- KONSTANTERROR: [17] 14. Error Block 105 start (CF ANALYSIS FAILED)
			local var385
			do
				return var385
			end
			-- KONSTANTERROR: [17] 14. Error Block 105 end (CF ANALYSIS FAILED)
		end
		local any_getSettings_result1_14_upvr = module_6_upvr:getSettings(arg2)
		if arg3 and not tbl_33_upvr[arg2] and arg2.Name ~= "Manda" then
			local var387
			local function INLINED_7() -- Internal function, doesn't exist in bytecode
				var387 = arg2:FindFirstChild("ragdolled")
				return var387
			end
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				var387 = module_6_upvr:getSettings(arg2).HyperArmour.Value
				return var387 == false
			end
			local function INLINED_9() -- Internal function, doesn't exist in bytecode
				var387 = arg2:FindFirstChild("NPC")
				return var387
			end
			local function INLINED_10() -- Internal function, doesn't exist in bytecode
				var387 = module_6_upvr.NPC[any_getSettings_result1_14_upvr.NPCName.Value]
				return var387
			end
			local function INLINED_11() -- Internal function, doesn't exist in bytecode
				var387 = module_6_upvr.NPC[any_getSettings_result1_14_upvr.NPCName.Value].SpawnKnocked
				return var387
			end
			if not var387 or INLINED_7() and arg5 == true or INLINED_8() or INLINED_9() or not INLINED_10() or not INLINED_11() then
				var387 = tbl_33_upvr
				var387[arg2] = {}
				var387 = tbl_21_upvr[arg2]
				if not var387 then
					var387 = tbl_21_upvr
					var387[arg2] = {}
				end
				var387 = module_6_upvr:stopAllAnimations
				var387(arg2)
				var387 = arg2:FindFirstChildWhichIsA("Humanoid")
				var387.PlatformStand = true
				var387 = nil
				if not arg2:FindFirstChild("ragdolled") then
					var387 = Instance.new("BoolValue")
					local var388 = var387
					var388.Name = "ragdolled"
					var388.Parent = arg2
				else
					var388 = arg2.ragdolled
				end
				arg2.Humanoid.AutoRotate = false
				local var389_upvw
				if var389_upvw and ReplicatedStorage_upvr.Ailments:FindFirstChild(arg2.Name) and ReplicatedStorage_upvr.Ailments:FindFirstChild(arg2.Name):FindFirstChild("Wind") then
					var389_upvw *= 2
				end
				if var389_upvw then
					Debris_upvr:AddItem(var388, var389_upvw)
				end
				for i_33, v_20 in pairs(arg2:GetDescendants()) do
					if v_20:IsA("Motor6D") and (v_20.Name == "Right Shoulder" or v_20.Name == "Left Shoulder" or v_20.Name == "Right Hip" or v_20.Name == "Left Hip") then
						local BallSocketConstraint_2 = Instance.new("BallSocketConstraint")
						BallSocketConstraint_2.LimitsEnabled = true
						BallSocketConstraint_2.TwistLimitsEnabled = true
						BallSocketConstraint_2.UpperAngle = 90
						tbl_33_upvr[arg2][v_20] = {
							Part0 = v_20.Part0;
							Socket = BallSocketConstraint_2;
						}
						local Attachment_6 = Instance.new("Attachment")
						Attachment_6.CFrame = v_20.C0
						Attachment_6.Parent = v_20.Part0
						local Attachment = Instance.new("Attachment")
						Attachment.CFrame = v_20.C1
						Attachment.Parent = v_20.Part1
						if Attachment_6 and Attachment then
							BallSocketConstraint_2.Attachment0 = Attachment_6
							BallSocketConstraint_2.Attachment1 = Attachment
							BallSocketConstraint_2.Parent = v_20.Parent
							v_20.Part0 = nil
							-- KONSTANTWARNING: GOTO [256] #180
						end
					elseif v_20:IsA("BasePart") then
						v_20.CollisionGroup = "Ragdolls"
					end
					if v_20:IsA("BasePart") and not arg5 and v_20.Name ~= "Head" and v_20.Name ~= "Neck" and (v_20.Name == "Right Arm" or v_20.Name == "Left Arm" or v_20.Name == "Right Leg" or v_20.Name == "Left Leg") then
						local Part_3 = Instance.new("Part")
						Part_3.Size = v_20.Size
						Part_3.CFrame = v_20.CFrame
						Part_3.CanCollide = true
						Part_3.Massless = true
						Part_3.Anchored = false
						Part_3.Name = v_20.Name.."Collider"
						Part_3.Transparency = 1
						Part_3.Material = "Neon"
						local Weld_10 = Instance.new("Weld")
						Weld_10.Part0 = v_20
						Weld_10.Part1 = Part_3
						Weld_10.C0 = CFrame.new()
						Weld_10.C1 = Weld_10.Part1.CFrame:toObjectSpace(Weld_10.Part0.CFrame)
						Weld_10.Parent = Part_3
						Part_3.Parent = v_20
						v_20.CollisionGroup = "Ragdolls"
						Part_3.CollisionGroup = "Ragdolls"
						tbl_21_upvr[arg2][v_20] = Part_3
					end
				end
				if var389_upvw then
					spawn(function() -- Line 1240
						--[[ Upvalues[4]:
							[1]: var389_upvw (read and write)
							[2]: any_getSettings_result1_14_upvr (readonly)
							[3]: module_6_upvr (copied, readonly)
							[4]: arg2 (readonly)
						]]
						wait(var389_upvw)
						if any_getSettings_result1_14_upvr and any_getSettings_result1_14_upvr:FindFirstChild("Knocked") then
							if any_getSettings_result1_14_upvr.Knocked.Value == false then
								module_6_upvr:RagdollCharacter(arg2, false)
								arg2.Humanoid.AutoRotate = true
								if any_getSettings_result1_14_upvr.Ring.Value:find("Ring Of A Helping Hand") then
									any_getSettings_result1_14_upvr.Invincible.Value = true
									local var400 = 0.6
									if any_getSettings_result1_14_upvr.Ring.Value == "Ring Of A Helping Hand +1" then
										var400 = 0.9
									elseif any_getSettings_result1_14_upvr.Ring.Value == "Ring Of A Helping Hand +2" then
										var400 = 1.2
									elseif any_getSettings_result1_14_upvr.Ring.Value == "Ring Of A Helping Hand +3" then
										var400 = 1.5
									elseif any_getSettings_result1_14_upvr.Ring.Value == "Ring Of A Helping Hand +4" then
										var400 = 2
									end
									delay(var400, function() -- Line 1258
										--[[ Upvalues[1]:
											[1]: any_getSettings_result1_14_upvr (copied, readonly)
										]]
										if any_getSettings_result1_14_upvr and any_getSettings_result1_14_upvr:FindFirstChild("Invincible") then
											any_getSettings_result1_14_upvr.Invincible.Value = false
										end
									end)
									return
								end
							end
						end
					end)
					-- KONSTANTWARNING: GOTO [486] #336
				end
				-- KONSTANTWARNING: GOTO [486] #336
			end
		elseif not arg3 then
			var388 = tbl_33_upvr[arg2]
			if var388 then
				var388 = arg2.Name
				if var388 ~= "Manda" then
					if not arg5 then
						var388 = arg2:FindFirstChildWhichIsA("Humanoid")
						var388.PlatformStand = false
						var388 = arg2.HumanoidRootPart
						i_33 = arg2.HumanoidRootPart
						var388.CFrame = CFrame.new(i_33.CFrame.p)
						var388 = ipairs(arg2:GetChildren())
						local ipairs_result1_15, ipairs_result2_12, ipairs_result3_39 = ipairs(arg2:GetChildren())
						for i_114, v_82 in ipairs_result1_15, ipairs_result2_12, ipairs_result3_39 do
							v_20 = v_82.Name
							if v_20 == "ragdolled" then
								v_20 = v_82:Destroy
								v_20()
							end
						end
						ipairs_result1_15 = arg2.Humanoid
						ipairs_result1_15.AutoRotate = true
					end
					ipairs_result1_15 = pcall
					ipairs_result1_15(function() -- Line 1284
						--[[ Upvalues[2]:
							[1]: tbl_33_upvr (copied, readonly)
							[2]: arg2 (readonly)
						]]
						for i_115, v_83 in pairs(tbl_33_upvr[arg2]) do
							i_115.Part0 = v_83.Part0
							v_83.Socket.Attachment0:Destroy()
							v_83.Socket.Attachment1:Destroy()
							v_83.Socket:Destroy()
						end
					end)
					if not arg5 then
						ipairs_result1_15 = tbl_21_upvr[arg2]
						if ipairs_result1_15 then
							ipairs_result1_15 = pairs
							i_114 = tbl_21_upvr
							ipairs_result1_15 = ipairs_result1_15(i_114[arg2])
							local var402_result1, ipairs_result1_15_result2, ipairs_result1_15_result3 = ipairs_result1_15(i_114[arg2])
							for _, v_84 in var402_result1, ipairs_result1_15_result2, ipairs_result1_15_result3 do
								v_20 = v_84:Destroy
								v_20()
							end
						end
						var402_result1 = tbl_21_upvr
						var402_result1[arg2] = nil
						var402_result1 = pairs(arg2:GetDescendants())
						local pairs_result1_11, pairs_result2, pairs_result3_13 = pairs(arg2:GetDescendants())
						for _, v_85 in pairs_result1_11, pairs_result2, pairs_result3_13 do
							v_20 = v_85:IsA("BasePart")
							local var417
							if var417 then
								var417 = nil
								if v_85:FindFirstChild(v_85.Name.."Collider") then
									var417 = v_85[v_85.Name.."Collider"]
								end
								if var417 then
									v_85.CollisionGroup = "Normal"
									var417.CollisionGroup = "Normal"
								end
								v_85.CollisionGroup = "Normal"
							end
						end
					end
					pairs_result1_11 = tbl_33_upvr
					pairs_result1_11[arg2] = nil
				end
			end
		end
		-- KONSTANTWARNING: GOTO [486] #336
	end
	-- KONSTANTERROR: [0] 1. Error Block 137 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 105 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 105 end (CF ANALYSIS FAILED)
end
function module_6_upvr.carry(arg1, arg2, arg3, arg4) -- Line 1320
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 52. Error Block 9 start (CF ANALYSIS FAILED)
	module_6_upvr:weldParts(Instance.new("Weld"), arg2.Torso, arg3, CFrame.new(0, 0, 1.6))
	do
		return
	end
	-- KONSTANTERROR: [73] 52. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [91] 66. Error Block 38 start (CF ANALYSIS FAILED)
	local any_getHumanoid_result1 = module_6_upvr:getHumanoid(arg2)
	print(arg2.Name.." IS PICKING UP "..arg3.Name)
	if arg3 and (arg3.HumanoidRootPart.Position - arg2.HumanoidRootPart.Position).Magnitude < 20 and any_getHumanoid_result1 and 0 < any_getHumanoid_result1.Health and arg3.Parent then
		local WeldConstraint = Instance.new("WeldConstraint")
		arg3.HumanoidRootPart.CFrame = arg2.HumanoidRootPart.CFrame * CFrame.new(-2.5, 1.5, 0) * CFrame.Angles(0, math.pi, 0)
		WeldConstraint.Part0 = arg3.HumanoidRootPart
		WeldConstraint.Part1 = arg2.HumanoidRootPart
		WeldConstraint.Name = arg2.Name.."Weld"
		WeldConstraint.Parent = arg2.HumanoidRootPart
		if arg3:FindFirstChild("Animate") then
			arg3.Animate:Destroy()
		end
		if game.Players:FindFirstChild(arg3.Name) then
			arg3.Humanoid.PlatformStand = true
			for _, v_21 in ipairs(arg3:GetDescendants()) do
				if v_21:IsA("BasePart") and v_21.Anchored == false then
					v_21:SetNetworkOwner(game.Players[arg2.Name])
					if v_21.Massless == false then
						local BoolValue_2 = Instance.new("BoolValue")
						BoolValue_2.Name = "HasMass"
						BoolValue_2.Parent = v_21
						v_21.Massless = true
					end
					v_21.CollisionGroup = "NoCollision"
				end
			end
			arg2.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			return
		end
		arg3.HumanoidRootPart:SetNetworkOwner(game.Players:GetPlayerFromCharacter(arg2))
	end
	-- KONSTANTERROR: [91] 66. Error Block 38 end (CF ANALYSIS FAILED)
end
function module_6_upvr.uncarry(arg1, arg2, arg3, arg4) -- Line 1387
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: DataEvent_upvr (readonly)
		[3]: ServerStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 41. Error Block 8 start (CF ANALYSIS FAILED)
	print("unable to find the crate that has been requested to be dropped.")
	do
		return
	end
	-- KONSTANTERROR: [56] 41. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 45. Error Block 67 start (CF ANALYSIS FAILED)
	local any_getSettings_result1_10 = module_6_upvr:getSettings(arg3)
	if arg3 then
		if game.Players:FindFirstChild(arg3.Name) then
			local Humanoid_3 = arg3:FindFirstChild("Humanoid")
			if Humanoid_3 then
				Humanoid_3.PlatformStand = true
			end
			for i_35, v_22_upvr in ipairs(arg3:GetDescendants()) do
				if v_22_upvr:IsA("BasePart") and v_22_upvr.Anchored == false and game.Players:FindFirstChild(arg3.Name) then
					local _, _ = pcall(function() -- Line 1424
						--[[ Upvalues[2]:
							[1]: v_22_upvr (readonly)
							[2]: arg3 (readonly)
						]]
						v_22_upvr.CollisionGroup = "Ragdolls"
						v_22_upvr:SetNetworkOwner(game.Players[arg3.Name])
						if v_22_upvr:FindFirstChild("HasMass") then
							v_22_upvr.HasMass:Destroy()
							v_22_upvr.Massless = false
						end
					end)
				end
			end
			if Humanoid_3 then
				v_22_upvr = game
				i_35 = v_22_upvr.Players
				v_22_upvr = arg3.Name
				i_35 = "setCamera"
				v_22_upvr = Humanoid_3
				DataEvent_upvr:FireClient(i_35[v_22_upvr], i_35, v_22_upvr)
			end
		end
		if arg3:FindFirstChild("Animate") then
			arg3.Animate:Destroy()
		end
		if arg3:FindFirstChild("Animation") then
			arg3.Animation:Destroy()
		end
		if arg3:FindFirstChild("NPC") then
			ServerStorage_upvr.Scripts.Animation:Clone().Parent = arg3
		else
			ServerStorage_upvr.Scripts.Animate:Clone().Parent = arg3
		end
		if any_getSettings_result1_10 and module_6_upvr.NPC[any_getSettings_result1_10.NPCName.Value] then
			i_35 = any_getSettings_result1_10.NPCName
			if module_6_upvr.NPC[i_35.Value].KnockedAnim then
				v_22_upvr = module_6_upvr
				i_35 = v_22_upvr.NPC
				v_22_upvr = any_getSettings_result1_10.NPCName.Value
				module_6_upvr:getAnimation(i_35[v_22_upvr].KnockedAnim, arg3.Humanoid):Play()
				arg3:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
				arg3.Humanoid.AutoRotate = true
				-- KONSTANTWARNING: GOTO [245] #172
			end
		end
		module_6_upvr:stopAllAnimations(arg3)
		module_6_upvr:RagdollCharacter(arg3, true, nil, true)
		if arg2 then
			if game.Players:FindFirstChild(arg3.Name) then
				DataEvent_upvr:FireClient(game.Players[arg3.Name], "CreateVelocity", arg2.HumanoidRootPart.CFrame.LookVector, 20, 0.2, "KnockbackBV")
			else
				module_6_upvr:createBodyVelocity(arg3.HumanoidRootPart, arg2.HumanoidRootPart.CFrame.LookVector, 20, 0.2, "KnockbackBV")
			end
		end
	end
	if arg2 and arg2.Parent then
		module_6_upvr:resetCarry(arg2)
		module_6_upvr:stopAnimation("Carrying", module_6_upvr:getHumanoid(arg2))
	end
	-- KONSTANTERROR: [61] 45. Error Block 67 end (CF ANALYSIS FAILED)
end
function module_6_upvr.resetCarry(arg1, arg2) -- Line 1478
	if arg2.HumanoidRootPart:FindFirstChild(arg2.Name.."Weld") then
		arg2.HumanoidRootPart[arg2.Name.."Weld"]:Destroy()
	end
end
function module_6_upvr.stopAllAnimations(arg1, arg2) -- Line 1485
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for _, v_23 in pairs(module_6_upvr:getHumanoid(arg2):GetPlayingAnimationTracks()) do
		v_23:Stop(0)
	end
end
function module_6_upvr.createBodyVelocity(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 1492
	--[[ Upvalues[2]:
		[1]: Debris_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 68 start (CF ANALYSIS FAILED)
	local BodyVelocity_2 = Instance.new("BodyVelocity")
	if arg6 then
		BodyVelocity_2.Name = arg6
	else
		BodyVelocity_2.Name = "BodyVelocity"
	end
	if BodyVelocity_2.Name == "CustomForceBV" then
		BodyVelocity_2.MaxForce = arg7
	elseif arg7 then
		BodyVelocity_2.MaxForce = arg7 * 50000
	elseif arg6 == "DirectionalBV" then
		BodyVelocity_2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	else
		BodyVelocity_2.MaxForce = Vector3.new(30000, 30000, 30000)
	end
	-- KONSTANTERROR: [6] 4. Error Block 68 end (CF ANALYSIS FAILED)
end
function module_6_upvr.createBodyPosition(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 1551
	--[[ Upvalues[1]:
		[1]: Debris_upvr (readonly)
	]]
	local BodyPosition = Instance.new("BodyPosition")
	if arg8 then
		BodyPosition.Name = arg8
	else
		BodyPosition.Name = "BodyPosition"
	end
	if arg4 then
		BodyPosition.MaxForce = arg4
	else
		BodyPosition.MaxForce = Vector3.new(200000, 200000, 200000)
	end
	BodyPosition.Parent = arg2
	Debris_upvr:AddItem(BodyPosition, arg7)
	BodyPosition.Position = arg3
	if arg5 then
		BodyPosition.P = arg5
	end
	if arg6 then
		BodyPosition.D = arg6
	end
end
function module_6_upvr.ArmorBreak(arg1, arg2) -- Line 1574
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Value_2 = module_6_upvr:getSettings(arg2).Clothing.Value
	arg2.HumanoidRootPart.ArmorBreak:Play()
	module_6_upvr:getSettings(arg2).ArmorBroken.Value = true
	local clone_47 = ServerStorage_upvr.Models.ArmorBreakModel:Clone()
	clone_47.Parent = workspace
	clone_47.Size = Vector3.new(0.05000, 0.05000, 0.05000)
	clone_47.CFrame = arg2.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0, 180), math.rad(0, 180), math.rad(0, 180))
	module_6_upvr:TweenObject(clone_47, {
		Position = arg2.HumanoidRootPart.Position;
		Size = Vector3.new(12, 12, 12);
		Transparency = 1;
	}, 1, nil, 1)
	if arg2:FindFirstChild(Value_2) then
		arg2[Value_2]:Destroy()
	end
	local Shirt_2 = arg2:FindFirstChild("Shirt")
	local Pants = arg2:FindFirstChild("Pants")
	local var467
	if Shirt_2 or Pants then
		var467 = nil
		if arg2:FindFirstChild("Shirt") then
			var467 = arg2.Shirt.Color3
			local var468 = var467
		end
		if ServerStorage_upvr.App.Clothing:FindFirstChild(Value_2) then
			local ShirtBroken_2 = ServerStorage_upvr.App.Clothing[Value_2]:FindFirstChild("ShirtBroken")
			local PantsBroken = ServerStorage_upvr.App.Clothing[Value_2]:FindFirstChild("PantsBroken")
			if ShirtBroken_2 then
				ServerStorage_upvr.App.Clothing[Value_2].ShirtBroken:Clone().Parent = arg2
			end
			if PantsBroken then
				ServerStorage_upvr.App.Clothing[Value_2].PantsBroken:Clone().Parent = arg2
			end
			if Value_2 == "Rags" or Value_2 == "Zetsu Rags" or var468 then
				if ShirtBroken_2 then
					arg2.ShirtBroken.Color3 = var468
				end
				if PantsBroken then
					arg2.PantsBroken.Color3 = var468
				end
			end
			if Shirt_2 and ShirtBroken_2 then
				arg2.Shirt:Destroy()
			end
			if Pants and PantsBroken then
				arg2.Pants:Destroy()
			end
		end
	end
	if Value_2 then
		var468 = ServerStorage_upvr.App.Clothing:FindFirstChild(Value_2)
		if var468 then
			var468 = ServerStorage_upvr.App.Clothing[Value_2]:FindFirstChild("Broken")
			if var468 then
				var468 = module_6_upvr:weld
				var468(arg2, Value_2.." Broken")
			end
		end
	end
end
function module_6_upvr.inBaseCombat(arg1, arg2) -- Line 1628
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	if type(arg2) == "table" then
		local const_number = 1
		if arg2[const_number] ~= "Fist" then
			if arg2[const_number] == "Tai" then
				return true
			end
			-- KONSTANTWARNING: GOTO [11] #10
		end
		-- KONSTANTWARNING: GOTO [17] #14
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 18. Error Block 16 start (CF ANALYSIS FAILED)
	if arg2 == "Fist" or arg2 == "Tai" then
		return true
	end
	-- KONSTANTERROR: [21] 18. Error Block 16 end (CF ANALYSIS FAILED)
end
function module_6_upvr.getBaseCombat(arg1, arg2, arg3) -- Line 1644
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 12 start (CF ANALYSIS FAILED)
	if arg2.Bloodline == "Lee" then
		-- KONSTANTERROR: [11] 9. Error Block 10 start (CF ANALYSIS FAILED)
		if arg3 and arg3:FindFirstChild("Awakened") and arg3.Awakened.Value == "Byakugan [Stage 4]" then
			return "Fist"
		end
		do
			return "Tai"
		end
		-- KONSTANTERROR: [11] 9. Error Block 10 end (CF ANALYSIS FAILED)
	end
	do
		return "Fist"
	end
	-- KONSTANTERROR: [7] 7. Error Block 12 end (CF ANALYSIS FAILED)
end
function module_6_upvr.AreaCameraShake(arg1, arg2, arg3, arg4, arg5) -- Line 1656
end
function module_6_upvr.CameraShake(arg1, arg2, arg3, arg4) -- Line 1664
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var473_upvw = arg3 / 3
	spawn(function() -- Line 1667
		--[[ Upvalues[4]:
			[1]: var473_upvw (read and write)
			[2]: arg4 (readonly)
			[3]: module_6_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		var473_upvw = 1 / var473_upvw
		while 0 < arg4 do
			module_6_upvr:getHumanoid(arg2).CameraOffset = Vector3.new(math.random() / 10 / var473_upvw, math.random() / 10 / var473_upvw, math.random() / 10 / var473_upvw)
		end
	end)
end
function module_6_upvr.BindWeapon(arg1, arg2) -- Line 1677
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local ipairs_result1_8, ipairs_result2_21, ipairs_result3_43 = ipairs(arg2["Right Arm"]:GetChildren())
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [9.6]
	if nil.Name ~= "Beam" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil.Name == "Attach0" then
			-- KONSTANTERROR: [17] 11. Error Block 19 start (CF ANALYSIS FAILED)
			nil:Destroy()
			-- KONSTANTERROR: [17] 11. Error Block 19 end (CF ANALYSIS FAILED)
		end
		-- KONSTANTWARNING: GOTO [9] #7
	end
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 11. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 11. Error Block 19 end (CF ANALYSIS FAILED)
end
function module_6_upvr.weldParts(arg1, arg2, arg3, arg4, arg5) -- Line 1725
	arg2.Part0 = arg3
	arg2.Part1 = arg4
	arg2.Parent = arg4
	if arg5 then
		arg2.C0 = arg5
	end
end
function module_6_upvr.weld(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 1734
	--[[ Upvalues[4]:
		[1]: module_6_upvr (readonly)
		[2]: Debris_upvr (readonly)
		[3]: ServerStorage_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 371 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [5] 5. Error Block 371 end (CF ANALYSIS FAILED)
end
function module_6_upvr.getImageId(arg1, arg2) -- Line 2766
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var478
	if module_6_upvr.Items[arg2] then
		var478 = module_6_upvr.Items[arg2].ID
	elseif module_6_upvr.Skills[arg2] then
		var478 = module_6_upvr.Skills[arg2].ID
	end
	return var478 or ""
end
function module_6_upvr.getCombatTable(arg1, arg2) -- Line 2776
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for i_37, v_24 in next, module_6_upvr.Combat do
		if i_37 == arg2 then
			return v_24
		end
	end
end
function module_6_upvr.loadAnimations(arg1, arg2) -- Line 2784
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for i_38, v_25 in next, module_6_upvr.Animations do
		local var485
		if type(v_25) == "table" then
			var485 = v_25.ID
		else
			var485 = v_25
		end
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://"..var485
		arg2:LoadAnimation(Animation).Name = i_38
	end
end
function module_6_upvr.getAnimation(arg1, arg2, arg3, arg4) -- Line 2799
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Animation_2 = Instance.new("Animation")
	local var488
	if module_6_upvr.Animations["Float"..arg2] then
		if module_6_upvr:getSettings(arg3.Parent) and module_6_upvr:getSettings(arg3.Parent).Bloodline.Value == "Otsutsuki" and module_6_upvr:getSettings(arg3.Parent):GetAttribute("otsuAnimations") == false then
			var488 = "Float"..var488
		end
	end
	if module_6_upvr.Animations[var488] then
		if module_6_upvr.Animations[var488].Speed then
			Animation_2.AnimationId = "rbxassetid://"..module_6_upvr.Animations[var488].ID
		else
			Animation_2.AnimationId = "rbxassetid://"..module_6_upvr.Animations[var488]
		end
	end
	if Animation_2 then
		local any_LoadAnimation_result1 = arg3:LoadAnimation(Animation_2)
		if arg4 then
			any_LoadAnimation_result1.Priority = arg4
		end
		any_LoadAnimation_result1.Name = var488
		return any_LoadAnimation_result1, module_6_upvr.Animations[var488].Speed
	end
	return false
end
function module_6_upvr.isAnimationPlaying(arg1, arg2, arg3) -- Line 2824
	for _, v_26 in pairs(arg3:GetPlayingAnimationTracks()) do
		if string.gmatch(v_26.Name, arg2) then
			return true
		end
	end
	return false
end
function module_6_upvr.stopAnimation(arg1, arg2, arg3, arg4, arg5) -- Line 2833
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	local any_getSettings_result1_4 = module_6_upvr:getSettings(arg3.Parent)
	local var500
	if any_getSettings_result1_4 and any_getSettings_result1_4.Bloodline.Value == "Otsutsuki" then
		if module_6_upvr.Animations["Float"..var500] or module_6_upvr.Animations[var500] and string.match(var500, "Float") then
			var500 = "Float"..var500
		end
	end
	local pairs_result1_15, pairs_result2_4, pairs_result3_9 = pairs(arg3:GetPlayingAnimationTracks())
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [88] 65. Error Block 26 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [88] 65. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 35. Error Block 43 start (CF ANALYSIS FAILED)
	if arg4 then
		if arg4 == "Search" and arg5 then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.12]
			if nil then
				-- KONSTANTWARNING: GOTO [88] #65
			end
		else
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.13]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.14]
			for _, v_27 in nil do
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.17]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.18]
				if nil == nil or v_27 == nil then
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil == var500 then
		end
	end
	-- KONSTANTERROR: [44] 35. Error Block 43 end (CF ANALYSIS FAILED)
end
function module_6_upvr.Explosion(arg1, arg2, arg3, arg4, arg5) -- Line 2863
	--[[ Upvalues[4]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
		[4]: module_6_upvr (readonly)
	]]
	local clone_53_upvr = ReplicatedStorage_upvr.Models.ExplodeBall:Clone()
	local clone_49_upvr = ReplicatedStorage_upvr.Models.ExplodeBall:Clone()
	local clone_10_upvr = ReplicatedStorage_upvr.Models.ExplodeBall:Clone()
	local function initiate(arg1_5) -- Line 2868
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		arg1_5.Parent = workspace
		arg1_5.Size = Vector3.new(0.05000, 0.05000, 0.05000)
		arg1_5.CFrame = arg2 * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
	end
	initiate(clone_53_upvr)
	initiate(clone_49_upvr)
	initiate(clone_10_upvr)
	clone_53_upvr.ExplosionLight.Enabled = true
	TweenService_upvr:Create(clone_53_upvr.ExplosionLight, TweenInfo.new(2, Enum.EasingStyle.Back), {
		Range = 20;
	}):Play()
	clone_53_upvr.Material = "Neon"
	clone_53_upvr.Color = arg3
	Debris_upvr:AddItem(clone_53_upvr, 2)
	local tbl_24 = {
		Size = arg5 or Vector3.new(30, 30, 30);
	}
	tbl_24.CFrame = arg2
	TweenService_upvr:Create(clone_53_upvr, TweenInfo.new(2, Enum.EasingStyle.Back), tbl_24):Play()
	clone_49_upvr.Material = "Neon"
	clone_49_upvr.Color = arg4
	Debris_upvr:AddItem(clone_49_upvr, 2)
	local tbl_36 = {
		Size = arg5 or Vector3.new(30, 30, 30);
	}
	tbl_36.CFrame = arg2
	TweenService_upvr:Create(clone_49_upvr, TweenInfo.new(2, Enum.EasingStyle.Back), tbl_36):Play()
	Debris_upvr:AddItem(clone_10_upvr, 3.2)
	local tbl_13 = {
		Size = arg5 or Vector3.new(30, 30, 30);
	}
	tbl_13.CFrame = arg2
	TweenService_upvr:Create(clone_10_upvr, TweenInfo.new(2, Enum.EasingStyle.Back), tbl_13):Play()
	module_6_upvr:playTempSound(ReplicatedStorage_upvr.LocalSounds.FireExplode:Clone(), clone_10_upvr)
	delay(1.6, function() -- Line 2898
		--[[ Upvalues[4]:
			[1]: TweenService_upvr (copied, readonly)
			[2]: clone_53_upvr (readonly)
			[3]: clone_49_upvr (readonly)
			[4]: clone_10_upvr (readonly)
		]]
		TweenService_upvr:Create(clone_53_upvr.ExplosionLight, TweenInfo.new(0.4), {
			Range = 0;
		}):Play()
		TweenService_upvr:Create(clone_53_upvr, TweenInfo.new(0.4), {
			Transparency = 1;
		}):Play()
		TweenService_upvr:Create(clone_49_upvr, TweenInfo.new(0.4), {
			Transparency = 1;
		}):Play()
		TweenService_upvr:Create(clone_10_upvr, TweenInfo.new(1.6), {
			Transparency = 1;
		}):Play()
	end)
end
function module_6_upvr.playTempSound(arg1, arg2, arg3, arg4, arg5) -- Line 2906
	--[[ Upvalues[1]:
		[1]: Debris_upvr (readonly)
	]]
	if game:GetService("RunService"):IsServer() then
		if arg5 then
			arg2.PlaybackSpeed = math.random(arg2.PlaybackSpeed * 90, arg2.PlaybackSpeed * 110) / 100
		end
		arg2.Parent = arg3
		if arg4 then
			arg2.Volume *= arg4
		end
		arg2:Play()
		Debris_upvr:AddItem(arg2, arg2.TimeLength)
	end
end
function module_6_upvr.getNearbyPlayers(arg1, arg2, arg3) -- Line 2920
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local module_5 = {}
	for _, v_28 in ipairs(game.Players:GetChildren()) do
		if v_28.Character then
			if v_28.Character:FindFirstChild("HumanoidRootPart") and (v_28.Character.HumanoidRootPart.Position - arg2).Magnitude < arg3 then
				table.insert(module_5, v_28)
				if module_6_upvr:getSettings(v_28.Character) then
					for _, v_29 in ipairs(module_6_upvr:getSettings(v_28.Character):GetChildren()) do
						if v_29.Name == "BeingObservedBy" and not module_6_upvr:searchInList(module_5, game.Players[v_29.Value]) then
							table.insert(module_5, game.Players[v_29.Value])
						end
					end
				end
			end
		end
	end
	return module_5
end
function module_6_upvr.findNearbyNPC(arg1, arg2) -- Line 2938
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for _, v_30 in pairs(game.Workspace:FindPartsInRegion3(module_6_upvr:createRegion3((arg2 * CFrame.new(12, 6, 12)).p, (arg2 * CFrame.new(-12, -6, -12)).p), nil, math.huge)) do
		if v_30 and v_30.Parent and module_6_upvr.NPC[v_30.Parent.Name] or v_30 and module_6_upvr.NPC[v_30.Name] then
			local var549
			if v_30 and v_30.Parent and module_6_upvr.NPC[v_30.Parent.Name] then
				var549 = v_30.Parent
				local var550 = var549
			elseif v_30 then
				if module_6_upvr.NPC[v_30.Name] then
					var550 = v_30
				end
			end
			if not var550:FindFirstChild("NPC") then
			end
			if var550:FindFirstChild("NPC") and var550.NPC.Value == "Dialog" then
				if v_30.Parent ~= workspace then
					return v_30.Parent
				end
				return v_30
			end
		end
	end
	return false
end
function module_6_upvr.unlockChakraPoint(arg1, arg2) -- Line 2963
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	local _ = Color3.new(0, 0, 0)
	local Color3_new_result1_2 = Color3.new(0.15294117647058825, 0.43137254901960786, 0.6313725490196078)
	for i_44, v_31 in ipairs(arg2.Main.UnlockEffects:GetChildren()) do
		v_31.Enabled = true
	end
	for i_45 = 0, 1, 0.01 do
		i_44 = game:GetService("RunService").RenderStepped:wait
		i_44()
		i_44 = 0.5
		if i_44 < i_45 then
			v_31 = arg2.Main.UnlockEffects.BlurryDots
			i_44 = v_31.Enabled
			if i_44 == true then
				i_44 = ipairs
				v_31 = arg2.Main.UnlockEffects:GetChildren()
				i_44 = i_44(v_31)
				local i_44_result1, i_44_result2, i_44_result3 = i_44(v_31)
				for _, v_32 in i_44_result1, i_44_result2, i_44_result3 do
					v_32.Enabled = false
				end
				i_44_result1 = arg2:GetChildren()
				local children_3, NONE_4, NONE = arg2:GetChildren()
				for _, v_33 in children_3, NONE_4, NONE do
					if v_33.Name == "ShardBeam" or v_33.Name == "ShardArea" then
						v_33:Destroy()
					end
				end
				NONE_4 = ReplicatedStorage_upvr.Models
				children_3 = NONE_4.ShardArea:Clone()
				children_3.Parent = arg2
				NONE_4 = children_3:SetPrimaryPartCFrame
				NONE_4(CFrame.new(arg2.Main.Position))
				NONE_4 = ReplicatedStorage_upvr.Models.ShardBeam:Clone()
				NONE_4.Parent = arg2
				NONE_4.Position = arg2.Main.Position + Vector3.new(0, 24.5, 0)
				NONE_4.Size = Vector3.new(0, 1.91999, 2)
				TweenService_upvr:Create(NONE_4, TweenInfo.new(0.75), {
					Size = Vector3.new(25, 1.91999, 2);
					Position = NONE_4.Position + Vector3.new(0, -12.5, 0);
				}):Play()
			end
		end
		children_3 = arg2.InnerPool
		NONE_4 = _:lerp(Color3_new_result1_2, i_45)
		children_3.Color = NONE_4
		children_3 = arg2.Main
		NONE_4 = _:lerp(Color3_new_result1_2, i_45)
		children_3.Color = NONE_4
	end
	arg2.Main.GUI.Msg.Text = "[E] - Rest"
end
function module_6_upvr.resetChakraPoints(arg1) -- Line 3008
	for _, v_34 in ipairs(workspace.ChakraPoints:GetChildren()) do
		v_34.InnerPool.Color = Color3.new(0, 0, 0)
		v_34.Main.Color = Color3.new(0, 0, 0)
		v_34.Main.Transparency = 0
		v_34.Main.CanCollide = true
		v_34.OuterShard.Transparency = 0.5
		v_34.OuterShard.CanCollide = true
		v_34.Main.GUI.Msg.Text = "[E] - Unlock"
		v_34.Unlocked.Value = false
	end
end
function module_6_upvr.unlockChakraPointAutomatic(arg1, arg2) -- Line 3021
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	arg2.InnerPool.Color = Color3.new(0.15294117647058825, 0.43137254901960786, 0.6313725490196078)
	arg2.Main.Color = Color3.new(0.15294117647058825, 0.43137254901960786, 0.6313725490196078)
	arg2.Main.GUI.Msg.Text = "[E] - Rest"
	for _, v_35 in arg2:GetChildren() do
		if v_35.Name == "ShardBeam" or v_35.Name == "ShardArea" then
			v_35:Destroy()
		end
	end
	local clone_32 = ReplicatedStorage_upvr.Models.ShardArea:Clone()
	local clone_5 = ReplicatedStorage_upvr.Models.ShardBeam:Clone()
	clone_32.Parent = arg2
	clone_5.Parent = arg2
	clone_32:SetPrimaryPartCFrame(CFrame.new(arg2.Main.Position))
	clone_5.Position = arg2.Main.Position + Vector3.new(0, 12, 0)
end
function module_6_upvr.getRandomName(arg1, arg2, arg3) -- Line 3042
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if arg3 == "All" then
		return module_6_upvr[arg2.."Names"][math.random(1, #module_6_upvr[arg2.."Names"])]
	end
	return module_6_upvr[arg3..arg2.."Names"][math.random(1, #module_6_upvr[arg3..arg2.."Names"])]
end
function module_6_upvr.getMaxShards(arg1, arg2) -- Line 3052
	local var601 = 4
	if arg2.Bloodline == "Otsutsuki" then
		var601 = 5
	end
	return var601
end
function module_6_upvr.DictionaryLength(arg1, arg2) -- Line 3060
	local var606 = 0
	for _, _ in arg2 do
		var606 += 1
	end
	return var606
end
function module_6_upvr.StringToArray(arg1, arg2) -- Line 3070
	local module_10 = {}
	for _, v_37 in string.split(arg2, ','), nil do
		if string.sub(v_37, 1, 1) == ' ' then
			v_37 = string.sub(v_37, 2)
		end
		table.insert(module_10, v_37)
	end
	return module_10
end
function module_6_upvr.getRandomString(arg1, arg2, arg3) -- Line 3085
	local module_7 = {}
	if arg3 == "Table" then
		module_7 = arg2
	elseif arg3 == "Dictionairy" then
		for i_118, _ in next, arg2 do
			table.insert(module_7, i_118)
		end
	end
	return module_7[math.random(1, #module_7)]
end
function module_6_upvr.Jerk(arg1, arg2) -- Line 3099
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local randint = math.random(1, 4)
	if randint == 1 then
		module_6_upvr:getAnimation("JerkFront", arg2):Play()
	else
		if randint == 2 then
			module_6_upvr:getAnimation("JerkBack", arg2):Play()
			return
		end
		if randint == 3 then
			module_6_upvr:getAnimation("JerkLeft", arg2):Play()
			return
		end
		module_6_upvr:getAnimation("JerkRight", arg2):Play()
	end
end
function module_6_upvr.cancel(arg1, arg2, arg3) -- Line 3112
	game:GetService("ServerStorage").Event:Fire(arg2, "Cancel", arg3)
end
function module_6_upvr.stopBackgroundSound(arg1, arg2) -- Line 3119
	arg2.ForestDay:Stop()
	arg2.ForestNight:Stop()
	arg2.Catacombs:Stop()
	arg2.IndoorTown:Stop()
	arg2.Ocean:Stop()
	arg2.RebirthRoom:Stop()
end
function module_6_upvr.getEnemiesInRange(arg1, arg2, arg3) -- Line 3128
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	local module_4 = {}
	for _, v_38 in pairs(Players_upvr:GetPlayers()) do
		if v_38.Character and v_38.Character:FindFirstChild("HumanoidRootPart") then
			if not v_38.Character:FindFirstChild("ForceField") then
				local any_getSettings_result1_13 = module_6_upvr:getSettings(v_38.Character)
				if (v_38.Character.HumanoidRootPart.Position - arg2).magnitude < arg3 and any_getSettings_result1_13:FindFirstChild("Invincible") then
					if any_getSettings_result1_13.Invincible.Value == false then
						table.insert(module_4, v_38)
					end
				end
			end
		end
	end
	if module_4 then
		return module_4
	end
	return false
end
function module_6_upvr.getClosestEnemy(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 3144
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var663 = arg3
	local var664
	local var668
	for i_53, v_39 in pairs(Players_upvr:GetPlayers()) do
		if v_39.Character and v_39.Character:FindFirstChild("HumanoidRootPart") and not v_39.Character:FindFirstChild("ForceField") and v_39.Character:WaitForChild("Humanoid") and v_39.Character.Humanoid.Health ~= 0 and not module_6_upvr:searchInList(arg4, v_39.Name) and module_6_upvr:getSettings(v_39.Character):GetAttribute("Allured") == false and (not arg6 or arg6 and v_39.Name ~= arg6.Name) then
			if not arg7 or arg7 and module_6_upvr:getSettings(v_39.Character) and module_6_upvr:getSettings(v_39.Character).Knocked.Value == false then
				if (v_39.Character.HumanoidRootPart.Position - arg2).magnitude < var668 then
					var668 = (v_39.Character.HumanoidRootPart.Position - arg2).magnitude
					local var669 = v_39
				end
			end
		end
	end
	if not arg8 then
		v_39 = _G
		i_53 = v_39.NPCs
		for i_54 = 1, #i_53 do
			v_39 = _G.NPCs
			i_53 = v_39[i_54]
			local function INLINED_22() -- Internal function, doesn't exist in bytecode
				v_39 = i_53:FindFirstChild("HumanoidRootPart")
				return v_39
			end
			local function INLINED_23() -- Internal function, doesn't exist in bytecode
				v_39 = arg6:FindFirstChild("npcImmuneTag")
				return v_39
			end
			local function INLINED_24() -- Internal function, doesn't exist in bytecode
				v_39 = i_53:FindFirstChild("npcImmuneTag")
				return v_39
			end
			local function INLINED_25() -- Internal function, doesn't exist in bytecode
				v_39 = module_6_upvr:getHumanoid(i_53).Health
				return v_39 ~= 0
			end
			local function INLINED_26() -- Internal function, doesn't exist in bytecode
				v_39 = module_6_upvr:searchInList(arg4, i_53.Settings.NPCName.Value)
				return v_39
			end
			local function INLINED_27() -- Internal function, doesn't exist in bytecode
				v_39 = i_53.NPC.Value
				return v_39 == "Combat"
			end
			local function INLINED_28() -- Internal function, doesn't exist in bytecode
				v_39 = i_53.NPC.Value
				return v_39 == "Misc"
			end
			local function INLINED_29() -- Internal function, doesn't exist in bytecode
				v_39 = module_6_upvr.NPC[i_53.Settings.NPCName.Value].BigChar
				return v_39
			end
			local function INLINED_30() -- Internal function, doesn't exist in bytecode
				v_39 = i_53:FindFirstChild("ForceField")
				return v_39
			end
			local function INLINED_31() -- Internal function, doesn't exist in bytecode
				v_39 = i_53.Settings.Knocked.Value
				return v_39 == false
			end
			if i_53 and INLINED_22() and (not arg6 or not INLINED_23() or not INLINED_24()) or INLINED_25() and not INLINED_26() and (INLINED_27() or INLINED_28()) or not arg5 or arg5 and not INLINED_29() or not INLINED_30() and (not arg7 or arg7 and INLINED_31()) then
				v_39 = module_6_upvr.NPC[i_53.Settings.NPCName.Value].SpawnKnocked
				if not v_39 then
					v_39 = (i_53.HumanoidRootPart.Position - arg2).magnitude
					if v_39 < var663 then
						v_39 = i_53.HumanoidRootPart.Position - arg2
						var663 = v_39.magnitude
						var664 = i_53
					end
				end
			end
		end
	end
	if var664 and var663 < var668 then
		return var664
	end
	if var669 then
		return var669
	end
	return false
end
function module_6_upvr.flickerEffect(arg1, arg2, arg3, arg4) -- Line 3179
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local clone_35_upvr = ServerStorage_upvr.Effects.FlickerStep:Clone()
	clone_35_upvr.Parent = workspace
	if arg4 then
		clone_35_upvr.Anchored = false
		local Weld_3 = Instance.new("Weld")
		Weld_3.Part0 = arg2
		Weld_3.Part1 = clone_35_upvr
		Weld_3.Parent = clone_35_upvr
	else
		clone_35_upvr.Position = arg2
	end
	delay(arg3 or 0.3, function() -- Line 3192
		--[[ Upvalues[2]:
			[1]: clone_35_upvr (readonly)
			[2]: Debris_upvr (copied, readonly)
		]]
		clone_35_upvr.Particle.Enabled = false
		Debris_upvr:AddItem(clone_35_upvr, 0.3)
	end)
end
function module_6_upvr.subEffect(arg1, arg2, arg3, arg4) -- Line 3198
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
	]]
	module_6_upvr:playTempSound(ServerStorage_upvr.ServerSounds.Sub:Clone(), arg2, arg4, arg3)
	module_6_upvr:playEffect(arg2, {ReplicatedStorage_upvr.Particles.Smoke:Clone()}, 0.5, "Particle")
end
function module_6_upvr.blackExplode(arg1, arg2) -- Line 3203
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local clone_45_upvr = ServerStorage_upvr.Effects.Attachments.BlackExplode:Clone()
	clone_45_upvr.Parent = arg2
	delay(0.3, function() -- Line 3206
		--[[ Upvalues[2]:
			[1]: clone_45_upvr (readonly)
			[2]: Debris_upvr (copied, readonly)
		]]
		clone_45_upvr.Shock.Enabled = false
		clone_45_upvr.ExplodeLines.Enabled = false
		Debris_upvr:AddItem(clone_45_upvr, 0.4)
	end)
end
function module_6_upvr.Sub(arg1, arg2, arg3, arg4) -- Line 3213
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local var704
	if game:GetService("RunService"):IsServer() then
		for _, v_40 in workspace:GetChildren() do
			if v_40:IsA("Model") and v_40:FindFirstChild("Humanoid") then
				table.insert({}, v_40)
			end
		end
		local HumanoidRootPart_5 = arg2.HumanoidRootPart
		local Humanoid = arg2.Humanoid
		if not var704 then
			if math.random(1, 2) == 1 then
				var704 = (HumanoidRootPart_5.CFrame * CFrame.new(30, 0, 0)).p
			else
				var704 = (HumanoidRootPart_5.CFrame * CFrame.new(-30, 0, 0)).p
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local _, any_CastRayParams_result2 = module_6_upvr:CastRayParams(HumanoidRootPart_5.Position, Humanoid.MoveDirection, {}, 30, "AvoidHitbox")
			if any_CastRayParams_result2 then
				var704 = any_CastRayParams_result2
			end
		end
		HumanoidRootPart_5.CFrame = CFrame.new(var704)
		if not arg4 then
			local clone_55 = ReplicatedStorage_upvr.Models.SubstitutionLog:Clone()
			clone_55.Position = HumanoidRootPart_5.Position
			Debris_upvr:AddItem(clone_55, 10)
			clone_55.Parent = workspace
			clone_55.Sub:Play()
			clone_55.CFrame *= CFrame.Angles(math.rad(math.random(0, 90)), 0.7853981633974483, math.rad(math.random(0, 90)))
			module_6_upvr:subEffect(clone_55)
			Humanoid.Health += module_6_upvr:getSettings(arg2).RecentDamage.Value
			if arg2 and arg2:FindFirstChild("Ailments") then
				for _, v_41 in ipairs(arg2.Ailments:GetChildren()) do
					if module_6_upvr.Ailments[v_41.Name].LastingTime - 2 < v_41.Value then
						v_41:Destroy()
						module_6_upvr:removeAilment(arg2, v_41.Name)
					end
				end
			end
		end
	end
end
function module_6_upvr.checkPerfectBlock(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 3270
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: DataEvent_upvr (readonly)
	]]
	local any_getSettings_result1_5 = module_6_upvr:getSettings(arg2)
	if any_getSettings_result1_5 and any_getSettings_result1_5:FindFirstChild("canPerfectBlock") and any_getSettings_result1_5.canPerfectBlock.Value == true then
		arg4.perfectBlockedAmount.Value = arg4.perfectBlockedAmount.Value + 1
		any_getSettings_result1_5.canPerfectBlock.Value = false
		arg2.HumanoidRootPart.PerfectBlock:Play()
		module_6_upvr:playEffect(nil, {arg2.CentrePoint.Blocked}, 0.33, "Particle", nil, Color3.new(0.6666666666666666, 0, 255))
		if arg4.NPCName.Value ~= "Manda" then
			module_6_upvr:getAnimation("Clash", arg3.Humanoid):Play()
		end
		if game.Players:FindFirstChild(arg2.Name) then
			DataEvent_upvr:FireClient(game.Players[arg2.Name], "PerfectBlock")
		end
		if arg6.PoundMaxPerfectBlock <= arg4.perfectBlockedAmount.Value then
			arg4.perfectBlockedAmount.Value = 0
			arg4.NPCOccupied.Value = ""
			arg4.StunID.Value = module_6_upvr:startStun(arg5, nil, arg4.Stunned, true)
			arg4.ParryStun.Value = true
			if arg4.NPCName.Value == "Manda" then
				local any_getAnimation_result1_3_upvr = module_6_upvr:getAnimation("SnakeSleep", arg5)
				any_getAnimation_result1_3_upvr:Play()
				local Value_5_upvr = arg4.StunID.Value
				delay(1.2, function() -- Line 3296
					--[[ Upvalues[6]:
						[1]: any_getAnimation_result1_3_upvr (readonly)
						[2]: arg3 (readonly)
						[3]: arg4 (readonly)
						[4]: module_6_upvr (copied, readonly)
						[5]: arg5 (readonly)
						[6]: Value_5_upvr (readonly)
					]]
					any_getAnimation_result1_3_upvr:AdjustSpeed(0)
					delay(3, function() -- Line 3298
						--[[ Upvalues[6]:
							[1]: any_getAnimation_result1_3_upvr (copied, readonly)
							[2]: arg3 (copied, readonly)
							[3]: arg4 (copied, readonly)
							[4]: module_6_upvr (copied, readonly)
							[5]: arg5 (copied, readonly)
							[6]: Value_5_upvr (copied, readonly)
						]]
						any_getAnimation_result1_3_upvr:Stop()
						if arg3 and arg4 and arg4:FindFirstChild("StunID") then
						end
						arg4.ParryStun.Value = false
					end)
				end)
			else
				any_getAnimation_result1_3_upvr = wait
				any_getAnimation_result1_3_upvr(0.2)
				any_getAnimation_result1_3_upvr = module_6_upvr:getAnimation("BigBoyStunnedKneeling", arg5):Play
				any_getAnimation_result1_3_upvr()
				any_getAnimation_result1_3_upvr = delay
				any_getAnimation_result1_3_upvr(3, function() -- Line 3309
					--[[ Upvalues[5]:
						[1]: arg3 (readonly)
						[2]: arg4 (readonly)
						[3]: module_6_upvr (copied, readonly)
						[4]: arg5 (readonly)
						[5]: Value_5_upvr (readonly)
					]]
					if arg3 and arg4 then
						if arg4:FindFirstChild("StunID") then
						end
					end
					module_6_upvr:stopAnimation("BigBoyStunnedKneeling", arg5)
					arg4.ParryStun.Value = false
				end)
			end
		end
		Value_5_upvr = true
		return Value_5_upvr
	end
	Value_5_upvr = false
	return Value_5_upvr
end
function module_6_upvr.checkResistKnockback(arg1, arg2, arg3) -- Line 3324
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: Chat_upvr (readonly)
	]]
	local any_getSettings_result1 = module_6_upvr:getSettings(arg3)
	if arg2 == "NPC" and module_6_upvr.NPC[any_getSettings_result1.NPCName.Value] then
		if module_6_upvr.NPC[any_getSettings_result1.NPCName.Value].Combat then
			if any_getSettings_result1.NPCAnnoyedCounter.Value < 5 and arg3.NPC.Value ~= "Combat" then
				any_getSettings_result1.NPCAnnoyedCounter.Value = any_getSettings_result1.NPCAnnoyedCounter.Value + 2
				Chat_upvr:Chat(arg3.Head, module_6_upvr:getRandomString(module_6_upvr.NPC[any_getSettings_result1.NPCName.Value].Combat.AttackedChat, "Table"), "Blue")
			end
			if module_6_upvr.NPC[any_getSettings_result1.NPCName.Value].Combat.KnockbackResistance == true then
				return true
			end
		end
	end
	return false
end
function module_6_upvr.clash(arg1, arg2, arg3) -- Line 3339
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	module_6_upvr:getSettings(arg3).CanClash.Value = false
	module_6_upvr:getSettings(arg2).CanClash.Value = false
	arg2.HumanoidRootPart.SwordBlocked:Play()
	arg2.HumanoidRootPart.SwordBlocked.PlaybackSpeed = math.random(90, 110) / 100
	module_6_upvr:playEffect(module_6_upvr:createBlock("WeaponClash", (arg2.HumanoidRootPart.Position + arg3.HumanoidRootPart.Position) / 2, 0.5), {ReplicatedStorage_upvr.Particles.SwordClash:Clone()}, 0.2, "Particle", 0.5)
	module_6_upvr:getAnimation("Clash", arg3.Humanoid):Play()
	module_6_upvr:getAnimation("Clash", arg2.Humanoid):Play()
end
function module_6_upvr.initiateAttack(arg1, arg2, arg3, arg4) -- Line 3350
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local randint_2 = math.random(1, 3)
	if arg2 then
		if arg2:FindFirstChild("Humanoid") then
			if arg2.Humanoid:GetState() == Enum.HumanoidStateType.Swimming and arg4:FindFirstChild("HumanoidRootPart") then
				if arg3.Combat.AttackRange < (arg2.HumanoidRootPart.Position - arg4.HumanoidRootPart.Position).magnitude then
					arg2.HumanoidRootPart.CFrame = CFrame.new(arg2.HumanoidRootPart.Position + Vector3.new(0, 50, 0))
					return
				end
			end
			arg2.Settings.OutOfCombat.Value = os.time()
			local var730
			if not arg2:FindFirstChild("VerticalCooldown") and arg3.Combat.VerticalAbility then
				if arg4:FindFirstChild("HumanoidRootPart") and 12 < math.abs(arg4.HumanoidRootPart.Position.Y - arg2.HumanoidRootPart.Position.Y) and arg2.HumanoidRootPart.Position.Y < arg4.HumanoidRootPart.Position.Y then
					var730 = "VerticalAbility"
					-- KONSTANTWARNING: GOTO [187] #121
				end
			end
			if arg2 then
				if arg2:FindFirstChild("HumanoidRootPart") and arg4 and arg4:FindFirstChild("HumanoidRootPart") then
					if arg3.Combat.CloseRangeAttacks and arg4:FindFirstChild("HumanoidRootPart") and (arg2.HumanoidRootPart.Position - arg4.HumanoidRootPart.Position).magnitude <= arg3.Combat.AttackRange then
						var730 = "CloseRangeAttacks"
						randint_2 = 1
					elseif arg3.Combat.FarRangeAttacks and arg4:FindFirstChild("HumanoidRootPart") and (arg2.HumanoidRootPart.Position - arg4.HumanoidRootPart.Position).magnitude <= arg3.Combat.AggroRange then
						var730 = "FarRangeAttacks"
					end
				end
			end
			if not arg2:FindFirstChild("DontMove") then
				if arg3.BigChar and arg2:FindFirstChild("HumanoidRootPart") and arg4:FindFirstChild("HumanoidRootPart") and (arg2.HumanoidRootPart.Position - arg4.HumanoidRootPart.Position).magnitude < 10 then
					arg2.Humanoid:MoveTo(arg2.HumanoidRootPart.Position)
				elseif arg4:FindFirstChild("HumanoidRootPart") then
					arg2.Humanoid:MoveTo(arg4.HumanoidRootPart.Position)
				end
			end
			if randint_2 == 1 and arg2.Settings.NPCOccupied.Value == "" and arg2.Settings.Knocked.Value == false and arg2.Settings.Stunned.Value == false and var730 and var730 ~= "VerticalAbility" then
				module_6_upvr:attack(arg2, arg3, arg4, var730, module_6_upvr:getRandomString(arg3.Combat[var730], "Dictionairy"))
				return
			end
			if var730 == "VerticalAbility" then
				module_6_upvr:attack(arg2, arg3, arg4, var730, module_6_upvr:getRandomString(arg3.Combat[var730], "Dictionairy"))
				return
			end
			if arg2.Settings.NPCOccupied.Value ~= "" then return end
			if var730 then
			end
		end
	end
end
function module_6_upvr.addDontMove(arg1, arg2) -- Line 3392
	local BoolValue = Instance.new("BoolValue")
	BoolValue.Name = "DontMove"
	BoolValue.Parent = arg2
end
function module_6_upvr.checkBigChar(arg1, arg2) -- Line 3398
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local any_getSettings_result1_11 = module_6_upvr:getSettings(arg2)
	if any_getSettings_result1_11 and module_6_upvr.NPC[any_getSettings_result1_11.NPCName.Value] then
		if module_6_upvr.NPC[any_getSettings_result1_11.NPCName.Value].BigChar then
			return true
		end
	end
	return false
end
function module_6_upvr.attack(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 3406
	--[[ Upvalues[8]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
		[3]: DataEvent_upvr (readonly)
		[4]: BindableFunction_upvr (readonly)
		[5]: Debris_upvr (readonly)
		[6]: TweenService_upvr (readonly)
		[7]: Chat_upvr (readonly)
		[8]: ReplicatedStorage_upvr (readonly)
	]]
	local Settings_2_upvr = arg2.Settings
	Settings_2_upvr.NPCOccupied.Value = arg4.Name
	local var734_upvw
	if var734_upvw == "LeafWhirlwind" then
		if math.random(1, 3) ~= 1 then
			var734_upvw = "Tai"
		end
	end
	local var735_upvr = arg3.Combat[arg5][var734_upvw]
	Settings_2_upvr.NPCOccupiedID.Value = math.random(1, 999999)
	local any_getHumanoid_result1_2_upvr = module_6_upvr:getHumanoid(arg2)
	local HumanoidRootPart_6_upvr = arg2.HumanoidRootPart
	local Event_upvr = game:GetService("ServerStorage").Event
	local var740_upvr = var735_upvr.Damage or nil
	local Value_4_upvr = Settings_2_upvr.NPCOccupiedID.Value
	local _, _ = pcall(function() -- Line 3427
		--[[ Upvalues[20]:
			[1]: var735_upvr (readonly)
			[2]: Settings_2_upvr (readonly)
			[3]: module_6_upvr (copied, readonly)
			[4]: var734_upvw (read and write)
			[5]: arg5 (read and write)
			[6]: arg2 (readonly)
			[7]: ServerStorage_upvr (copied, readonly)
			[8]: any_getHumanoid_result1_2_upvr (readonly)
			[9]: arg3 (readonly)
			[10]: arg4 (readonly)
			[11]: HumanoidRootPart_6_upvr (readonly)
			[12]: Event_upvr (readonly)
			[13]: DataEvent_upvr (copied, readonly)
			[14]: BindableFunction_upvr (copied, readonly)
			[15]: Debris_upvr (copied, readonly)
			[16]: TweenService_upvr (copied, readonly)
			[17]: var740_upvr (readonly)
			[18]: Chat_upvr (copied, readonly)
			[19]: ReplicatedStorage_upvr (copied, readonly)
			[20]: Value_4_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
		Settings_2_upvr.HyperArmour.Value = true
		-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 11. Error Block 4 start (CF ANALYSIS FAILED)
		local function _(arg1_6, arg2_4) -- Line 3432, Named "youGotHit"
			--[[ Upvalues[1]:
				[1]: module_6_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 10. Error Block 3 start (CF ANALYSIS FAILED)
			module_6_upvr:playEffect(nil, {arg1_6.CentrePoint.Slice}, 0.2, "Particle")
			module_6_upvr:playEffect(nil, {arg1_6.CentrePoint.SwordHit}, 0.2, "Particle")
			do
				return
			end
			-- KONSTANTERROR: [11] 10. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [42] 31. Error Block 4 start (CF ANALYSIS FAILED)
			module_6_upvr:hitEffect(arg1_6)
			-- KONSTANTERROR: [42] 31. Error Block 4 end (CF ANALYSIS FAILED)
		end
		-- KONSTANTERROR: [15] 11. Error Block 4 end (CF ANALYSIS FAILED)
	end)
end
function module_6_upvr.hitEffect(arg1, arg2, arg3, arg4, arg5) -- Line 5142
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
		[3]: DataEvent_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 5. Error Block 21 start (CF ANALYSIS FAILED)
	if arg2:FindFirstChild("CentrePoint") then
		if arg2.CentrePoint:FindFirstChild("HitEffect") then
			if not arg4 then
				module_6_upvr:playEffect(nil, {arg2.CentrePoint.HitEffect}, 0.3, "Particle", nil, Color3.new(1, 1, 1))
				module_6_upvr:playEffect(nil, {arg2.CentrePoint.HitEffectBubbles}, 0.3, "Particle", nil, Color3.new(1, 1, 1))
				if not arg5 then
					module_6_upvr:playTempSound(ServerStorage_upvr.Sounds["FistAttack"..math.random(1, 3)]:Clone(), arg2.HumanoidRootPart)
					-- KONSTANTWARNING: GOTO [142] #103
				end
			else
				module_6_upvr:blood(arg2)
				if arg2:FindFirstChild("CentrePoint") then
					module_6_upvr:playEffect(nil, {arg2.CentrePoint.Slice}, 0.2, "Particle")
					module_6_upvr:playEffect(nil, {arg2.CentrePoint.SwordHit}, 0.2, "Particle")
				end
				if not arg5 then
					module_6_upvr:playTempSound(ServerStorage_upvr.Sounds.SwordAttack:Clone(), arg2.HumanoidRootPart)
				end
			end
		end
	end
	-- KONSTANTERROR: [7] 5. Error Block 21 end (CF ANALYSIS FAILED)
end
function module_6_upvr.BlurEffect(arg1, arg2) -- Line 5197
	local BlurEffect_2 = Instance.new("BlurEffect")
	BlurEffect_2.Parent = game.Lighting
	BlurEffect_2.Size = 30
	wait(arg2)
	for i_57 = 30, 0, -2 do
		wait()
		BlurEffect_2.Size = i_57
	end
	BlurEffect_2:Destroy()
end
function module_6_upvr.blood(arg1, arg2, arg3) -- Line 5209
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
	]]
	if arg2:FindFirstChild("Torso") then
		if arg2.Torso:FindFirstChild("Blood") then
			if arg3 then
				module_6_upvr:playEffect(nil, {arg2.Torso.Blood}, 2, "Particle")
				module_6_upvr:playEffect(nil, {arg2.Torso.FatBlood}, 2, "Particle")
				module_6_upvr:playTempSound(ServerStorage_upvr.ServerSounds.BigBloodloss:Clone(), arg2.HumanoidRootPart)
				return
			end
			module_6_upvr:playEffect(nil, {arg2.Torso.Blood}, 0.25, "Particle")
			module_6_upvr:playEffect(nil, {arg2.Torso.FatBlood}, 0.25, "Particle")
		end
	end
end
function module_6_upvr.getMainWeaponPart(arg1, arg2) -- Line 5222
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local Value = module_6_upvr:getSettings(arg2).CurrentWeapon.Value
	if arg2:FindFirstChild(Value) then
		if arg2[Value]:IsA("BasePart") then
			return arg2[Value]
		end
		if arg2[Value]:IsA("Model") then
			for _, v_42 in ipairs(arg2[Value]:GetChildren()) do
				if v_42:IsA("BasePart") then
					return v_42
				end
			end
		else
			return arg2[Value]:FindFirstChild("Main")
		end
	end
	return false
end
function module_6_upvr.blockEffect(arg1, arg2, arg3, arg4) -- Line 5242
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 31 start (CF ANALYSIS FAILED)
	if arg2:FindFirstChild("Ribcage") or arg2:FindFirstChild("SasukeSusanoo") then
		-- KONSTANTERROR: [26] 20. Error Block 29 start (CF ANALYSIS FAILED)
		if arg3 and arg3.Metallic then
			arg2.HumanoidRootPart.SwordBlocked:Play()
			arg2.HumanoidRootPart.SwordBlocked.PlaybackSpeed = math.random(100, 120) / 100
			local var763
			if arg2:FindFirstChild("Ribcage") or arg2:FindFirstChild("SasukeSusanoo") then
				var763 = module_6_upvr:createBlock("WeaponClash", (arg2.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)).Position, 0.5)
			else
				var763 = module_6_upvr:createBlock("WeaponClash", module_6_upvr:getMainWeaponPart(arg2).Position, 0.5)
			end
			module_6_upvr:playEffect(var763, {ReplicatedStorage_upvr.Particles.SwordClash:Clone()}, 0.2, "Particle", 0.5)
			-- KONSTANTWARNING: GOTO [182] #133
		end
		-- KONSTANTERROR: [26] 20. Error Block 29 end (CF ANALYSIS FAILED)
	end
	arg2.HumanoidRootPart.BlockedHit:Play()
	if module_6_upvr:getSettings(arg2).ArmorBroken.Value == false then
		module_6_upvr:playEffect(nil, {arg2.CentrePoint.Blocked}, 0.33, "Particle")
	else
		module_6_upvr:playEffect(nil, {arg2.CentrePoint.Blocked}, 0.6, "Particle", nil, Color3.new(1, 0.2823529411764706, 0))
		if arg4 and module_6_upvr:hasSkill(arg4, "Chip Damage") then
			return true
		end
	end
	-- KONSTANTERROR: [16] 12. Error Block 31 end (CF ANALYSIS FAILED)
end
function module_6_upvr.initiateReturn(arg1, arg2, arg3) -- Line 5268
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	local HumanoidRootPart_4 = arg2.HumanoidRootPart
	local any_getHumanoid_result1_3 = module_6_upvr:getHumanoid(arg2)
	local Settings = arg2.Settings
	if arg2.Settings.Knocked.Value == false then
		Settings.NPCOccupied.Value = arg2.Settings.NPCName.Value
		arg2.Humanoid:MoveTo(Settings.OriginPos.Value)
		if arg3.Combat.ReturnAbility == "Leap Back" then
			any_getHumanoid_result1_3.WalkSpeed = 0
			any_getHumanoid_result1_3.JumpPower = math.random(140, 160)
			module_6_upvr:getAnimation("BarbarianJumpStart", any_getHumanoid_result1_3):Play()
			wait(0.5)
			HumanoidRootPart_4.BarbarianJump:Play()
			any_getHumanoid_result1_3.WalkSpeed = 70
			module_6_upvr:getAnimation("BarbarianJumpLoop", any_getHumanoid_result1_3):Play()
			any_getHumanoid_result1_3.Jump = true
			Settings.Landed.Value = false
			repeat
				local var770 = 0 + wait()
			until (any_getHumanoid_result1_3:GetState() == Enum.HumanoidStateType.Freefall or 0.8 < var770) and 1.7 < var770
			HumanoidRootPart_4.BarbarianLandSmash:Play()
			module_6_upvr:stopAnimation("BarbarianJumpLoop", any_getHumanoid_result1_3)
			module_6_upvr:getAnimation("BarbarianLand", any_getHumanoid_result1_3):Play()
			local _, any_CastRay_result2_2 = module_6_upvr:CastRay(HumanoidRootPart_4.Position, HumanoidRootPart_4.Position - (HumanoidRootPart_4.CFrame * CFrame.new(0, 30, 0)).p, arg2)
			local clone_16 = ReplicatedStorage_upvr.Models.ShockRing:Clone()
			clone_16.Parent = workspace
			clone_16.Size = Vector3.new(0.05000, 0.05000, 0.05000)
			if any_CastRay_result2_2 then
				clone_16.CFrame = CFrame.new(any_CastRay_result2_2)
			else
				clone_16.CFrame = HumanoidRootPart_4.CFrame * CFrame.new(0, -7.5, 0)
			end
			module_6_upvr:TweenObject(clone_16, {
				Size = Vector3.new(40, 6, 40);
				Transparency = 1;
				CFrame = clone_16.CFrame * CFrame.new(0, 1, 0) * CFrame.Angles(0, math.pi, 0);
			}, 0.8, nil, 0.8)
			module_6_upvr:AreaCameraShake(HumanoidRootPart_4.Position, 100, 2, 1)
			wait(0.7)
			Settings.NPCOccupied.Value = ""
			any_getHumanoid_result1_3.WalkSpeed = arg3.Combat.OriginSpeed
			any_getHumanoid_result1_3.JumpPower = arg3.Combat.OriginJump
		end
	end
end
function module_6_upvr.getRandomBloodline(arg1, arg2) -- Line 5322
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local tbl_20 = {}
	local var782
	for i_59, v_43 in var782, module_6_upvr.Bloodlines do
		for _ = 1, v_43.Rarity do
			table.insert(tbl_20, i_59)
		end
	end
	var782 = tbl_20[math.random(1, #tbl_20)]
	if arg2 and var782 == arg2 then
		while var782 == arg2 do
			var782 = tbl_20[math.random(1, #tbl_20)]
			wait()
		end
	end
	return var782
end
function module_6_upvr.burn(arg1, arg2, arg3, arg4, arg5) -- Line 5339
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	module_6_upvr:TweenObject(arg2, {
		Color = module_6_upvr.UI.BurnColor;
	}, 2)
	local var788
	if arg5 == module_6_upvr.UI.FireColor then
		var788 = "Burning"
	else
		var788 = "BlackBurning"
	end
	local clone_48 = ServerStorage_upvr.Effects.Environment[var788]:Clone()
	clone_48.Name = "Burning"
	clone_48.Parent = arg2
	if arg4 then
		for _, v_44 in ipairs(arg2:GetChildren()) do
			if v_44:IsA("BasePart") and not v_44:FindFirstChild("Burning") then
				module_6_upvr:TweenObject(arg2, {
					Color = module_6_upvr.UI.BurnColor;
				}, 2)
				local clone_57 = ServerStorage_upvr.Effects.Environment[var788]:Clone()
				clone_57.Name = "Burning"
				clone_57.Parent = v_44
			end
		end
	end
	if arg3 then
		delay(arg3, function() -- Line 5361
			--[[ Upvalues[3]:
				[1]: arg2 (readonly)
				[2]: arg4 (readonly)
				[3]: Debris_upvr (copied, readonly)
			]]
			if arg2 then
				arg2.Anchored = false
				arg2.CanCollide = false
				if arg4 then
					for _, v_45 in ipairs(arg2:GetChildren()) do
						if v_45:IsA("BasePart") then
							arg2.CanCollide = false
						end
					end
				end
				Debris_upvr:AddItem(arg2, 1)
			end
		end)
	end
end
function module_6_upvr.burnlimb(arg1, arg2) -- Line 5378
	for _, v_46 in ipairs(arg2:GetChildren()) do
		v_46:Destroy()
	end
	arg2.Color = Color3.fromRGB(165, 106, 33)
	arg2.Material = "Neon"
end
function module_6_upvr.getWeapon(arg1, arg2) -- Line 5387
	--[[ Upvalues[1]:
		[1]: ServerStorage_upvr (readonly)
	]]
	for _, v_47 in ipairs(arg2:GetChildren()) do
		if ServerStorage_upvr.Weapons:FindFirstChild(v_47.Name) then
			return v_47
		end
	end
	return false
end
function module_6_upvr.getInfuseColor(arg1, arg2) -- Line 5396
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if arg2 == "Flame Gem" then
		return module_6_upvr.UI.FireColor
	end
	if arg2 == "Black Flame Gem" then
		return module_6_upvr.UI.BlackFireColor
	end
	if arg2 == "Ground Gem" then
		return module_6_upvr.UI.EarthColor
	end
	if arg2 == "Aqua Gem" then
		return module_6_upvr.UI.WaterColor
	end
	if arg2 == "Wind Gem" then
		return module_6_upvr.UI.WindColor
	end
	if arg2 == "Spark Gem" then
		return module_6_upvr.UI.LightningColor
	end
	if arg2 == "Poison Gem" then
		return module_6_upvr.UI.PoisonColor
	end
	return Color3.fromRGB(255, 255, 255)
end
function module_6_upvr.destroyChildrenWelds(arg1, arg2) -- Line 5415
	for _, v_48 in ipairs(arg2:GetChildren()) do
		if v_48.Name == "Weld" then
			v_48:Destroy()
		end
	end
end
function module_6_upvr.infuse(arg1, arg2, arg3, arg4, arg5) -- Line 5423
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
	]]
	local function infusion(arg1_7) -- Line 5424
		--[[ Upvalues[5]:
			[1]: arg3 (readonly)
			[2]: arg5 (readonly)
			[3]: arg4 (readonly)
			[4]: module_6_upvr (copied, readonly)
			[5]: ServerStorage_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [360] 227. Error Block 17 start (CF ANALYSIS FAILED)
		arg1_7.Trail.Color = ColorSequence.new(Color3.fromRGB(121, 37, 173))
		ServerStorage_upvr.Effects.WeaponInfuse.Poison1:Clone().Parent = arg1_7.Blade
		ServerStorage_upvr.Effects.WeaponInfuse.Poison2:Clone().Parent = arg1_7.Blade
		arg1_7.Blade.Transparency = 0.6
		arg1_7.Blade.Color = module_6_upvr.UI.PoisonColor
		arg1_7.Blade.Material = "Neon"
		do
			return
		end
		-- KONSTANTERROR: [360] 227. Error Block 17 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [421] 264. Error Block 28 start (CF ANALYSIS FAILED)
		arg1_7.Blade.Transparency = 1
		for _, v_49 in ipairs(arg1_7.Blade:GetChildren()) do
			if v_49.Name ~= "Weld" then
				v_49:Destroy()
			end
		end
		arg1_7.Trail.Color = ColorSequence.new(Color3.fromRGB(208, 208, 208))
		arg1_7.Trail.LightEmission = 1
		-- KONSTANTERROR: [421] 264. Error Block 28 end (CF ANALYSIS FAILED)
	end
	if arg2.ClassName == "Model" then
		for _, v_50 in ipairs(arg2:GetChildren()) do
			infusion(v_50)
		end
	else
		infusion(arg2)
	end
end
function module_6_upvr.hasSpecialEyes(arg1, arg2) -- Line 5499
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 9 start (CF ANALYSIS FAILED)
	if module_6_upvr:hasSkill(arg2, "Mangekyo") == "hasBase" or module_6_upvr:hasSkill(arg2, "Byakugan") == "hasBase" then
		-- KONSTANTERROR: [24] 19. Error Block 7 start (CF ANALYSIS FAILED)
		do
			return true
		end
		-- KONSTANTERROR: [24] 19. Error Block 7 end (CF ANALYSIS FAILED)
	end
	do
		return false
	end
	-- KONSTANTERROR: [8] 7. Error Block 9 end (CF ANALYSIS FAILED)
end
function module_6_upvr.calculateInjuryPrice(arg1, arg2) -- Line 5506
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var830
	for i_68 = 1, #arg2 do
		if module_6_upvr.Injuries[arg2[i_68]] then
			if module_6_upvr.Injuries[arg2[i_68]].Price then
				var830 += module_6_upvr.Injuries[arg2[i_68]].Price
				print("New injury is "..arg2[i_68].." and it costs "..module_6_upvr.Injuries[arg2[i_68]].Price)
			end
		end
	end
	return var830
end
function module_6_upvr.calculateSinsPrice(arg1, arg2) -- Line 5517
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return arg2 * module_6_upvr.Settings.SingleSinPrice
end
function module_6_upvr.calculateBulk(arg1, arg2, arg3, arg4, arg5) -- Line 5522
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 60. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 60. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [84.12]
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_6_upvr.Palms64(arg1, arg2, arg3) -- Line 5548
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	if arg3 == "Activate" and arg2.Active.Value == false then
		arg2.Active.Value = true
		TweenService_upvr:Create(arg2.Attachment.PointLight, TweenInfo.new(0.5), {
			Range = 36;
		}):Play()
	elseif arg3 == "Deactivate" and arg2.Active.Value == true then
		arg2.Active.Value = false
		TweenService_upvr:Create(arg2.Attachment.PointLight, TweenInfo.new(0.5), {
			Range = 0;
		}):Play()
		arg2.Attachment.Blades1.Enabled = false
		arg2.Attachment.Blades2.Enabled = false
		arg2.Attachment.MainCircle.Enabled = false
		arg2.Dots1.Enabled = false
		arg2.Dots2.Enabled = false
		Debris_upvr:AddItem(arg2, 1)
	end
end
function module_6_upvr.stopSkill(arg1, arg2, arg3, arg4) -- Line 5564
	--[[ Upvalues[5]:
		[1]: module_6_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
		[4]: DataEvent_upvr (readonly)
		[5]: ServerStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 267 start (CF ANALYSIS FAILED)
	local Character_4 = arg2.Character
	if arg4 == "Dragonic Flames" then
		if Character_4:FindFirstChild("DragonicFlamesBlock") then
			Character_4.DragonicFlamesBlock.Effect.Enabled = false
			Character_4.DragonicFlamesBlock.Effect.LockedToPart = false
			TweenService_upvr:Create(Character_4.DragonicFlamesBlock.FireAilment, TweenInfo.new(1), {
				Volume = 0;
			}):Play()
			Debris_upvr:AddItem(Character_4.DragonicFlamesBlock, 1)
			DataEvent_upvr:FireClient(arg2, "EndActionAnim")
			DataEvent_upvr:FireClient(arg2, "FixCamera")
			-- KONSTANTWARNING: GOTO [1550] #1071
		end
		-- KONSTANTWARNING: GOTO [1550] #1071
	end
	-- KONSTANTERROR: [0] 1. Error Block 267 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 55. Error Block 266 start (CF ANALYSIS FAILED)
	if arg4 == "Intangibility" then
		if workspace:FindFirstChild("Kamui"..arg2.Name) then
			workspace["Kamui"..arg2.Name]:Destroy()
			module_6_upvr:getSettings(Character_4).Invincible.Value = false
			DataEvent_upvr:FireClient(arg2, "EndActionAnim")
			-- KONSTANTWARNING: GOTO [1550] #1071
		end
		-- KONSTANTWARNING: GOTO [1550] #1071
	end
	-- KONSTANTERROR: [76] 55. Error Block 266 end (CF ANALYSIS FAILED)
end
function module_6_upvr.skinColorChange(arg1, arg2, arg3) -- Line 5859
	arg2.FakeHead.Color = arg3
	arg2:FindFirstChild("Body Colors").HeadColor3 = arg3
	arg2:FindFirstChild("Body Colors").RightLegColor3 = arg3
	arg2:FindFirstChild("Body Colors").RightArmColor3 = arg3
	arg2:FindFirstChild("Body Colors").TorsoColor3 = arg3
	arg2:FindFirstChild("Body Colors").LeftArmColor3 = arg3
	arg2:FindFirstChild("Body Colors").LeftLegColor3 = arg3
end
function module_6_upvr.removeDeathItems(arg1, arg2) -- Line 5869
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local Inventory = arg2.Inventory
	local Loadout_4 = arg2.Loadout
	local var860_upvw = true
	local function removal(arg1_10) -- Line 5875
		--[[ Upvalues[3]:
			[1]: module_6_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: var860_upvw (read and write)
		]]
		if module_6_upvr.Items[arg1_10.Item] and module_6_upvr.Items[arg1_10.Item].Weapon then
			if arg2.WeaponBound == true then
				var860_upvw = false
				return
			end
		end
		if module_6_upvr.Items[arg1_10.Item] and module_6_upvr.Items[arg1_10.Item].LostOnDeath then
			if arg1_10.Quantity == 1 then
				if module_6_upvr.Items[arg1_10.Item] and module_6_upvr.Items[arg1_10.Item].Weapon then
					local function removeItem(arg1_11) -- Line 5881
						--[[ Upvalues[1]:
							[1]: module_6_upvr (copied, readonly)
						]]
						if module_6_upvr.Skills[arg1_11.Item] and module_6_upvr.Skills[arg1_11.Item].RequiresWeapon then
							arg1_11.Item = ""
							arg1_11.Quantity = 1
						end
					end
					for _, v_51 in next, arg2.Inventory do
						if module_6_upvr.Skills[v_51.Item] and module_6_upvr.Skills[v_51.Item].RequiresWeapon then
							v_51.Item = ""
							v_51.Quantity = 1
						end
					end
					for _, v_52 in next, arg2.Loadout do
						if module_6_upvr.Skills[v_52.Item] and module_6_upvr.Skills[v_52.Item].RequiresWeapon then
							v_52.Item = ""
							v_52.Quantity = 1
						end
					end
				end
				arg1_10.Item = ""
				print(arg1_10.Item.." only had 1 quantity left so it was deleted")
				return
			end
			if module_6_upvr:hasItem(arg2, "Arkoromo's Blessing") then return end
			arg1_10.Quantity = math.max(1, math.floor(arg1_10.Quantity / 2) - 1)
			print("cutting quantity of "..arg1_10.Item.." in half from "..arg1_10.Quantity.." to "..arg1_10.Quantity)
		end
	end
	for _, v_53 in next, Inventory do
		removal(v_53)
	end
	for i_72, v_54 in next, Loadout_4 do
		removal(v_54)
	end
	if module_6_upvr.Items[arg2.CurrentWeapon] then
		i_72 = module_6_upvr
		i_72 = arg2.CurrentWeapon
		if i_72.Items[i_72].LostOnDeath and var860_upvw == true then
			i_72 = "Taijutsu Combat"
			if module_6_upvr:hasSkill(arg2, i_72) then
				arg2.CurrentWeapon = "Tai"
			else
				arg2.CurrentWeapon = "Fist"
			end
		end
	end
	arg2.Inventory = Inventory
	arg2.Loadout = Loadout_4
	return arg2
end
function module_6_upvr.removeItem(arg1, arg2, arg3, arg4, arg5) -- Line 5924
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Inventory_3 = arg2.Inventory
	local Loadout = arg2.Loadout
	local var921
	for _, v_55 in next, Inventory_3 do
		if v_55.Item == arg3 then
			if (arg4 or 1) < v_55.Quantity then
				v_55.Quantity -= arg4 or 1
			else
				v_55.Item = ""
				v_55.Quantity = 1
			end
			var921 = true
		end
	end
	for _, v_56 in next, Loadout do
		if v_56.Item == arg3 then
			if (arg4 or 1) < v_56.Quantity then
				v_56.Quantity -= arg4 or 1
			else
				v_56.Item = ""
				v_56.Quantity = 1
			end
			var921 = true
		end
	end
	if var921 then
		arg2.Inventory = Inventory_3
		arg2.Loadout = Loadout
		if arg5 then
			if true == true then
				for _, v_57 in ipairs(arg5:GetChildren()) do
					if v_57.Name == arg3 then
						v_57:Destroy()
					end
				end
			end
		end
	end
	return arg2
end
function module_6_upvr.removeItems(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 5967
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	print("FIRED INTO REMOVE ITEMS")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [102] 69. Error Block 22 start (CF ANALYSIS FAILED)
	do
		return arg2
	end
	-- KONSTANTERROR: [102] 69. Error Block 22 end (CF ANALYSIS FAILED)
end
function module_6_upvr.billboardCheck(arg1, arg2) -- Line 5987
	for _, v_58 in ipairs(arg2:GetDescendants()) do
		if v_58.ClassName == "BillboardGui" then
			table.insert({}, v_58)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_6_upvr.hasItemType(arg1, arg2, arg3) -- Line 5997
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 30. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 30. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [43.8]
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_6_upvr.itemType(arg1, arg2, arg3) -- Line 6006
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Items = module_6_upvr.Items
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 21. Error Block 38 start (CF ANALYSIS FAILED)
	if Items.Type and (Items.Type == "Trinket" or Items.Type == "Ring" or Items.Type == "FakeSellable") then
		return "Trinket"
	end
	if Items.Type and Items.Type == "Gem" then
		return "Gem"
	end
	if Items.ExtraInfo and (Items.ExtraInfo == "Fruit" or Items.ExtraInfo == "FruitBowl") then
		return "Fruit"
	end
	local var931
	if Items.ExtraInfo and Items.ExtraInfo == "Fish" then
		var931 = "Fish"
	end
	do
		return var931
	end
	-- KONSTANTERROR: [30] 21. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 51. Error Block 28 start (CF ANALYSIS FAILED)
	var931 = false
	do
		return var931
	end
	-- KONSTANTERROR: [78] 51. Error Block 28 end (CF ANALYSIS FAILED)
end
function module_6_upvr.getRandom(arg1, arg2, arg3) -- Line 6026
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	local var944
	if arg2 == "Fruit" or arg2 == "SpecialFruit" then
		var944 = module_6_upvr.FruitRarity
		-- KONSTANTWARNING: GOTO [28] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 40 start (CF ANALYSIS FAILED)
	if arg2 == "Trinket" or arg2 == "Artifact" then
		var944 = module_6_upvr.TrinketRarity
	elseif arg2 == "Gem" then
		var944 = module_6_upvr.GemRarity
	elseif arg2 == "Water" then
		var944 = module_6_upvr.WaterRarity
	end
	for i_77, v_59 in next, var944 do
		for _ = 1, v_59 do
			table.insert({}, i_77)
			local var946
		end
	end
	if arg2 == "SpecialFruit" then
		local randint_4 = math.random(1, 220)
		i_77 = randint_4 / 20
		if randint_4 / 20 == math.floor(i_77) then
			i_77 = "Life Up Fruit"
			table.insert(var946, i_77)
		elseif randint_4 == 20 and not arg3 then
			i_77 = "Chakra Fruit"
			table.insert(var946, i_77)
		end
	end
	do
		return var946[math.random(1, #var946)]
	end
	-- KONSTANTERROR: [9] 7. Error Block 40 end (CF ANALYSIS FAILED)
end
function module_6_upvr.cuff(arg1, arg2) -- Line 6055
	--[[ Upvalues[1]:
		[1]: ServerStorage_upvr (readonly)
	]]
	local clone_52 = ServerStorage_upvr.Models.Jailcuffs:Clone()
	clone_52.Parent = arg2
	local function _(arg1_12, arg2_5) -- Line 6059, Named "weldCuff"
		local Weld_4 = Instance.new("Weld")
		Weld_4.Part0 = arg2_5
		Weld_4.Part1 = arg1_12
		Weld_4.Parent = arg1_12
		Weld_4.C0 = CFrame.new(0, -0.6, 0)
	end
	local cuff1 = clone_52.cuff1
	local Weld_7 = Instance.new("Weld")
	Weld_7.Part0 = arg2["Left Arm"]
	Weld_7.Part1 = cuff1
	Weld_7.Parent = cuff1
	Weld_7.C0 = CFrame.new(0, -0.6, 0)
	local cuff2 = clone_52.cuff2
	local Weld_2 = Instance.new("Weld")
	Weld_2.Part0 = arg2["Right Arm"]
	Weld_2.Part1 = cuff2
	Weld_2.Parent = cuff2
	Weld_2.C0 = CFrame.new(0, -0.6, 0)
end
function module_6_upvr.isMangekyoAbility(arg1, arg2) -- Line 6071
	if arg2 == "Susanoo Strike" or arg2 == "Amaterasu" or arg2 == "Kamui Self-Warp" or arg2 == "Kamui Suck" then
		return true
	end
	return false
end
function module_6_upvr.createDestructionCounter(arg1, arg2) -- Line 6078
	local NumberValue = Instance.new("NumberValue")
	NumberValue.Name = "DestructionCounter"
	NumberValue.Value = 0
	NumberValue.Parent = arg2
end
function module_6_upvr.addPartAilment(arg1, arg2, arg3) -- Line 6085
	--[[ Upvalues[1]:
		[1]: ServerStorage_upvr (readonly)
	]]
	if arg3 == "Lightning" then
		ServerStorage_upvr.Effects.Ailments.Lightning1:Clone().Parent = arg2
		ServerStorage_upvr.Effects.Ailments.Lightning2:Clone().Parent = arg2
		arg2.Lightning1.Size = NumberSequence.new(3)
		arg2.Lightning2.Size = NumberSequence.new(3)
	end
end
function module_6_upvr.destroyPartAilment(arg1, arg2, arg3) -- Line 6094
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: DataEvent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg3 == "Lightning" then
		local any_getNearbyPlayers_result1 = module_6_upvr:getNearbyPlayers(arg2.Position, 500)
		for i_79 = 1, #any_getNearbyPlayers_result1 do
			DataEvent_upvr:FireClient(any_getNearbyPlayers_result1[i_79], "generateDebris", arg2.Position, arg2, "LightningBlock", 3, 4.5, 10)
			local _
		end
		arg2:Destroy()
	end
end
function module_6_upvr.addDestructionCounter(arg1, arg2, arg3, arg4) -- Line 6104
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if arg2:FindFirstChild("DestructionCounter") then
		arg2.DestructionCounter.Value = arg2.DestructionCounter.Value + arg3
		if 5 <= arg2.DestructionCounter.Value then
			module_6_upvr:destroyPartAilment(arg2, arg4)
		elseif arg2.DestructionCounter.Value == 1 then
			module_6_upvr:addPartAilment(arg2, arg4)
		end
	end
	return false
end
function module_6_upvr.generateDebris(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 6116
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_34_upvr = {}
	local var973
	if not var973 then
		var973 = 8
	end
	if arg3 then
		if arg3 ~= "FIXEDSETTINGS" and arg3.Parent and arg3.Parent:FindFirstChild("Humanoid") then
			local any_CastRay_result1_5, _ = module_6_upvr:CastRay((arg3.CFrame * CFrame.new(0, 0, -3)).p, arg3.Position - (arg3.CFrame * CFrame.new(0, 50, 0)).p, arg3.Parent)
			if any_CastRay_result1_5 then
				local var976 = any_CastRay_result1_5
			end
		end
	end
	for i_80 = 1, var973 do
		local var977
		if arg4 then
			var977 = ReplicatedStorage_upvr.Models.Debris[arg4]:Clone()
		else
			var977 = ReplicatedStorage_upvr.Models.Debris.TemplateBlock:Clone()
		end
		if var976 == "FIXEDSETTINGS" then
		elseif var976 then
			var977.Material = var976.Material
			var977.Color = var976.Color
			if var977.Material == Enum.Material.Neon then
				var977.Transparency = 0.75
				-- KONSTANTWARNING: GOTO [111] #78
			end
		elseif arg8 then
			if arg9 then
				var977.Material = arg8
				var977.Color = arg9
				if arg8 == "Neon" then
					var977.Transparency = 0.75
				end
			end
		end
		var977.Parent = workspace
		local var978
		if arg5 and arg6 then
			var978 = math.random(arg5 * 100, arg6 * 100) / 100
		else
			var978 = math.random(200, 300) / 100
		end
		table.insert(tbl_34_upvr, var977)
		var977.Anchored = false
		var977.Size = Vector3.new(var978, var978, var978)
		var977.Position = arg2
		var977.Rotation = Vector3.new(0, 45 * math.random(i_80 - 10, i_80 + 10), 0)
		var977.CFrame += var977.CFrame.LookVector * (var978 + 1)
		var977.AssemblyLinearVelocity = (var977.CFrame.LookVector) * (6 * var978) + (var977.CFrame.UpVector) * (16 * var978)
		var977.AssemblyAngularVelocity = (var977.CFrame.LookVector) * (3 * var978)
		var977.CollisionGroup = "Ragdolls"
	end
	delay(10, function() -- Line 6182
		--[[ Upvalues[1]:
			[1]: tbl_34_upvr (readonly)
		]]
		for i_81 = 1, #tbl_34_upvr do
			tbl_34_upvr[i_81].CanCollide = false
		end
		wait(1)
		if tbl_34_upvr then
			i_81 = 1
			for i_82 = i_81, #tbl_34_upvr do
				tbl_34_upvr[i_82]:Destroy()
			end
		end
	end)
end
function module_6_upvr.getRandomSpawn(arg1) -- Line 6197
	return CFrame.new(workspace.RandomSpawns:GetChildren()[math.random(1, #workspace.RandomSpawns:GetChildren())].Position + Vector3.new(0, 2.5, 0))
end
function module_6_upvr.weather(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 6201
	--[[ Upvalues[2]:
		[1]: Debris_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 67 start (CF ANALYSIS FAILED)
	local ipairs_result1_2, ipairs_result2_41, ipairs_result3_28 = ipairs(arg6:GetChildren())
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [9.11]
	if nil.Name ~= "OnlyRainPart" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil.Name ~= "RainPart" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil.Name ~= "SecondaryRainPart" then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil.Name == "MainRainPart" then
					-- KONSTANTERROR: [25] 15. Error Block 47 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					Debris_upvr:AddItem(nil, 1)
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					nil.PE.Enabled = false
					-- KONSTANTERROR: [25] 15. Error Block 47 end (CF ANALYSIS FAILED)
				end
				-- KONSTANTWARNING: GOTO [9] #7
			end
			-- KONSTANTWARNING: GOTO [25] #15
		end
		-- KONSTANTWARNING: GOTO [25] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 67 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 15. Error Block 47 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 15. Error Block 47 end (CF ANALYSIS FAILED)
end
function module_6_upvr.makeRayVisible(arg1, arg2, arg3, arg4) -- Line 6297
	local Part_6 = Instance.new("Part")
	Part_6.Anchored = true
	Part_6.CanCollide = false
	Part_6.BrickColor = BrickColor.new("Royal purple")
	Part_6.Size = Vector3.new(0.1, 0.1, arg4.magnitude)
	Part_6.CFrame = CFrame.new(arg3 + arg4 / 2, arg3)
	Part_6.Material = Enum.Material.Neon
	Part_6.Parent = game.Workspace
	game.Debris:AddItem(Part_6, 3)
end
function module_6_upvr.addFoodCounters(arg1, arg2, arg3, arg4, arg5) -- Line 6313
	if arg5 < arg3.FoodCounters.Value + arg4 then
		arg3.FoodCounters.Value = arg5
	else
		arg3.FoodCounters.Value = arg3.FoodCounters.Value + arg4
	end
	arg2.FoodCounters = arg3.FoodCounters.Value
end
function module_6_upvr.chakraFeet(arg1, arg2, arg3) -- Line 6322
	local Character_5 = arg2.Character
	Character_5.RightLegPoint.WaterTrail.Enabled = arg3
	Character_5.RightLegPoint.WaterWalk.Enabled = arg3
	Character_5.LeftLegPoint.WaterTrail.Enabled = arg3
	Character_5.LeftLegPoint.WaterWalk.Enabled = arg3
	if arg3 == true then
		Character_5.HumanoidRootPart.ChakraFeet:Play()
	else
		Character_5.HumanoidRootPart.ChakraFeet:Stop()
	end
end
function module_6_upvr.watersCollision(arg1, arg2) -- Line 6336
	for _, v_60 in ipairs(workspace.Waters:GetChildren()) do
		v_60.CanCollide = arg2
	end
end
function module_6_upvr.createQuestModule(arg1, arg2, arg3) -- Line 6342
	arg2.Quests[arg3] = {
		Progress = "Ongoing";
		Completed = false;
		CompletedTime = 0;
	}
	return arg2
end
function module_6_upvr.checkOptionCondition(arg1, arg2, arg3, arg4) -- Line 6351
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 92 start (CF ANALYSIS FAILED)
	if arg4.Req1 == "QuestNotStarted" then
		if not arg3.Quests[arg4.Req2] then
			do
				return true
			end
			-- KONSTANTWARNING: GOTO [252] #163
		end
	else
		if arg4.Req1 == "Otsutsuki" then
			if arg3.Bloodline == "Otsutsuki" and arg3.OtsutsukiBleed == false then
				return true
			end
		end
		if arg4.Req1 == "QuestOngoing" then
			if arg3.Quests[arg4.Req2] and arg3.Quests[arg4.Req2].Progress == "Ongoing" then
				do
					return true
				end
				-- KONSTANTWARNING: GOTO [252] #163
			end
		elseif arg4.Req1 == "QuestCompletedGood" then
			if arg3.Quests[arg4.Req2] and arg3.Quests[arg4.Req2].Progress == "FinishedGood" then
				do
					return true
				end
				-- KONSTANTWARNING: GOTO [252] #163
			end
		elseif arg4.Req1 == "SkillOwned" then
			if module_6_upvr:searchInList(arg3.UnlockedSkills, arg4.Req2) then
				do
					return true
				end
				-- KONSTANTWARNING: GOTO [252] #163
			end
		elseif arg4.Req1 == "ScammedALot" and 4 < arg3.ScammedAmount then
			if not arg3.Quests["Relic Retrieval"] then
				do
					return true
				end
				-- KONSTANTWARNING: GOTO [252] #163
			end
		elseif arg4.Req1 == "HasAwakening" then
		else
			if arg4.Req1 == "DoesNotHaveItem" then
				if not module_6_upvr:hasItem(arg3, arg4.Req2) then
					return true
				end
			end
			if arg4.Req1 == "HasTrait" and module_6_upvr:searchInList(arg3.Traits, arg4.Req2) then
				return true
			end
			if arg4.Req1 == "Cookbook" and arg3.Quests["Fruit Cooker"] and arg3.Quests["Fruit Cooker"].Progress == "FinishedGood" and not module_6_upvr:hasItem(arg3, "Cookbook") then
				return true
			end
			if arg4.Req1 == "Chef's Kiss" and not arg3.RecievedChefsKiss then
				return true
			end
			if arg4.Req1 == "Kamui Essence" and module_6_upvr:hasItem(arg3, "Kamui Essence") then
				return true
			end
			if arg4.Req1 == "AscendedZetsu" and arg4.Req2 == "NotPoisonZetsu" then
				if arg3.AscendedZetsu == true and arg3.PoisonZetsu == false then
					do
						return true
					end
					-- KONSTANTWARNING: GOTO [252] #163
				end
			elseif arg4.Req1 == "CarryingCriminal" then
				print("indeed u are carrying aa criminal")
				local any_getSettings_result1_8 = module_6_upvr:getSettings(arg2.Character)
				if any_getSettings_result1_8.Carrying.Value ~= nil and game.Players:FindFirstChild(any_getSettings_result1_8.Carrying.Value.Name) then
					return true
				end
			end
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 92 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [252] 163. Error Block 58 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [252] 163. Error Block 58 end (CF ANALYSIS FAILED)
end
function module_6_upvr.getAliveTime(arg1, arg2, arg3) -- Line 6402
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if module_6_upvr:hasSkill(arg3, "Summoning Mastery") then
		return arg2 + 10
	end
	return arg2
end
function module_6_upvr.checkPurchase(arg1, arg2, arg3, arg4) -- Line 6409
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var1000 = true
	if module_6_upvr.Items[arg4] then
		for i_84, v_61 in next, module_6_upvr.Items[arg4] do
			if i_84 == "Ryo" and arg3.Ryo < v_61 then
				var1000 = false
			end
		end
	end
	return var1000
end
function module_6_upvr.purchase(arg1, arg2, arg3, arg4) -- Line 6424
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var1005 = true
	if module_6_upvr.Items[arg4] then
		for i_85, v_62 in next, module_6_upvr.Items[arg4] do
			if i_85 == "Ryo" then
				if arg3.Ryo < v_62 then
					var1005 = false
				else
					arg3.Ryo -= v_62
				end
			end
		end
	end
	return var1005, arg3
end
function module_6_upvr.waterBelowCheck(arg1, arg2) -- Line 6441
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local HumanoidRootPart = arg2.HumanoidRootPart
	local tbl_26 = {}
	tbl_26[1] = arg2
	tbl_26[2] = workspace.Terrain
	local any_CastRay_result1_8, _ = module_6_upvr:CastRay(HumanoidRootPart.Position, (HumanoidRootPart.Position) - (HumanoidRootPart.Position + Vector3.new(0, 30, 0)), tbl_26)
	if any_CastRay_result1_8 and any_CastRay_result1_8.Name == "Water" then
		return true
	end
	return false
end
local WeldManager_upvr = require(ReplicatedStorage_upvr.WeldManager)
function module_6_upvr.addAilment(arg1, arg2, arg3, arg4, arg5) -- Line 6451
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: WeldManager_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 49 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 49 end (CF ANALYSIS FAILED)
end
function module_6_upvr.removeAilment(arg1, arg2, arg3) -- Line 6513
	--[[ Upvalues[1]:
		[1]: Debris_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 90 start (CF ANALYSIS FAILED)
	local var1011
	if arg2:FindFirstChild("Torso") then
		var1011 = arg2.Torso
	elseif arg2:FindFirstChild("HitParts") then
		var1011 = arg2.HitParts.AilmentPart
		local var1012
	end
	if var1012 == "Fire" then
		if var1011:FindFirstChild("BlueFire") then
			var1012 = "BlueFire"
		end
		if var1011:FindFirstChild(var1012) then
			var1011[var1012].Enabled = false
			Debris_upvr:AddItem(var1011[var1012], 1)
			var1011[var1012].Name = "OldFire"
			-- KONSTANTWARNING: GOTO [356] #249
		end
		-- KONSTANTWARNING: GOTO [356] #249
	end
	-- KONSTANTERROR: [0] 1. Error Block 90 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 40. Error Block 85 start (CF ANALYSIS FAILED)
	if var1012 == "BlackFire" or var1012 == "PurpleFire" or var1012 == "GreenFire" then
		if var1011:FindFirstChild(var1012) then
			var1011[var1012].Enabled = false
			Debris_upvr:AddItem(var1011[var1012], 1)
			var1011[var1012].Name = "OldFire"
			-- KONSTANTWARNING: GOTO [356] #249
		end
		-- KONSTANTWARNING: GOTO [356] #249
	end
	-- KONSTANTERROR: [53] 40. Error Block 85 end (CF ANALYSIS FAILED)
end
function module_6_upvr.unchainedSpeed(arg1, arg2) -- Line 6614
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var1013
	if module_6_upvr:searchInList(arg2.Traits, "Unchained") and arg2.ArmorBroken == true then
		var1013 = module_6_upvr.Traits.Unchained.SpeedIncrease
	end
	return var1013
end
function module_6_upvr.kamuiEffect(arg1, arg2) -- Line 6622
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local clone_38_upvr = ServerStorage_upvr.Models.ObitoKamui:Clone()
	clone_38_upvr.Parent = workspace
	clone_38_upvr.Anchored = true
	clone_38_upvr.Position = arg2
	clone_38_upvr.Kamui:Play()
	Debris_upvr:AddItem(clone_38_upvr, 4)
	delay(2, function() -- Line 6629
		--[[ Upvalues[1]:
			[1]: clone_38_upvr (readonly)
		]]
		clone_38_upvr.WhiteEmitter.Enabled = false
		clone_38_upvr.BlackEmitter.Enabled = false
	end)
end
function module_6_upvr.kamuiTeleport(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 6635
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: ServerStorage_upvr (readonly)
		[3]: DataEvent_upvr (readonly)
	]]
	local any_Play_result1 = module_6_upvr:getAnimation("KamuiWarp", module_6_upvr:getHumanoid(arg3)):Play()
	if arg6 then
		module_6_upvr:playTempSound(ServerStorage_upvr.ServerSounds[arg6]:Clone(), arg3.HumanoidRootPart)
	end
	local BodyPosition_2 = Instance.new("BodyPosition")
	BodyPosition_2.Name = "KnockbackBV"
	BodyPosition_2.Position = arg4
	BodyPosition_2.Parent = arg3.HumanoidRootPart
	wait(0.3)
	if arg2 then
		DataEvent_upvr:FireClient(arg2, "VisualAilment", "FullScreen", 0, 0.3)
	end
	wait(0.3)
	BodyPosition_2:Destroy()
	if arg5 then
		arg3.HumanoidRootPart.CFrame = CFrame.new(arg5.p)
	else
		arg3.HumanoidRootPart.CFrame = CFrame.new(workspace.KamuiEntrance.Position)
	end
	if any_Play_result1 then
		any_Play_result1:Stop()
	end
end
function module_6_upvr.getFruitCount(arg1, arg2) -- Line 6672
	local var1022 = 0
	if arg2.FruitSpawns then
		for _, v_63 in ipairs(arg2.FruitSpawns:GetChildren()) do
			if v_63:FindFirstChild("Occupied") then
				var1022 += 1
			end
		end
	end
	return var1022
end
local random_state_upvr = Random.new()
function module_6_upvr.randPointOnUnitSphere(arg1, arg2, arg3, arg4) -- Line 6686
	--[[ Upvalues[1]:
		[1]: random_state_upvr (readonly)
	]]
	local var1027 = arg2
	if not var1027 then
		var1027 = random_state_upvr:NextNumber() * 2 - 1
	end
	local var1028 = arg3
	if not var1028 then
		var1028 = random_state_upvr:NextNumber() * 2 - 1
	end
	local var1029 = arg4
	if not var1029 then
		var1029 = random_state_upvr:NextNumber() * 2 - 1
	end
	return Vector3.new(var1027, var1028, var1029).Unit
end
function module_6_upvr.PointOnSphere(arg1, arg2, arg3, arg4, arg5) -- Line 6694
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return module_6_upvr:randPointOnUnitSphere(arg3, arg4, arg5) * arg2
end
function module_6_upvr.npcDeathPart(arg1, arg2, arg3) -- Line 6698
	--[[ Upvalues[3]:
		[1]: ServerStorage_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local var1030_upvw
	if arg3 and arg3:find("Clone") then
		var1030_upvw = ServerStorage_upvr.Models.EmptyPart:Clone()
		module_6_upvr:subEffect(var1030_upvw)
	else
		var1030_upvw = ServerStorage_upvr.Models.NPCDeath:Clone()
	end
	var1030_upvw.Position = arg2
	var1030_upvw.Parent = workspace
	if arg3 and arg3 == "ShadowClone" then
		module_6_upvr:playTempSound(ServerStorage_upvr.ServerSounds.Sub:Clone(), var1030_upvw)
	else
		module_6_upvr:playTempSound(ServerStorage_upvr.ServerSounds.DeathPoof:Clone(), var1030_upvw)
	end
	delay(0.5, function() -- Line 6717
		--[[ Upvalues[2]:
			[1]: var1030_upvw (read and write)
			[2]: Debris_upvr (copied, readonly)
		]]
		for _, v_64 in ipairs(var1030_upvw:GetChildren()) do
			if v_64.ClassName == "ParticleEmitter" then
				v_64.Enabled = false
			end
		end
		Debris_upvr:AddItem(var1030_upvw, 1.5)
	end)
end
function module_6_upvr.activateZetsu(arg1, arg2) -- Line 6727
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	arg2.Shirt.Color3 = Color3.fromRGB(50, 50, 50)
	arg2.Pants.Color3 = Color3.fromRGB(50, 50, 50)
	arg2.FakeHead.Color = Color3.fromRGB(50, 50, 50)
	module_6_upvr:getAnimation("ZetsuActivated", arg2.Humanoid):Play()
end
function module_6_upvr.equipFlyTrap(arg1, arg2) -- Line 6734
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	local clone_7 = ServerStorage_upvr.Models.Flytrap:Clone()
	clone_7.Parent = arg2
	local Weld_12 = Instance.new("Weld")
	Weld_12.Part0 = arg2.Torso
	clone_7["Flytrap.001"].Anchored = false
	Weld_12.Part1 = clone_7["Flytrap.001"]
	Weld_12.Parent = clone_7["Flytrap.001"]
	Weld_12.C0 = CFrame.new(0, 1.3, 0)
	module_6_upvr:getAnimation("LeafOpen", clone_7.AC):Play()
end
function module_6_upvr.LineCreate(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 6748
	--[[ Upvalues[3]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local var1039_upvr = arg6
	if not var1039_upvr then
		var1039_upvr = math.random(3, 5)
	end
	local var1040_upvw
	local var1041_upvr = arg8 or 1
	local magnitude_3_upvr = (arg2.p - arg3.p).magnitude
	local var1043_upvr = arg5 or 0.5
	local var1044_upvr = arg7 or 0.6
	local function main_upvr() -- Line 6756, Named "main"
		--[[ Upvalues[13]:
			[1]: var1039_upvr (readonly)
			[2]: var1040_upvw (read and write)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: var1041_upvr (readonly)
			[6]: magnitude_3_upvr (readonly)
			[7]: ReplicatedStorage_upvr (copied, readonly)
			[8]: arg4 (readonly)
			[9]: var1043_upvr (readonly)
			[10]: TweenService_upvr (copied, readonly)
			[11]: var1044_upvr (readonly)
			[12]: Debris_upvr (copied, readonly)
			[13]: arg9 (readonly)
		]]
		for i_88 = 1, var1039_upvr do
			local var1047 = var1040_upvw
			if not var1047 then
				var1047 = arg2
			end
			var1040_upvw = CFrame.new(arg2.p, arg3.p)
			if i_88 ~= var1039_upvr then
				var1040_upvw *= CFrame.new(math.random(var1041_upvr * -1, var1041_upvr), math.random(var1041_upvr * -1, var1041_upvr), i_88 * -1 * magnitude_3_upvr / var1039_upvr)
			else
				var1040_upvw *= CFrame.new(0, 0, i_88 * -1 * magnitude_3_upvr / var1039_upvr)
			end
			local magnitude = (var1047.p - var1040_upvw.p).magnitude
			local clone_6 = ReplicatedStorage_upvr.Models.Cylinder:Clone()
			clone_6.Parent = workspace
			clone_6.Color = arg4
			clone_6.Size = Vector3.new(magnitude, var1043_upvr, var1043_upvr)
			clone_6.CFrame = CFrame.new(var1047.p, var1040_upvw.p) * CFrame.new(0, 0, -0.5 * magnitude) * CFrame.Angles(0, (math.pi/2), 0)
			TweenService_upvr:Create(clone_6, TweenInfo.new(var1044_upvr), {
				Size = Vector3.new(magnitude, 0, 0);
			}):Play()
			Debris_upvr:AddItem(clone_6, var1044_upvr)
			wait(arg9 or 0.1)
		end
	end
	if arg10 then
		main_upvr()
		return true
	end
	spawn(function() -- Line 6784
		--[[ Upvalues[1]:
			[1]: main_upvr (readonly)
		]]
		main_upvr()
	end)
	return false
end
function module_6_upvr.setsOnFire(arg1, arg2) -- Line 6791
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 6. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 6. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 8. Error Block 11 start (CF ANALYSIS FAILED)
	do
		return true
	end
	-- KONSTANTERROR: [14] 8. Error Block 11 end (CF ANALYSIS FAILED)
end
function module_6_upvr.smokeBlock(arg1, arg2, arg3, arg4) -- Line 6798
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local clone_13_upvr = ReplicatedStorage_upvr.Models[arg3.."SmokeBlock"]:Clone()
	clone_13_upvr.Parent = workspace
	clone_13_upvr.Position = arg2
	if arg4 then
		clone_13_upvr.Emitter.Color = ColorSequence.new(arg4, arg4)
	end
	Debris_upvr:AddItem(clone_13_upvr, 4)
	delay(0.5, function() -- Line 6809
		--[[ Upvalues[1]:
			[1]: clone_13_upvr (readonly)
		]]
		clone_13_upvr.Emitter.Enabled = false
	end)
end
function module_6_upvr.DisableAllGuis(arg1, arg2, arg3) -- Line 6814
	if not arg3 then
		local var1061 = {"healthGUI", "chakraGUI", "skillGUI"}
	end
	for _, v_65 in ipairs(game.Players:GetChildren()) do
		if arg2 and v_65.Character and v_65.Character:FindFirstChild("Head") then
			for i_90 = 1, #var1061 do
				if v_65.Character.FakeHead:FindFirstChild(var1061[i_90]) then
					v_65.Character.FakeHead[var1061[i_90]].Enabled = false
				end
			end
		end
	end
end
function module_6_upvr.WaterExplode(arg1, arg2, arg3, arg4) -- Line 6829
	--[[ Upvalues[4]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	local clone_21_upvr = ReplicatedStorage_upvr.Models.WaterExplode1:Clone()
	local clone_17_upvr = ReplicatedStorage_upvr.Models.WaterExplode2:Clone()
	clone_21_upvr.Position = arg2
	clone_17_upvr.Position = arg2
	if arg3 then
		clone_21_upvr.Size = Vector3.new(14, 14, 14)
		clone_17_upvr.Size = Vector3.new(15, 11, 15)
		clone_17_upvr.Position += Vector3.new(0, 1.5, 0)
		Debris_upvr:AddItem(clone_17_upvr, 4)
		-- KONSTANTWARNING: GOTO [90] #65
	end
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 28. Error Block 15 start (CF ANALYSIS FAILED)
	if arg4 then
		clone_21_upvr.Size = Vector3.new(100, 100, 100)
		clone_17_upvr.Size = Vector3.new(110, 80, 110)
		clone_17_upvr.Position += Vector3.new(0, 3, 0)
		Debris_upvr:AddItem(clone_17_upvr, 30)
		TweenService_upvr:Create(clone_17_upvr, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 6), {
			Orientation = clone_17_upvr.Orientation + Vector3.new(0, 360, 0);
		}):Play()
	else
		Debris_upvr:AddItem(clone_17_upvr, 4)
	end
	clone_21_upvr.Parent = workspace
	clone_17_upvr.Parent = workspace
	module_6_upvr:playTempSound(ReplicatedStorage_upvr.LocalSounds.WaterHit:Clone(), clone_21_upvr)
	Debris_upvr:AddItem(clone_21_upvr, 4)
	TweenService_upvr:Create(clone_21_upvr, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
		CFrame = clone_21_upvr.CFrame * CFrame.Angles(0, 3.12413936106985, 0);
	}):Play()
	if not arg4 then
		TweenService_upvr:Create(clone_17_upvr, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
			Position = arg2 + Vector3.new(0, 2, 0);
			CFrame = clone_17_upvr.CFrame * CFrame.Angles(0, 3.12413936106985, 0);
		}):Play()
	end
	module_6_upvr:playTempSound(ReplicatedStorage_upvr.LocalSounds.WaterExplode:Clone(), clone_21_upvr)
	delay(1, function() -- Line 6864
		--[[ Upvalues[4]:
			[1]: clone_21_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: arg4 (readonly)
			[4]: clone_17_upvr (readonly)
		]]
		clone_21_upvr.Water1.Enabled = false
		clone_21_upvr.Water2.Enabled = false
		TweenService_upvr:Create(clone_21_upvr, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
			Transparency = 1;
			CFrame = clone_21_upvr.CFrame * CFrame.Angles(0, 3.12413936106985, 0);
		}):Play()
		if not arg4 then
			TweenService_upvr:Create(clone_17_upvr, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				CFrame = clone_17_upvr.CFrame * CFrame.Angles(0, 3.12413936106985, 0);
			}):Play()
		end
	end)
	-- KONSTANTERROR: [40] 28. Error Block 15 end (CF ANALYSIS FAILED)
end
function module_6_upvr.transparentChar(arg1, arg2, arg3) -- Line 6875
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_5, pairs_result2_2, pairs_result3_12 = pairs(arg2:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 35. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 35. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [50.8]
	-- KONSTANTERROR: [7] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_6_upvr.Fizzle(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 6913
	--[[ Upvalues[4]:
		[1]: module_6_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	local randint_5_upvr = math.random(3, 5)
	local var1079_upvr = arg5 or 0.4
	local var1080_upvr = arg7 or 0.6
	for _ = 1, arg6 or 5 do
		local cframe_upvr = CFrame.new(module_6_upvr:PointOnSphere(arg3 or 10) + arg2.p)
		local var1083_upvw
		local magnitude_2_upvr = (arg2.p - cframe_upvr.p).magnitude
		spawn(function() -- Line 6925
			--[[ Upvalues[11]:
				[1]: randint_5_upvr (readonly)
				[2]: var1083_upvw (read and write)
				[3]: arg2 (readonly)
				[4]: cframe_upvr (readonly)
				[5]: magnitude_2_upvr (readonly)
				[6]: ReplicatedStorage_upvr (copied, readonly)
				[7]: arg4 (readonly)
				[8]: var1079_upvr (readonly)
				[9]: TweenService_upvr (copied, readonly)
				[10]: var1080_upvr (readonly)
				[11]: Debris_upvr (copied, readonly)
			]]
			for i_92 = 1, randint_5_upvr do
				local var1087 = var1083_upvw
				if not var1087 then
					var1087 = arg2
				end
				var1083_upvw = CFrame.new(arg2.p, cframe_upvr.p) * CFrame.new(math.random(-1, 1), math.random(-1, 1), i_92 * magnitude_2_upvr / randint_5_upvr)
				local magnitude_4 = (var1087.p - var1083_upvw.p).magnitude
				local clone_8 = ReplicatedStorage_upvr.Models.Cylinder:Clone()
				clone_8.Parent = workspace
				clone_8.Color = arg4
				clone_8.Size = Vector3.new(magnitude_4, var1079_upvr, var1079_upvr)
				clone_8.CFrame = CFrame.new(var1087.p, var1083_upvw.p) * CFrame.new(0, 0, -0.5 * magnitude_4) * CFrame.Angles(0, (math.pi/2), 0)
				TweenService_upvr:Create(clone_8, TweenInfo.new(var1080_upvr), {
					Size = Vector3.new(magnitude_4, 0, 0);
				}):Play()
				Debris_upvr:AddItem(clone_8, var1080_upvr)
				wait(0.1)
			end
		end)
	end
end
function module_6_upvr.zetsuGroundEffect(arg1, arg2) -- Line 6946
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local clone_11_upvr = ServerStorage_upvr.Models.ZetsuGroundDust:Clone()
	clone_11_upvr.Parent = workspace
	clone_11_upvr.Position = arg2
	Debris_upvr:AddItem(clone_11_upvr, 1.9)
	delay(0.5, function() -- Line 6953
		--[[ Upvalues[1]:
			[1]: clone_11_upvr (readonly)
		]]
		clone_11_upvr.Attachment.Particle.Enabled = false
	end)
end
function module_6_upvr.zetsuGroundPoison(arg1, arg2) -- Line 6958
	--[[ Upvalues[3]:
		[1]: ServerStorage_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_41_upvr = ServerStorage_upvr.Models.ZetsuGroundPoison:Clone()
	clone_41_upvr.Parent = workspace
	clone_41_upvr.Position = arg2
	module_6_upvr:playTempSound(ServerStorage_upvr.ServerSounds.FourSecondsSmoke:Clone(), clone_41_upvr)
	Debris_upvr:AddItem(clone_41_upvr, 1.9)
	delay(0.5, function() -- Line 6966
		--[[ Upvalues[1]:
			[1]: clone_41_upvr (readonly)
		]]
		clone_41_upvr.Attachment.Particle.Enabled = false
	end)
end
function module_6_upvr.createThunderstorm(arg1, arg2) -- Line 6971
	--[[ Upvalues[6]:
		[1]: ServerStorage_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: BindableFunction_upvr (readonly)
		[5]: DataEvent_upvr (readonly)
		[6]: Debris_upvr (readonly)
	]]
	-- KONSTANTERROR: [48] 35. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 35. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 95 start (CF ANALYSIS FAILED)
	if not arg2 then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [48.4]
		if not nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [48.6]
			if not nil then
			end
			-- KONSTANTWARNING: GOTO [15] #11
		end
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 95 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 37. Error Block 83 start (CF ANALYSIS FAILED)
	local clone_19 = ServerStorage_upvr.Models.ThunderBrick:Clone()
	local Model_2_upvr = Instance.new("Model")
	Model_2_upvr.Parent = workspace
	Model_2_upvr.Name = "Thunderstorm"
	local clone_54 = clone_19:Clone()
	clone_54.Parent = Model_2_upvr
	clone_54.Position = arg2
	clone_54.CFrame = clone_54.CFrame
	TweenService_upvr:Create(clone_54, TweenInfo.new(20), {
		Transparency = 0;
		Size = Vector3.new(58, 58, 58);
	}):Play()
	Model_2_upvr.PrimaryPart = clone_54
	ServerStorage_upvr.ServerSounds.Thunder:Clone().Parent = clone_54
	clone_54.Thunder:Play()
	local var1190 = 7
	wait(5)
	for i_93 = 1, 3 do
		for i_94 = 1, var1190 do
			local clone_34 = clone_19:Clone()
			clone_34.Parent = Model_2_upvr
			clone_34.Position = clone_54.Position
			if i_93 <= 2 then
				clone_34.Name = "innerStorm"
			else
				clone_34.Name = "outerStorm"
			end
			clone_34.Parent = Model_2_upvr
			clone_34.CFrame *= CFrame.Angles(0, math.rad(360 / var1190 * i_94), 0)
			clone_34.CFrame += clone_34.CFrame.LookVector * ((0) + (40 - i_93 * 2) + math.random(1, 10))
			clone_34.CFrame *= CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			clone_34.CFrame = clone_54.CFrame
			TweenService_upvr:Create(clone_34, TweenInfo.new(10), {
				Transparency = 0 + i_93 / 20;
				Size = Vector3.new(60 + i_94, 60 + i_94, 60 + i_94);
				CFrame = clone_34.CFrame * CFrame.new(0, 0 - 5, 0);
			}):Play()
		end
		wait(5)
	end
	local tbl_7 = {}
	local tbl_35 = {}
	for _, v_66 in ipairs(Model_2_upvr:GetChildren()) do
		if v_66.Name == "innerStorm" then
			table.insert(tbl_7, v_66)
		elseif v_66.Name == "outerStorm" then
			table.insert(tbl_35, v_66)
		end
		v_66.Anchored = true
	end
	Model_2_upvr.PrimaryPart.AssemblyAngularVelocity = Model_2_upvr.PrimaryPart.CFrame.UpVector * 1
	local BodyVelocity = Instance.new("BodyVelocity")
	BodyVelocity.Parent = Model_2_upvr.PrimaryPart
	BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	BodyVelocity.Velocity = Vector3.new(0, 0, 0)
	wait(10)
	local var1200_upvw = true
	spawn(function() -- Line 7072
		--[[ Upvalues[2]:
			[1]: var1200_upvw (read and write)
			[2]: Model_2_upvr (readonly)
		]]
		while var1200_upvw == true and Model_2_upvr do
			Model_2_upvr:SetPrimaryPartCFrame(Model_2_upvr:GetPrimaryPartCFrame() * CFrame.fromEulerAnglesXYZ(0, 0.005, 0))
			wait()
		end
	end)
	for i_97 = 1, 40 do
		module_6_upvr:LineCreate(CFrame.new(tbl_7[math.random(1, #tbl_7)].Position + Vector3.new(0, -45, 0)), CFrame.new(tbl_35[math.random(1, #tbl_35)].Position + Vector3.new(0, -45, 0)), module_6_upvr.UI.BlueLightningColor, 15, math.random(3, 6), 1.1, 15)
		wait(math.random(1, 3))
		local var1212
		local function INLINED_33() -- Internal function, doesn't exist in bytecode
			local getRandomPlayer_result1_2 = (function() -- Line 7089, Named "getRandomPlayer"
				--[[ Upvalues[2]:
					[1]: Model_2_upvr (readonly)
					[2]: module_6_upvr (copied, readonly)
				]]
				local module_2 = {}
				for i_96, v_67 in ipairs(game.Players:GetChildren()) do
					if v_67.Character then
						if v_67.Character:FindFirstChild("HumanoidRootPart") then
							local Character_6 = v_67.Character
							local workspace_FindPartOnRay_result1, _ = workspace:FindPartOnRay(Ray.new(Character_6.HumanoidRootPart.Position, Vector3.new(0, 1000, 0)), Character_6)
							if workspace_FindPartOnRay_result1 and workspace_FindPartOnRay_result1.Parent == Model_2_upvr and module_6_upvr:getSettings(Character_6).BeingCarried.Value == "None" and not Character_6:FindFirstChild("ForceField") then
								if module_6_upvr:getSettings(Character_6).CurrentWeapon.Value ~= "Fist" then
									table.insert(module_2, v_67)
									table.insert(module_2, v_67)
									table.insert(module_2, v_67)
								else
									table.insert(module_2, v_67)
								end
							end
						end
					end
				end
				if 0 < #module_2 then
					i_96 = #module_2
					return module_2[math.random(1, i_96)]
				end
				return false
			end)()
			return getRandomPlayer_result1_2
		end
		if i_97 == math.random(1, 22) or i_97 == math.random(1, 22) or i_97 == math.random(1, 22) or i_97 == math.random(1, 22) or i_97 == math.random(23, 40) or i_97 == math.random(23, 40) or i_97 == math.random(23, 40) or INLINED_33() then
			local Character_3 = getRandomPlayer_result1_2.Character
			local CFrame_2 = Character_3.HumanoidRootPart.CFrame
			var1212 = CFrame.new(20, 40, 20)
			var1212 = CFrame_2 * CFrame.new(-20, -15, -20)
			local tbl_16 = {}
			var1212 = module_6_upvr
			local any_CastRay_result1_7, any_CastRay_result2 = module_6_upvr:CastRay(CFrame_2.Position, CFrame_2.Position - (CFrame_2 * CFrame.new(0, 10, 0)).p, Character_3)
			local clone_15 = ServerStorage_upvr.Models.LightningWarning:Clone()
			clone_15.Parent = workspace
			if any_CastRay_result1_7 then
				clone_15.Position = any_CastRay_result2
			else
				any_CastRay_result2 = CFrame_2.Position
				clone_15.Position = CFrame_2.Position + Vector3.new(0, -2.7999, 0)
			end
			TweenService_upvr:Create(clone_15.Decal, TweenInfo.new(0.75), {
				Transparency = 0.65;
			}):Play()
			wait(0.75)
			TweenService_upvr:Create(clone_15.Decal, TweenInfo.new(0.75), {
				Transparency = 1;
			}):Play()
			local _, workspace_FindPartOnRay_result2_3 = workspace:FindPartOnRay(Ray.new(Character_3.HumanoidRootPart.Position, Vector3.new(0, 1000, 0)), Character_3)
			repeat
				wait()
			until module_6_upvr:LineCreate(CFrame.new(workspace_FindPartOnRay_result2_3), CFrame.new(any_CastRay_result2 + Vector3.new(0, -5, 0)), module_6_upvr.UI.BlueLightningColor, 15, math.random(5, 8), 1.5, 20, 0.02, "RETURN")
			module_6_upvr:playTempSound(ServerStorage_upvr.ServerSounds.LightningStrike:Clone(), Character_3.PrimaryPart)
			for _, v_68 in pairs(game.Workspace:FindPartsInRegion3(module_6_upvr:createRegion3((CFrame_2 * var1212).p, var1212.p), nil, math.huge)) do
				if v_68.Parent and (game.Players:FindFirstChild(v_68.Parent.Name) or v_68.Parent:FindFirstChild("NPC")) or v_68.Parent:FindFirstChildWhichIsA("Humanoid") and module_6_upvr:searchInList(tbl_16, v_68.Parent.Name) == false then
					local Parent_3_upvr = v_68.Parent
					local any_getSettings_result1_2_upvr = module_6_upvr:getSettings(Parent_3_upvr)
					table.insert(tbl_16, Parent_3_upvr.Name)
					if any_getSettings_result1_2_upvr and any_getSettings_result1_2_upvr:FindFirstChild("Knocked") and any_getSettings_result1_2_upvr.Knocked.Value == true then
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [748.2]
						nil:Fire(game.Players:FindFirstChild(Parent_3_upvr.Name), "kill", Parent_3_upvr)
					else
						local any_Invoke_result1_2, any_Invoke_result2_upvr_2 = BindableFunction_upvr:Invoke(Parent_3_upvr, "hurtRequest")
						if not any_Invoke_result1_2 == true then
							DataEvent_upvr:FireClient(getRandomPlayer_result1_2, "shakeCam", 3)
							module_6_upvr:Fizzle(Parent_3_upvr.HumanoidRootPart.CFrame, 15, module_6_upvr.UI.BlueLightningColor, 1, 6, 0.5)
							if Parent_3_upvr:FindFirstChild("Humanoid") and not Parent_3_upvr:FindFirstChild("HeadCloak") then
								nil:Fire(Parent_3_upvr, "Damage", nil, var1212.Settings.ThunderStormDamage, "stopCarry", "Lightning")
								DataEvent_upvr:FireClient(getRandomPlayer_result1_2, "VisualAilment", "Blood")
								if not any_Invoke_result2_upvr_2 then
									module_6_upvr:getAnimation("StunnedKneeling", Parent_3_upvr.Humanoid):Play()
								end
								any_getSettings_result1_2_upvr.Stunned.Value = true
								any_getSettings_result1_2_upvr.StunID.Value = math.random(1, 999999)
								Character_3.Humanoid.WalkSpeed = 0
								local Value_7_upvr = any_getSettings_result1_2_upvr.StunID.Value
								delay(2, function() -- Line 7194
									--[[ Upvalues[6]:
										[1]: any_Invoke_result2_upvr_2 (readonly)
										[2]: module_6_upvr (copied, readonly)
										[3]: Parent_3_upvr (readonly)
										[4]: any_getSettings_result1_2_upvr (readonly)
										[5]: Value_7_upvr (readonly)
										[6]: DataEvent_upvr (copied, readonly)
									]]
									if not any_Invoke_result2_upvr_2 then
										module_6_upvr:stopAnimation("StunnedKneeling", module_6_upvr:getHumanoid(Parent_3_upvr))
									end
									if any_getSettings_result1_2_upvr.StunID.Value == Value_7_upvr then
										if game.Players:FindFirstChild(Parent_3_upvr.Name) then
											any_getSettings_result1_2_upvr.Stunned.Value = false
											DataEvent_upvr:FireClient(game.Players[Parent_3_upvr.Name], "EndStun")
										end
									end
								end)
							end
						end
					end
				end
			end
			Parent_3_upvr = 0
			any_getSettings_result1_2_upvr = 0
			any_Invoke_result2_upvr_2 = 0
			Value_7_upvr = 10
			any_getSettings_result1_2_upvr = CFrame_2 * CFrame.new(any_Invoke_result2_upvr_2, Value_7_upvr, 0)
			Parent_3_upvr = any_getSettings_result1_2_upvr.p
			local any_CastRay_result1_2, _ = module_6_upvr:CastRay((CFrame_2 * CFrame.new(Parent_3_upvr, any_getSettings_result1_2_upvr, -3)).p, CFrame_2.Position - Parent_3_upvr, Character_3)
			Parent_3_upvr = 500
			local any_getNearbyPlayers_result1_3 = module_6_upvr:getNearbyPlayers(CFrame_2.Position, Parent_3_upvr)
			Parent_3_upvr = 1
			for i_99 = Parent_3_upvr, #any_getNearbyPlayers_result1_3 do
				any_getSettings_result1_2_upvr = DataEvent_upvr
				any_Invoke_result2_upvr_2 = any_getNearbyPlayers_result1_3[i_99]
				Value_7_upvr = "generateDebris"
				any_getSettings_result1_2_upvr = any_getSettings_result1_2_upvr:FireClient
				any_getSettings_result1_2_upvr(any_Invoke_result2_upvr_2, Value_7_upvr, any_CastRay_result2, any_CastRay_result1_2, "LightningBlock", 3, 4.5)
				any_getSettings_result1_2_upvr = module_6_upvr
				any_Invoke_result2_upvr_2 = tbl_16
				Value_7_upvr = any_getNearbyPlayers_result1_3[i_99].Name
				any_getSettings_result1_2_upvr = any_getSettings_result1_2_upvr:searchInList(any_Invoke_result2_upvr_2, Value_7_upvr)
				if any_getSettings_result1_2_upvr == false then
					any_getSettings_result1_2_upvr = DataEvent_upvr
					any_Invoke_result2_upvr_2 = any_getNearbyPlayers_result1_3[i_99]
					Value_7_upvr = "shakeCam"
					any_getSettings_result1_2_upvr = any_getSettings_result1_2_upvr:FireClient
					any_getSettings_result1_2_upvr(any_Invoke_result2_upvr_2, Value_7_upvr, 2.5)
				end
			end
		end
		wait(math.random(1, 3))
	end
	Debris_upvr:AddItem(Model_2_upvr)
	var1200_upvw = false
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [937.5]
	nil.Occupied:Destroy()
	-- KONSTANTERROR: [50] 37. Error Block 83 end (CF ANALYSIS FAILED)
end
function module_6_upvr.awakeningEffects(arg1, arg2, arg3, arg4) -- Line 7235
	--[[ Upvalues[3]:
		[1]: Debris_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
	]]
	if arg2 == "Sharingan" then
		local ColorCorrectionEffect_upvr = Instance.new("ColorCorrectionEffect")
		ColorCorrectionEffect_upvr.Parent = game.Lighting
		Debris_upvr:AddItem(ColorCorrectionEffect_upvr, 1.6)
		TweenService_upvr:Create(ColorCorrectionEffect_upvr, TweenInfo.new(0.8), {
			TintColor = Color3.fromRGB(0, 0, 255);
		}):Play()
		delay(0.8, function() -- Line 7241
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: ColorCorrectionEffect_upvr (readonly)
			]]
			TweenService_upvr:Create(ColorCorrectionEffect_upvr, TweenInfo.new(0.8), {
				TintColor = Color3.fromRGB(255, 255, 255);
			}):Play()
			TweenService_upvr:Create(workspace.CurrentCamera, TweenInfo.new(0.8), {
				FieldOfView = 70;
			}):Play()
		end)
	else
		if arg2 == "MangekyoAwakening" then
			ColorCorrectionEffect_upvr = ReplicatedStorage_upvr.UI.Mangekyo:Clone()
			local var1262_upvr = ColorCorrectionEffect_upvr
			var1262_upvr.Parent = game.Lighting
			Debris_upvr:AddItem(var1262_upvr, 6)
			TweenService_upvr:Create(var1262_upvr, TweenInfo.new(1), {
				TintColor = Color3.fromRGB(255, 51, 37);
				Saturation = -0.2;
				Contrast = 0.2;
			}):Play()
			delay(3, function() -- Line 7250
				--[[ Upvalues[2]:
					[1]: TweenService_upvr (copied, readonly)
					[2]: var1262_upvr (readonly)
				]]
				TweenService_upvr:Create(workspace.CurrentCamera, TweenInfo.new(3), {
					FieldOfView = 70;
				}):Play()
				delay(2, function() -- Line 7252
					--[[ Upvalues[2]:
						[1]: TweenService_upvr (copied, readonly)
						[2]: var1262_upvr (copied, readonly)
					]]
					TweenService_upvr:Create(var1262_upvr, TweenInfo.new(1), {
						TintColor = Color3.fromRGB(255, 255, 255);
						Saturation = 0;
						Contrast = 0;
					}):Play()
				end)
			end)
			return
		end
		if arg2 == "Rinnegan" then
			var1262_upvr = Instance.new("ColorCorrectionEffect")
			local var1268_upvr = var1262_upvr
			var1268_upvr.Parent = game.Lighting
			Debris_upvr:AddItem(var1268_upvr, 1.6)
			TweenService_upvr:Create(var1268_upvr, TweenInfo.new(0.8), {
				TintColor = Color3.fromRGB(178, 111, 255);
				Brightness = 0.2;
			}):Play()
			delay(0.8, function() -- Line 7261
				--[[ Upvalues[2]:
					[1]: TweenService_upvr (copied, readonly)
					[2]: var1268_upvr (readonly)
				]]
				TweenService_upvr:Create(var1268_upvr, TweenInfo.new(0.8), {
					TintColor = Color3.fromRGB(255, 255, 255);
					Brightness = 0;
				}):Play()
				TweenService_upvr:Create(workspace.CurrentCamera, TweenInfo.new(0.8), {
					FieldOfView = 70;
				}):Play()
			end)
			return
		end
		if arg2 == "Byakugan" then
			var1268_upvr = arg4.byakuganEffects
			if var1268_upvr == true then
				var1268_upvr = Instance.new("ColorCorrectionEffect")
				local var1273_upvr = var1268_upvr
				var1273_upvr.Parent = game.Lighting
				Debris_upvr:AddItem(var1273_upvr, 1.6)
				TweenService_upvr:Create(var1273_upvr, TweenInfo.new(0.8), {
					Brightness = 0.25;
				}):Play()
				delay(0.8, function() -- Line 7271
					--[[ Upvalues[4]:
						[1]: TweenService_upvr (copied, readonly)
						[2]: var1273_upvr (readonly)
						[3]: arg3 (readonly)
						[4]: ReplicatedStorage_upvr (copied, readonly)
					]]
					TweenService_upvr:Create(workspace.CurrentCamera, TweenInfo.new(0.8), {
						FieldOfView = 70;
					}):Play()
					TweenService_upvr:Create(var1273_upvr, TweenInfo.new(0.8), {
						Brightness = 0;
					}):Play()
					if arg3 then
					else
						ReplicatedStorage_upvr.UI.Byakugan1:Clone().Parent = game.Lighting
						ReplicatedStorage_upvr.UI.Byakugan2:Clone().Parent = game.Lighting
					end
				end)
			end
		end
	end
end
module_6_upvr.Ailments = {
	Fire = {
		LastingTime = 15;
		Damage = 2.5;
	};
	BlackFire = {
		LastingTime = 5;
		Damage = 3;
	};
	PurpleFire = {
		LastingTime = 5;
		Damage = 2.5;
	};
	GreenFire = {
		LastingTime = 6;
		Damage = 2;
	};
	Poison = {
		InitialDamage = 4;
		LastingTime = 7;
		Damage = 1.5;
	};
	Earth = {
		LastingTime = 6;
	};
	Water = {
		LastingTime = 12;
		ChakraDrain = 2;
	};
	Bugs = {
		LastingTime = 4;
		ChakraDrain = 1;
	};
	Lightning = {
		LastingTime = 6;
	};
	Wind = {
		LastingTime = 7;
	};
	["Adamantine Seal"] = {
		LastingTime = 6;
	};
}
module_6_upvr.Injuries = {
	ArmorBreak = {
		Price = 15;
	};
	Blindness = {
		Price = 50;
	};
	["Fractured Ribs"] = {
		Price = 20;
	};
}
module_6_upvr.AllowedKeybinds = {'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'T', 'U', 'X', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '='}
module_6_upvr.Animations = {
	Jump = "5571390361";
	JumpLowPriority = "9612397138";
	DoubleJump = "8999165990";
	TripleJump = "5571403360";
	walk = "6256500765";
	Run = "5571412330";
	Landed = "9469184493";
	Climb = "";
	Sleep = "5571440576";
	Swimming = "6450202701";
	StunnedKneeling = "7189207090";
	BigBoyStunnedKneeling = "9128940032";
	SpoonExtraction = "11157770182";
	ElectrifiedWater = "7199416079";
	Clash = "7298826950";
	Jailed = "9180231789";
	Drowning = "10215338092";
	SlowClash = {
		ID = "7298826950";
		Speed = 0.45;
	};
	DeadOnFloor = "12413149695";
	RingView = "9390967188";
	HostageSit = "9971651842";
	YouMayPass = "10459105748";
	DoubleArmsAhead = "11204330767";
	Kirin = "17685181678";
	WipeFloat = "17716356281";
	bow = "5948677711";
	wave = "128777973";
	contemplate = "6045823576";
	relax = "5948675596";
	sunbathe = "5604340726";
	starjumps = "9196077324";
	teabag = "11158216667";
	lean = "8896884566";
	seated = "5637735218";
	handstand = "10115188659";
	GatesAwaken = "11158557827";
	RightChain = "10421843789";
	LeftChain = "10421849360";
	WildChains = "10447822001";
	LedgeJump = "7576048437";
	LedgeHold = "7576052278";
	Dodge1 = "7245849099";
	Dodge2 = "7245850855";
	Dodge3 = "7245870597";
	GroundSmash = "10493504189";
	FasterGroundSmash = "11273633183";
	HighQualGroundSmash = "11289531561";
	PunchHold = "11273409115";
	ThunderCloakIdle = "10048999245";
	LeafOpen = "10574557391";
	LeafClosed = "10574677716";
	LeafOpening = "10574622247";
	LeafClosing = "10574625999";
	ZetsuActivated = "10540500249";
	ZetsuDeactivated = "10540485982";
	ZetsuRise = "10550548285";
	ZetsuSink = "10550543163";
	ZetsuTeleport = "10550839818";
	ZetsuGround = "10551073686";
	AkatsukiCloakIdle = "10529714607";
	ButterflyIdle = "11272748721";
	WingsFlap = {
		ID = "11272836413";
		Speed = 3;
	};
	LoopedWingsFlight = {
		ID = "11272847892";
		Speed = 2;
	};
	PlayerFlightAnim = "11273119075";
	ForwardAirDash = {
		ID = "10909238240";
		Speed = 1.2;
	};
	ForwardDash = {
		ID = "5973235418";
		Speed = 1.2;
	};
	RightGroundDash = {
		ID = "5571446620";
		Speed = 1.2;
	};
	LeftGroundDash = {
		ID = "5571449043";
		Speed = 1.2;
	};
	BackGroundDash = {
		ID = "5571460706";
		Speed = 1.3;
	};
	AerialBackDash = {
		ID = "9837501917";
		Speed = 1.3;
	};
	BackAirDash = "5571466357";
	RightAirDash = "5571470710";
	LeftAirDash = "5571472126";
	Handsigns1 = "6895475638";
	Handsigns2 = "6895301791";
	Handsigns3 = "6895314148";
	Handsigns4 = "6895316402";
	HandsToTheGround = "6894770447";
	AirBlow = "6914805919";
	AirBlowUp = "9849419108";
	ChidoriStartUp = "7182296072";
	RasenganStartUp = "8193064185";
	ArmRunningForward = "7192025477";
	DoubleArmsRunningForward = "8211252917";
	LightningStream = "7193783109";
	QuirkArmPoint = "10930376912";
	ArmPull = "11159585258";
	GroundRipple = "7198878301";
	ArmLaunch = "7250960114";
	ArmsTogetherDown = "7255491372";
	ArmsTogetherDownLoop = "9908412402";
	ArmBlast = "7293816408";
	SelfPurify = "7862279706";
	DoubleHandWave = "8201236844";
	DoubleHandSway = "9885247576";
	RightHandWave = {
		ID = "9848611288";
		Speed = 1.5;
	};
	BlindingStrike = "8214031055";
	PalmRotation = "8580099842";
	SusanooStrike = "9495898067";
	HealingSusanooStrike = "11264106398";
	Pickpocket = "9763847329";
	ChakraSense = "9864206537";
	Extraction = "9916542210";
	Grapple = "9937511106";
	BlacksmithHit = "10518625936";
	PurpleArmouredSusanooIdle = "17767125233";
	PurpleArmouredSusanooLeftPunch = "17767291004";
	PurpleArmouredSusanooRightPunch = "17767238429";
	PurpleArmouredSusanooBlock = "17767358336";
	PurpleArmouredSusanooGrip = "17767702228";
	PurpleArmouredSusanooHeavyPunch = "17779771428";
	PurpleSusanooDownwardsArrowShot = "17779518261";
	PurpleArmouredSusanooGrab = "17783012117";
	PurpleSusanooIdle = "10796158505";
	PurpleSusanooLeftPunch = "10800056715";
	PurpleSusanooRightPunch = "10796199490";
	PurpleSusanooBlock = "10800169433";
	PurpleSusanooGrip = "10807432214";
	PurpleSusanooHeavyPunch = "10808739542";
	PurpleSusanooGrab = "10843139152";
	SharkLeft = "11266034156";
	SharkRight = "11266035217";
	SharkFinish = "11266032074";
	TwinStrike = "10014972099";
	SpearRam = "10015700319";
	HalberdSpin = "7300582359";
	ChainPull = "10069265035";
	GlidingSpin = "10075589617";
	HalberdChakraSlam = "10075486924";
	KickUp = "9840792947";
	KickDown = "9840824259";
	LotusKickUp = "11269833515";
	LotusAttacker = "11270146522";
	LotusVictim = "11269841765";
	KunaiHold = "7256537857";
	KunaiThrow = "7256553550";
	VerticalSlashWarmUp = "7282630228";
	VerticalSlash = "7282718093";
	VerticalSlashFinish = "7282749210";
	SharkIdle = "10085868701";
	KamuiWarp = "7285983182";
	EyeSkill = "7286352048";
	QuickDoublePunch = {
		ID = "8699136208";
		Speed = 3;
	};
	PalmsSetup = "8699113073";
	FloatIdle = "8135725003";
	PunchRightHyuga = {
		ID = "10539077679";
		Speed = 1;
	};
	UpPunchLeftHyuga = {
		ID = "10539084767";
		Speed = 1;
	};
	UpPunchRightHyuga = {
		ID = "10539095189";
		Speed = 1;
	};
	PunchLeftHyuga = {
		ID = "10539185713";
		Speed = 1;
	};
	DoubleKickFinishHyuga = {
		ID = "10539199134";
		Speed = 1;
	};
	PunchRight = {
		ID = "11330785444";
		Speed = 1.3;
	};
	UpPunchLeft = {
		ID = "11330787365";
		Speed = 1;
	};
	UpPunchRight = {
		ID = "11330792100";
		Speed = 1;
	};
	PunchLeft = {
		ID = "11330793406";
		Speed = 1;
	};
	DoubleKickFinish = {
		ID = "11330782198";
		Speed = 1;
	};
	FistBlock1 = "5571496466";
	FistBlock2 = "5571497691";
	FistBlock3 = "5571513127";
	FistHeavyAttack = "11330795390";
	FistAirHeavyAttack = "5571546692";
	RoundhouseKick = {
		ID = "8199221114";
		Speed = 1.15;
		Snap = true;
	};
	LeafWhirlWind = {
		ID = "8589703627";
		Speed = 1.15;
		Snap = true;
	};
	Whirlwind2 = {
		ID = "9983738250";
		Speed = 1;
		Snap = true;
	};
	TripleBarrageKick = {
		ID = "9984712923";
		Speed = 1;
		Snap = true;
	};
	BugsActivation = "11207371709";
	KunaiSpin = {
		ID = "9950654304";
		Speed = 1;
	};
	DynamicEntry = "9456787558";
	ThrustingStrike = "10560758096";
	Tai1 = {
		ID = "9983148415";
		Speed = 1;
	};
	Tai2 = {
		ID = "9983162439";
		Speed = 1;
	};
	Tai3 = {
		ID = "9983166602";
		Speed = 1;
	};
	Tai4 = {
		ID = "9983172825";
		Speed = 1;
	};
	Tai5 = {
		ID = "9983188492";
		Speed = 1;
	};
	Tai6 = {
		ID = "9983217745";
		Speed = 1;
	};
	Tai1V2 = {
		ID = "9983152807";
		Speed = 1;
	};
	AsumaiIdle = "7376541872";
	RightHook = "7913320330";
	LeftHook = "7913461925";
	DoubleHook = "7913495084";
	FlyingHook = "7913611566";
	AsumaiHeavy = "5571540174";
	AsumaiBlock1 = "5571496466";
	AsumaiBlock2 = "5571497691";
	AsumaiBlock3 = "5571513127";
	FloatAsumaiIdle = "8133709281";
	FloatRightHook = "8133713023";
	FloatLeftHook = "8133715179";
	FloatDoubleHook = "8133717870";
	FloatAsumaiHeavy = "8144877208";
	FloatAsumaiBlock1 = "8133723901";
	FloatAsumaiBlock2 = "8133723901";
	FloatAsumaiBlock3 = "8133723901";
	SwordSlash1 = {
		ID = "6329769727";
		Speed = 1;
	};
	SwordSlash2 = {
		ID = "6329779012";
		Speed = 1;
	};
	SwordSlashBackHand1 = {
		ID = "6329790578";
		Speed = 1;
	};
	SwordSlashBackHand2 = {
		ID = "6329802298";
		Speed = 1;
	};
	SwordSlashSpinFinish = {
		ID = "6329827227";
		Speed = 1;
	};
	SwordBlock1 = "5571603911";
	SwordBlock2 = "5571607199";
	SwordBlock3 = "6881533315";
	SwordHeavyAttack = "6329840310";
	SwordAirHeavyAttack = "6329881782";
	SwordSheathe = "6888801249";
	SwordUnsheathe = "6888788310";
	FloatSwordSlash1 = {
		ID = "8119546012";
		Speed = 1;
	};
	FloatSwordSlash2 = {
		ID = "8119547835";
		Speed = 1;
	};
	FloatSwordSlashBackHand1 = {
		ID = "8119549336";
		Speed = 1;
	};
	FloatSwordSlashBackHand2 = {
		ID = "8119551866";
		Speed = 1;
	};
	FloatSwordSlashSpinFinish = {
		ID = "8119553405";
		Speed = 1;
	};
	FloatSwordBlock1 = "8119557997";
	FloatSwordBlock2 = "8119557997";
	FloatSwordBlock3 = "8119557997";
	FloatSwordHeavyAttack = "8119556146";
	GreatswordSwing1 = {
		ID = "6904029998";
		Speed = 1.03;
	};
	GreatswordSwing2 = {
		ID = "6904312276";
		Speed = 1.03;
	};
	GreatswordSwing3 = {
		ID = "6904161298";
		Speed = 1.03;
	};
	GreatswordIdle = "7293708896";
	GreatswordRunningIdle = "7300952342";
	GreatswordBlock1 = "6903876397";
	GreatswordBlock2 = "6903933278";
	GreatswordBlock3 = "6903933278";
	GreatswordHeavyAttack = "6904596529";
	GreatswordAirHeavyAttack = "";
	GreatswordSheathe = "6905212824";
	GreatswordUnsheathe = "6905208667";
	TaijutsuIdle = "10109881189";
	FloatGreatswordSwing1 = {
		ID = "8133316730";
		Speed = 1.03;
	};
	FloatGreatswordSwing2 = {
		ID = "8133320806";
		Speed = 1.03;
	};
	FloatGreatswordSwing3 = {
		ID = "8133322512";
		Speed = 1.03;
	};
	FloatGreatswordIdle = "8133314728";
	FloatGreatswordRunningIdle = "8133314728";
	FloatGreatswordBlock1 = "8133323843";
	FloatGreatswordBlock2 = "8133323843";
	FloatGreatswordBlock3 = "8133323843";
	FloatGreatswordHeavyAttack = "8133312095";
	KunaiSlash1 = {
		ID = "6358713733";
		Speed = 1;
	};
	KunaiSlash2 = {
		ID = "6358858990";
		Speed = 1;
	};
	KunaiSlash3 = {
		ID = "6360652809";
		Speed = 1;
	};
	KunaiSlash4 = {
		ID = "6360685736";
		Speed = 1;
	};
	KunaiSlash5 = {
		ID = "6362993598";
		Speed = 2.5;
	};
	KunaiBlock1 = "6363138951";
	KunaiBlock2 = "6363147928";
	KunaiHeavyAttack = {
		ID = "6360969229";
		Speed = 1;
	};
	KunaiAirHeavyAttack = "6362979537";
	KunaiGripAnim = "6363182088";
	FloatKunaiSlash1 = {
		ID = "8133279863";
		Speed = 1;
	};
	FloatKunaiSlash2 = {
		ID = "8133281172";
		Speed = 1;
	};
	FloatKunaiSlash3 = {
		ID = "8133282828";
		Speed = 1;
	};
	FloatKunaiSlash4 = {
		ID = "8133284392";
		Speed = 1;
	};
	FloatKunaiSlash5 = {
		ID = "8133286093";
		Speed = 1;
	};
	FloatKunaiBlock1 = "8133278303";
	FloatKunaiBlock2 = "8133278303";
	HalberdAttack1 = {
		ID = "7275410799";
		Speed = 1.25;
	};
	HalberdAttack2 = {
		ID = "7275470913";
		Speed = 1.25;
	};
	HalberdAttack3 = {
		ID = "7275583556";
		Speed = 1.25;
	};
	HalberdAttack4 = {
		ID = "7275616852";
		Speed = 1.25;
	};
	HalberdIdle = "7275353604";
	HalberdRunningIdle = "7276090020";
	HalberdBlock1 = "7275693573";
	HalberdBlock2 = "7275898634";
	HalberdBlock3 = "7275755133";
	HalberdHeavyAttack = {
		ID = "7275651023";
		Speed = 1.2;
	};
	HalberdAirHeavyAttack = "7275679606";
	HalberdSheathe = "7275866969";
	HalberdUnsheathe = "7275862916";
	FloatHalberdAttack1 = {
		ID = "8144835234";
		Speed = 1;
	};
	FloatHalberdAttack2 = {
		ID = "8144836780";
		Speed = 1;
	};
	FloatHalberdAttack3 = {
		ID = "8144837730";
		Speed = 1;
	};
	FloatHalberdAttack4 = {
		ID = "8144839863";
		Speed = 1;
	};
	FloatHalberdIdle = "8144833153";
	FloatHalberdRunningIdle = "8144833153";
	FloatHalberdBlock1 = "8144826018";
	FloatHalberdBlock2 = "8144826018";
	FloatHalberdBlock3 = "8144826018";
	FloatHalberdHeavyAttack = {
		ID = "8144818762";
		Speed = 1;
	};
	BlockBreak = "5571624319";
	JerkFront = "9717750818";
	JerkBack = "9717937953";
	JerkLeft = "9718336986";
	JerkRight = "9718338354";
	StompGrip = "5571642213";
	StompGripVictim = "5571673429";
	SwordChestGrip = "5571659123";
	PickUp = "5571685778";
	Carrying = "5571692581";
	BeingCarried = "5571715460";
	ToolHold = "5608053781";
	ToolHoldLeft = "7230830164";
	SkillHold = "7182797024";
	DoubleSkillHold = "8211263620";
	HeadEquip = "6870499442";
	BodyEquip = "7776173574";
	HeadbandEquip = "6873089156";
	KeyUnlock = "8527752893";
	Eating1 = "5571721327";
	Eating2 = "5992570942";
	Slurping1 = "5629775207";
	Rest = "5611200641";
	Slide = "5993272947";
	ArmPullActivate = "6506529739";
	CloneThrow = "9284920294";
	FlyingClone = "9284944400";
	CloneGrab = "9292018838";
	DeprivedDamsel = "8232472866";
	HandsInfront = "5614799402";
	HandsBehind = "5614807357";
	SittingCrossLegged = "5637735218";
	SittingExposed = "6636021824";
	Float = "5994010592";
	BIGSittingLegsForward = "6034162145";
	Contemplate = "6045823576";
	TableWonderingSit = "6838387545";
	AnxiousStanding = "7582024016";
	CoolLean = "8896884566";
	Starjumps = "5379772545";
	MoldingIdle = "9163255734";
	BedLie = "9904310300";
	BedBound = "9907787307";
	WandererCloakIdle = "9165239687";
	WandererCloakRun = "9165243886";
	WandererCloakFall = "9165246086";
	ReanimatedCloakIdle = "9805071991";
	ReanimatedCloakRun = "9805046433";
	BarbarianRightSlam = "6038040720";
	BarbarianLeftSlam = "6038041916";
	BarbarianJumpStart = "6037130025";
	BarbarianJumpLoop = "6037150007";
	BarbarianLand = "6037303584";
	PetrifyingRoar = "6070787172";
	HidingCrate = "6971409195";
	CrateRun = "6999985623";
	CrateActivation = "6971457609";
	CrateSpinAttack = "6999923160";
	CrateLaserAttack = "7000004462";
	["Tail Swish"] = "9954860601";
	["Full Body Swish"] = "9955456879";
	["Snake Strike"] = "9954915471";
	["Snake Spit"] = "9954909571";
	SnakeSleep = "9955303492";
	QuickSprint = "9520229103";
	LavarossaActivation = "8035214662";
	FootStomp = "8042376763";
	LavaroldyIdle = "9717283241";
	ClubSwingUp = "9632957414";
	ClubSwingUp2 = "9655732291";
	ClubRotate = "9656290960";
	KamuiLeap = "9985568656";
	KamuiClubSlam = "9985587928";
	DisassembledIdle = "10236416717";
	ChakraKnightAssemble = "10141148704";
	ChakraKnightCombatIdle = "10141158650";
	ChakraKnightWalk = "10141162195";
	ChakraKnightSwing = "10141181072";
	ChakraKnightSpearRaise = "10141185243";
	ChakraKnightStab = "10141233349";
	ChakraKnightSlam = "10229183096";
	ActualSlam = "10237409592";
	SharinganActivation = "7033073535";
	RageAwaken = "8789227433";
}
module_6_upvr.FruitRarity = {
	Pear = 10;
	Orange = 9;
	Banana = 8;
	Apple = 6;
	Mango = 4;
	["Alluring Apple"] = 2;
}
module_6_upvr.TrinketRarity = {
	["Silver Bracelet"] = 70;
	["Silver Ring"] = 66;
	["Silver Enclosed Ring"] = 62;
	["Silver Necklace"] = 60;
	["Gold Bracelet"] = 58;
	["Gold Ring"] = 56;
	["Gold Enclosed Ring"] = 54;
	["Gold Necklace"] = 52;
	["Flame Gem"] = 5;
	["Aqua Gem"] = 5;
	["Spark Gem"] = 5;
	["Poison Gem"] = 5;
	["Ground Gem"] = 5;
	["Wind Gem"] = 5;
	["Black Flame Gem"] = 4;
	["Ring Of Infusion"] = 2;
	["Ring Of Remedy"] = 2;
	["Ring Of Resistance"] = 2;
	["Ring Of Nourishment"] = 2;
	["Ring Of Dexterity"] = 1;
	["Ring Of Favor"] = 1;
	["Ring Of Vitality"] = 1;
	["Ring Of The Neoncat"] = 1;
	["Ring Of A Helping Hand"] = 1;
	["Bloodbite Ring"] = 1;
}
module_6_upvr.GemRarity = {
	["Flame Gem"] = 5;
	["Aqua Gem"] = 5;
	["Spark Gem"] = 5;
	["Poison Gem"] = 5;
	["Ground Gem"] = 5;
	["Wind Gem"] = 5;
	["Black Flame Gem"] = 4;
}
module_6_upvr.WaterRarity = {
	Seaweed = 5;
}
function module_6_upvr.generateValue(arg1, arg2, arg3, arg4) -- Line 8145
	local any = Instance.new(arg2 or "StringValue")
	any.Name = arg3 or "valName"
	if arg4 then
		any.Value = arg4
	end
	return any
end
function module_6_upvr.AwakeningEffect(arg1, arg2, arg3, arg4, arg5) -- Line 8155
	--[[ Upvalues[5]:
		[1]: DataEvent_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: ServerStorage_upvr (readonly)
		[4]: Debris_upvr (readonly)
		[5]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 49 start (CF ANALYSIS FAILED)
	if not arg5 then
		DataEvent_upvr:FireClient(game.Players[arg2.Name], "VisualEffect", "Sharingan")
		TweenService_upvr:Create(arg2.FakeHead.NormalPupil, TweenInfo.new(1), {
			Transparency = 1;
		}):Play()
		local clone_4 = ServerStorage_upvr.App.Pupil[arg4]:Clone()
		clone_4.Parent = arg2.FakeHead
		clone_4.Transparency = 1
		TweenService_upvr:Create(clone_4, TweenInfo.new(1), {
			Transparency = 0;
		}):Play()
	end
	local clone_43_upvr = ServerStorage_upvr.Effects.SharinganEffectBlock:Clone()
	clone_43_upvr.Parent = arg2.Head
	local clone_23_upvr = ServerStorage_upvr.Effects.SharinganEffectBlock:Clone()
	clone_23_upvr.Parent = arg2.Head
	local Weld_8 = Instance.new("Weld")
	Weld_8.Part0 = arg2.Head
	Weld_8.Part1 = clone_43_upvr
	Weld_8.Parent = clone_43_upvr
	Weld_8.C0 = CFrame.new(0.22, 0.09, -0.6)
	Weld_8.C0 *= CFrame.Angles(0, math.pi, 0)
	local Weld_5 = Instance.new("Weld")
	Weld_5.Part0 = arg2.Head
	Weld_5.Part1 = clone_23_upvr
	Weld_5.Parent = clone_23_upvr
	Weld_5.C0 = CFrame.new(-0.22, 0.09, -0.6)
	Weld_5.C0 *= CFrame.Angles(0, math.pi, 0)
	clone_43_upvr.Sharingan:Play()
	if arg4:find("Eternal") then
		local clone_42 = ServerStorage_upvr.Effects.EyeTrails.LeftAttachment0:Clone()
		local clone_36 = ServerStorage_upvr.Effects.EyeTrails.LeftAttachment1:Clone()
		local clone_44 = ServerStorage_upvr.Effects.EyeTrails.RightAttachment0:Clone()
		local clone_24 = ServerStorage_upvr.Effects.EyeTrails.RightAttachment1:Clone()
		local clone_33 = ServerStorage_upvr.Effects.EyeTrails.Trail:Clone()
		local clone_20 = ServerStorage_upvr.Effects.EyeTrails.Trail:Clone()
		clone_42.Parent = arg2.Head
		clone_36.Parent = arg2.Head
		clone_44.Parent = arg2.Head
		clone_24.Parent = arg2.Head
		clone_33.Parent = arg2.Head
		clone_20.Parent = arg2.Head
		clone_20.Attachment0 = clone_42
		clone_20.Attachment1 = clone_36
		clone_33.Attachment0 = clone_44
		clone_33.Attachment1 = clone_24
		clone_42.Name = "EternalEffect"
		clone_36.Name = "EternalEffect"
		clone_44.Name = "EternalEffect"
		clone_24.Name = "EternalEffect"
		clone_20.Name = "EternalEffect"
		clone_33.Name = "EternalEffect"
	end
	TweenService_upvr:Create(Weld_8, TweenInfo.new(1), {
		C0 = CFrame.Angles(0, math.pi, -3.490658503988659);
	}):Play()
	TweenService_upvr:Create(Weld_5, TweenInfo.new(1), {
		C0 = CFrame.Angles(0, math.pi, 3.490658503988659);
	}):Play()
	delay(1, function() -- Line 8223
		--[[ Upvalues[3]:
			[1]: clone_43_upvr (readonly)
			[2]: clone_23_upvr (readonly)
			[3]: Debris_upvr (copied, readonly)
		]]
		for _, v_69 in pairs(clone_43_upvr:GetDescendants()) do
			if v_69.ClassName == "ParticleEmitter" then
				v_69.Enabled = false
			end
		end
		for _, v_70 in pairs(clone_23_upvr:GetDescendants()) do
			if v_70.ClassName == "ParticleEmitter" then
				v_70.Enabled = false
			end
		end
		Debris_upvr:AddItem(clone_43_upvr, 1)
		Debris_upvr:AddItem(clone_23_upvr, 1)
	end)
	do
		return
	end
	-- KONSTANTERROR: [14] 12. Error Block 49 end (CF ANALYSIS FAILED)
end
function module_6_upvr.DeawakeningEffect(arg1, arg2, arg3, arg4) -- Line 8433
	--[[ Upvalues[5]:
		[1]: module_6_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
		[4]: DataEvent_upvr (readonly)
		[5]: ServerStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 133 start (CF ANALYSIS FAILED)
	if arg2.FakeHead:FindFirstChild("PainRinneganEyes") then
		TweenService_upvr:Create(arg2.FakeHead.PainRinneganEyes, TweenInfo.new(1), {
			Transparency = 1;
		}):Play()
		Debris_upvr:AddItem(arg2.FakeHead.PainRinneganEyes, 1)
	end
	TweenService_upvr:Create(arg2.FakeHead.NormalPupil, TweenInfo.new(1), {
		Transparency = 0;
	}):Play()
	for _, v_71 in ipairs(arg2.FakeHead:GetChildren()) do
		if v_71.ClassName == "Decal" and v_71.Name:find("Eyes") and not v_71.Name:find("Rinnegan") then
			TweenService_upvr:Create(v_71, TweenInfo.new(1), {
				Transparency = 0;
			}):Play()
		end
	end
	do
		return
	end
	-- KONSTANTERROR: [10] 9. Error Block 133 end (CF ANALYSIS FAILED)
end
function module_6_upvr.StartEvent(arg1, arg2) -- Line 8597
	--[[ Upvalues[4]:
		[1]: TweenService_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	if arg2 == "Search For A Flaming Heart" then
		local Bob = workspace:FindFirstChild("Bob")
		for _, v_72 in ipairs(Bob.Inner:GetChildren()) do
			if v_72.Name == "OuterLine" then
				TweenService_upvr:Create(v_72, TweenInfo.new(1), {
					Transparency = 0;
				}):Play()
			end
		end
		wait(1)
		for _, v_73 in ipairs(Bob.Inner:GetChildren()) do
			if v_73.Name == "InnerLine" or v_73.Name == "OuterLine" or v_73.Name == "Heart" then
				TweenService_upvr:Create(v_73, TweenInfo.new(1), {
					Transparency = 1;
				}):Play()
			end
		end
		for _, v_74 in ipairs(Bob:GetChildren()) do
			if v_74.Name == "Eyes" then
				TweenService_upvr:Create(v_74, TweenInfo.new(1), {
					Transparency = 1;
				}):Play()
			end
		end
		wait(1)
		for _, v_75 in ipairs(Bob.Inner:GetChildren()) do
			if v_75.Name == "InnerLine" or v_75.Name == "OuterLine" or v_75.Name == "Heart" then
				v_75.Color = Color3.fromRGB(250, 82, 105)
				v_75.Material = "Neon"
				if v_75.Name == "Heart" then
					TweenService_upvr:Create(v_75, TweenInfo.new(5), {
						Transparency = 0;
					}):Play()
				else
					TweenService_upvr:Create(v_75, TweenInfo.new(5), {
						Transparency = 0.5;
					}):Play()
				end
			end
		end
		for _, v_76 in ipairs(Bob:GetChildren()) do
			if v_76.Name == "Eyes" then
				v_76.Color = Color3.fromRGB(250, 82, 105)
				v_76.Material = "Neon"
				TweenService_upvr:Create(v_76, TweenInfo.new(5), {
					Transparency = 0.5;
				}):Play()
			end
		end
	elseif arg2 == "TheDeadRunner" then
		local ipairs_result1_4, ipairs_result2_32, ipairs_result3_13 = ipairs(workspace.Waters:GetChildren())
		for _, v_87 in ipairs_result1_4, ipairs_result2_32, ipairs_result3_13 do
			v_76 = v_87:FindFirstChild("Scarlet")
			if v_76 then
				v_76 = true
				v_87.CanCollide = v_76
			end
		end
		ipairs_result1_4 = nil
		local var1454 = ipairs_result1_4
		if workspace:FindFirstChild("The Scarlet Slowcoach") then
			var1454 = workspace["The Scarlet Slowcoach"].HumanoidRootPart.CFrame
			workspace["The Scarlet Slowcoach"]:Destroy()
		end
		local clone_29_upvr = ReplicatedStorage_upvr.Models["The Scarlet Slowcoach"]:Clone()
		local Humanoid_upvr = clone_29_upvr:WaitForChild("Humanoid")
		clone_29_upvr.Parent = workspace
		clone_29_upvr.HumanoidRootPart.CFrame = var1454
		local any_getAnimation_result1_2_upvr = module_6_upvr:getAnimation("Run", Humanoid_upvr)
		any_getAnimation_result1_2_upvr:Play()
		local any_CreatePath_result1_upvr = game:GetService("PathfindingService"):CreatePath()
		local var1459_upvw
		local var1460_upvw
		local var1461_upvw
		local var1462_upvw
		local function followPath_upvr(arg1_13) -- Line 8669, Named "followPath"
			--[[ Upvalues[13]:
				[1]: any_CreatePath_result1_upvr (readonly)
				[2]: clone_29_upvr (readonly)
				[3]: var1459_upvw (read and write)
				[4]: var1460_upvw (read and write)
				[5]: var1461_upvw (read and write)
				[6]: followPath_upvr (readonly)
				[7]: var1462_upvw (read and write)
				[8]: Humanoid_upvr (readonly)
				[9]: any_getAnimation_result1_2_upvr (readonly)
				[10]: module_6_upvr (copied, readonly)
				[11]: Debris_upvr (copied, readonly)
				[12]: ReplicatedStorage_upvr (copied, readonly)
				[13]: TweenService_upvr (copied, readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(function() -- Line 8671
				--[[ Upvalues[3]:
					[1]: any_CreatePath_result1_upvr (copied, readonly)
					[2]: clone_29_upvr (copied, readonly)
					[3]: arg1_13 (readonly)
				]]
				any_CreatePath_result1_upvr:ComputeAsync(clone_29_upvr.PrimaryPart.Position, arg1_13)
			end)
			if pcall_result1 and any_CreatePath_result1_upvr.Status == Enum.PathStatus.Success then
				var1459_upvw = any_CreatePath_result1_upvr:GetWaypoints()
				var1460_upvw = any_CreatePath_result1_upvr.Blocked:Connect(function(arg1_14) -- Line 8680
					--[[ Upvalues[4]:
						[1]: var1461_upvw (copied, read and write)
						[2]: var1460_upvw (copied, read and write)
						[3]: followPath_upvr (copied, readonly)
						[4]: arg1_13 (readonly)
					]]
					if var1461_upvw <= arg1_14 then
						var1460_upvw:Disconnect()
						followPath_upvr(arg1_13)
					end
				end)
				if not var1462_upvw then
					var1462_upvw = Humanoid_upvr.MoveToFinished:Connect(function(arg1_15) -- Line 8692
						--[[ Upvalues[11]:
							[1]: var1461_upvw (copied, read and write)
							[2]: var1459_upvw (copied, read and write)
							[3]: Humanoid_upvr (copied, readonly)
							[4]: var1462_upvw (copied, read and write)
							[5]: var1460_upvw (copied, read and write)
							[6]: any_getAnimation_result1_2_upvr (copied, readonly)
							[7]: clone_29_upvr (copied, readonly)
							[8]: module_6_upvr (copied, readonly)
							[9]: Debris_upvr (copied, readonly)
							[10]: ReplicatedStorage_upvr (copied, readonly)
							[11]: TweenService_upvr (copied, readonly)
						]]
						if arg1_15 and var1461_upvw < #var1459_upvw then
							var1461_upvw += 1
							Humanoid_upvr:MoveTo(var1459_upvw[var1461_upvw].Position)
						else
							var1462_upvw:Disconnect()
							var1460_upvw:Disconnect()
							any_getAnimation_result1_2_upvr:Stop()
							clone_29_upvr.Torso.Blood.Enabled = true
							clone_29_upvr.Torso.FatBlood.Enabled = true
							module_6_upvr:createBodyVelocity(clone_29_upvr.HumanoidRootPart, (clone_29_upvr.HumanoidRootPart.Position - (clone_29_upvr.HumanoidRootPart.CFrame * CFrame.new(0, -100, 0)).p).unit, 50, 0.2, "DashBV", Vector3.new(0, 100000, 0), "Reduce")
							Debris_upvr:AddItem(clone_29_upvr, 5)
							local clone_26 = ReplicatedStorage_upvr.Models.Shark:Clone()
							clone_26.Parent = workspace
							clone_26.CFrame = workspace.SharkSpot.CFrame
							clone_26.Sound:Play()
							TweenService_upvr:Create(clone_26, TweenInfo.new(1), {
								CFrame = clone_26.CFrame * CFrame.new(0, 0, 100);
							}):Play()
							wait(0.2)
							Humanoid_upvr.Health = 0
							wait(0.8)
							clone_26.Anchored = false
							Debris_upvr:AddItem(clone_26, 1)
						end
					end)
				end
				var1461_upvw = 2
				Humanoid_upvr:MoveTo(var1459_upvw[var1461_upvw].Position)
			else
				warn("Path not computed!", pcall_result2)
			end
		end
		followPath_upvr(workspace.ScarletSlowcoachFailedEnd.Position)
	end
end
function module_6_upvr.hitBoxCreate(arg1, arg2, arg3, arg4, arg5) -- Line 8735
	local Part_5 = Instance.new("Part")
	Part_5.Anchored = true
	Part_5.CanTouch = true
	Part_5.CanCollide = false
	Part_5.Massless = true
	Part_5.Transparency = 1
	if arg5 then
		Part_5.Shape = arg5
		if arg5 == Enum.PartType.Cylinder then
			Part_5.CFrame *= CFrame.Angles(0, 0, (-math.pi/2))
		end
	end
	Part_5.Parent = workspace.Debris
	Part_5.Material = Enum.Material.Plastic
	Part_5.Name = "Hitbox"
	Part_5.CFrame = arg2
	Part_5.Size = Vector3.new(math.abs(arg3.p.X - arg4.p.X), math.abs(arg3.p.Y - arg4.p.Y), math.abs(arg3.p.Z - arg4.p.Z))
	Part_5.Position = ((arg2 * arg3).p + (arg2 * arg4).p) / 2
	Part_5.CollisionGroup = "Hitbox"
	return Part_5
end
function module_6_upvr.getCookingWaterTotal(arg1, arg2) -- Line 8761
	local var1478
	for _, v_77 in ipairs(arg2:GetChildren()) do
		if v_77.ClassName ~= "Sound" then
			var1478 += v_77.Value
		end
	end
	return var1478
end
function module_6_upvr.addFruit(arg1, arg2, arg3) -- Line 8771
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local Parent = arg2.Parent
	if module_6_upvr:getCookingWaterTotal(arg2) == 0 then
		module_6_upvr:TweenObject(arg2, {
			Position = arg2.Position + Vector3.new(0, 0.10000, 0);
		}, 1)
		Parent.Emitter.Steam1.Enabled = true
		Parent.Emitter.Steam2.Enabled = true
	elseif module_6_upvr:getCookingWaterTotal(arg2) == 1 then
		module_6_upvr:TweenObject(arg2, {
			Position = arg2.Position + Vector3.new(0, 0.10000, 0);
		}, 1)
	elseif module_6_upvr:getCookingWaterTotal(arg2) == 2 then
		module_6_upvr:TweenObject(arg2, {
			Position = arg2.Position + Vector3.new(0, 0.10000, 0);
		}, 1)
	elseif module_6_upvr:getCookingWaterTotal(arg2) == 3 then
		module_6_upvr:TweenObject(arg2, {
			Position = arg2.Position + Vector3.new(0, 0.10000, 0);
		}, 1)
	end
	if Parent.mostRecent.Value == arg3 then
		module_6_upvr:TweenObject(arg2, {
			Color = Color3.new(math.min(1, Parent.currentColor.Value.R * 1.1), math.min(1, Parent.currentColor.Value.G * 1.1), math.min(1, Parent.currentColor.Value.B * 1.1));
		}, 1)
		Parent.currentColor.Value = Color3.new(math.min(1, Parent.currentColor.Value.R * 1.1), math.min(1, Parent.currentColor.Value.G * 1.1), math.min(1, Parent.currentColor.Value.B * 1.1))
	else
		module_6_upvr:TweenObject(arg2, {
			Color = module_6_upvr.Items[arg3].CookingColor;
		}, 1)
		Parent.currentColor.Value = module_6_upvr.Items[arg3].CookingColor
	end
	if arg2:FindFirstChild(arg3) then
		arg2[arg3].Value = arg2[arg3].Value + 1
	else
		local NumberValue_2 = Instance.new("NumberValue")
		NumberValue_2.Name = arg3
		NumberValue_2.Value = 1
		NumberValue_2.Parent = arg2
	end
	Parent.mostRecent.Value = arg3
end
function module_6_upvr.checkRecipe(arg1, arg2, arg3) -- Line 8809
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if game:GetService("RunService"):IsServer() then
		local var1540
		if arg3 then
			var1540 = nil
			for i_109, v_78 in next, require(ServerStorage_upvr.ServerManager).Recipes do
				local var1541
				for i_110, v_79 in next, v_78 do
					if arg3:FindFirstChild(i_110) and arg3[i_110].Value == v_79 then
					else
					end
				end
				if nil == false and 0 + v_79 == module_6_upvr:getCookingWaterTotal(arg3) then
					var1540 = i_109
				end
			end
			for _, v_80 in ipairs(arg3:GetChildren()) do
				if v_80.ClassName ~= "Sound" then
					v_80:Destroy()
				end
			end
			if var1540 then
				return var1540
			end
		end
	end
	return false
end
module_6_upvr.Items = {
	["Akatsuki Robes"] = {
		ID = "10924803419";
		Type = "";
		Animation = "";
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.08, 0);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		LostOnDeath = true;
		Description = "A mysterious artifact.";
		MaxHold = 1;
		Droppable = false;
	};
	Chicken = {
		ID = "5526820471";
		Type = "Consumable";
		ExtraInfo = "Food";
		FoodCounters = 3;
		SalePrice = 6;
		Animation = "Eating1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(-0.1, -1.06, 0);
			C0_Angles = CFrame.Angles(0, (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		Cookable = true;
		CookingColor = Color3.fromRGB(255, 153, 28);
		LostOnDeath = true;
		Description = "Tasty snack that restores food counters.";
		Buyabble = true;
	};
	Ramen = {
		ID = "6656248718";
		Type = "Consumable";
		ExtraInfo = "Food";
		FoodCounters = 5;
		SalePrice = 10;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Tasty meal that restores food counters.";
		Buyabble = true;
	};
	["Chickenanga Meat Bowl"] = {
		ID = "6886885033";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 8;
		SalePrice = 20;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Tasty meal that restores food counters.";
	};
	["Apparange Fruit Bowl"] = {
		ID = "6656247255";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 7;
		SalePrice = 16;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Tasty meal that restores food counters.";
	};
	["Tangerina Fruit Bowl"] = {
		ID = "6656248396";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 8;
		SalePrice = 15;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Tasty meal that restores food counters.";
	};
	["Manganana Fruit Bowl"] = {
		ID = "6656247624";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 9;
		SalePrice = 15;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Tasty meal that restores food counters.";
	};
	["Pumpkinana Fruit Bowl"] = {
		ID = "11639207784";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 9;
		SalePrice = 20;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Tasty meal that restores food counters and buffs speed temporarilty.";
		MaxHold = 10;
	};
	["Pearapple Fruit Bowl"] = {
		ID = "6656248048";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 7;
		SalePrice = 14;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Tasty meal that restores food counters.";
	};
	["All Star Fruit Bowl"] = {
		ID = "6874976278";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 20;
		JumpCounters = 10;
		SalePrice = 30;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = false;
		MaxHold = 1;
		Description = "Tasty meal that restores health and chakra to max.";
	};
	["Saltwater Seaweed Bowl"] = {
		ID = "6887188283";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 0;
		SalePrice = 1;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Spawn = "Water";
		Droppable = true;
		LostOnDeath = true;
		Description = "A not so tasty meal.";
	};
	Apple = {
		ID = "5526821264";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 3;
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 2;
		Weld = {
			C0 = CFrame.new(0, -1.3, -0.1);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.new(0.6313725490196078, 0.13725490196078433, 0.13725490196078433);
		Droppable = true;
		LostOnDeath = true;
		Description = "A tasty snack that can be cooked or sold.";
	};
	["Alluring Apple"] = {
		ID = "17684711150";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 3;
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 4;
		Weld = {
			C0 = CFrame.new(0, -1.3, -0.1);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.new(0.6666666666666666, 0.6666666666666666, 0.6666666666666666);
		Droppable = true;
		LostOnDeath = true;
		Description = "A snack that temporarily hides your prescence from some enemies.";
	};
	["Alluring Fruit Bowl"] = {
		ID = "17684725643";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 8;
		SalePrice = 20;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A meal that temporarily hides your prescence from some enemies.";
	};
	Pear = {
		ID = "5947190893";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 1;
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 1;
		Weld = {
			C0 = CFrame.new(0, -1.15, -0.1);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.new(0.06666666666666667, 0.45098039215686275, 0.17647058823529413);
		Droppable = true;
		LostOnDeath = true;
		Description = "A tasty snack that can be cooked or sold.";
	};
	Banana = {
		ID = "5947190031";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 2;
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 1;
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), (-math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.new(0.6196078431372549, 0.6039215686274509, 0.16862745098039217);
		Droppable = true;
		LostOnDeath = true;
		Description = "A tasty snack that can be cooked or sold.";
	};
	Orange = {
		ID = "5947190615";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 2;
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 2;
		Weld = {
			C0 = CFrame.new(0, -1.2, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.new(0.7294117647058823, 0.4823529411764706, 0.2);
		Droppable = true;
		LostOnDeath = true;
		Description = "A tasty snack that can be cooked or sold.";
	};
	Mango = {
		ID = "5947190287";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 2;
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 3;
		Weld = {
			C0 = CFrame.new(0, -1.3, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles((math.pi/2), 0, 0);
		};
		CookingColor = Color3.new(0.8117647058823529, 0.5294117647058824, 0.13333333333333333);
		Droppable = true;
		LostOnDeath = true;
		Description = "A tasty snack that can be cooked or sold.";
	};
	Pumpkin = {
		ID = "11639149080";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 2;
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 3;
		Weld = {
			C0 = CFrame.new(0, -1.3, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles((math.pi/2), 0, 0);
		};
		CookingColor = Color3.fromRGB(150, 93, 24);
		Droppable = true;
		LostOnDeath = true;
		Description = "A tasty snack that can be cooked or sold.";
	};
	["Grounds Key"] = {
		ID = "8722769066";
		Type = "Key";
		Animation = "KeyUnlock";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.9, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles(math.pi, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Old key. You may find some uses for it in the training grounds area.";
		Buyabble = true;
	};
	["Desolated Key"] = {
		ID = "8722770053";
		Type = "Key";
		Animation = "KeyUnlock";
		HoldingAnimation = "ToolHold";
		SalePrice = 20;
		Weld = {
			C0 = CFrame.new(0, -1.9, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles(math.pi, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Old key. You may find some uses for it in the desolated dunes area.";
		Buyabble = true;
	};
	["Skeleton Key"] = {
		ID = "";
		Type = "Key";
		Animation = "KeyUnlock";
		HoldingAnimation = "ToolHold";
		SalePrice = 20;
		Weld = {
			C0 = CFrame.new(0, -1.9, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles(math.pi, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Old key. You may find some uses for it in various locations.";
	};
	Cookbook = {
		ID = "10361152941";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.15, 0);
			C0_Angles = CFrame.Angles(math.pi, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A recipe collection book";
	};
	["Ayrui Affinity"] = {
		ID = "11163520468";
		Type = "Misc";
		Animation = "";
		SalePrice = 0;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.35, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Symbol of proficiency in your clan's abilities";
	};
	["Hoshigaki Affinity"] = {
		ID = "11163518681";
		Type = "Misc";
		Animation = "";
		SalePrice = 0;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.35, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Symbol of proficiency in your clan's abilities";
	};
	["Uzumaki Affinity"] = {
		ID = "11163519726";
		Type = "Misc";
		Animation = "";
		SalePrice = 0;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.35, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Symbol of proficiency in your clan's abilities";
	};
	["Ring Schematics"] = {
		ID = "11639167608";
		Type = "Misc";
		Animation = "";
		SalePrice = 90;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.15, -0.8);
			C0_Angles = CFrame.Angles(0, (math.pi/2), (-math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to craft a stronger ring";
		MaxHold = 5;
		Buyabble = true;
		Droppable = true;
	};
	["Kunai Schematics"] = {
		ID = "";
		Type = "Misc";
		Animation = "";
		SalePrice = 50;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles(0, (math.pi/2), (math.pi/2));
			C1_Angles = CFrame.Angles((math.pi/2), 0, 0);
		};
		Description = "Used to craft a kunai.";
		MaxHold = 3;
		Buyabble = true;
		Droppable = true;
	};
	["Cursed Schematics"] = {
		ID = "";
		Type = "Misc";
		Animation = "";
		SalePrice = 75;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -2, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to craft cursed weapons.";
		MaxHold = 1;
		Droppable = false;
	};
	["Infernal Schematics"] = {
		ID = "";
		Type = "Misc";
		Animation = "";
		SalePrice = 75;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -2, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), (math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to craft infernal weapons.";
		MaxHold = 1;
		Droppable = false;
	};
	["Greatsword Schematics"] = {
		ID = "10361143375";
		Type = "Misc";
		Animation = "";
		SalePrice = 50;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.8, -0.5);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to craft a greatsword.";
		MaxHold = 3;
		Droppable = true;
	};
	["Sword Schematics"] = {
		ID = "10361140510";
		Type = "Misc";
		Animation = "";
		SalePrice = 50;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.15, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to craft a sword.";
		MaxHold = 3;
		Droppable = true;
	};
	["Chef's Kiss"] = {
		ID = "10925183680";
		Type = "Misc";
		Animation = "";
		SalePrice = 50;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A sign that your skill has caught the chef's eye.";
		Buyabble = true;
	};
	Snakeskin = {
		ID = "10925200820";
		Type = "Misc";
		Animation = "";
		SalePrice = 50;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A material known for its healing attributes";
	};
	["Barbarit Wraps"] = {
		ID = "11156020512";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 35;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Rags worn by Barbarit The Rose";
	};
	["Mangekyo Eyes"] = {
		ID = "11242510768";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Extracted mangekyo eyes";
		Droppable = true;
		LostOnDeath = true;
		MaxHold = 1;
	};
	["Sharingan Eyes"] = {
		ID = "10924835061";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Extracted sharingan eyes";
		Droppable = true;
		LostOnDeath = true;
		MaxHold = 1;
	};
	["Byakugan Eyes"] = {
		ID = "10924830958";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Extracted byakugan eyes";
		Droppable = true;
		LostOnDeath = true;
		MaxHold = 1;
	};
	["Rinnegan Eyes"] = {
		ID = "11156009893";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Extracted rinnegan eyes";
		Droppable = false;
		LostOnDeath = true;
		MaxHold = 1;
	};
	Switchpowder = {
		ID = "";
		Type = "Misc";
		Animation = "";
		SalePrice = 10;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Ability to change certain features.";
		Droppable = true;
		LostOnDeath = true;
	};
	["Training Bells"] = {
		ID = "8722715060";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1, 0.1);
			C0_Angles = CFrame.Angles((-math.pi/2), 1.3089969389957472, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A training item.";
	};
	["Sealing Bells"] = {
		ID = "8722722183";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1, 0.1);
			C0_Angles = CFrame.Angles((-math.pi/2), 1.3089969389957472, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A training item marked with a sealing formula.";
		Droppable = true;
		LostOnDeath = true;
		MaxHold = 5;
	};
	["Broken Leaf Armor"] = {
		ID = "8722712597";
		Type = "Trinket";
		SalePrice = 10;
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A broken piece of armor.";
	};
	["Broken Biyo Armor"] = {
		ID = "10048709777";
		Type = "Trinket";
		SalePrice = 15;
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A broken piece of armor.";
	};
	["Broken Mello Armor"] = {
		ID = "10458592268";
		Type = "Trinket";
		SalePrice = 15;
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A broken piece of armor.";
	};
	["Hashirama Cells"] = {
		ID = "11639243346";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.5, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(math.pi, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Fragmented cells from a legendary Shinobi";
		MaxHold = 1;
	};
	["Extraction Spoon"] = {
		ID = "11242652553";
		Type = "Misc";
		SalePrice = 30;
		Animation = "SpoonExtraction";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.06, -0.15);
			C0_Angles = CFrame.Angles(3.0543261909900767, (math.pi/2), 0);
			C1_Angles = CFrame.Angles(math.pi, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A spoon imbued with sealing jutsu";
		MaxHold = 10;
	};
	["Parkour Scroll"] = {
		ID = "8582006277";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Combat Scroll"] = {
		ID = "8582006277";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Cloning Scroll"] = {
		ID = "";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Lightning Scroll"] = {
		ID = "8789136282";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Healing Scroll"] = {
		ID = "9480423710";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Flame Scroll"] = {
		ID = "";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Fighter's Wraps"] = {
		ID = "11272168715";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 5;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Summoning Scroll"] = {
		ID = "";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 40;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "An item that contains summoning information.";
		Droppable = true;
	};
	["Earth Scroll"] = {
		ID = "";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
		MaxHold = 1;
	};
	["Chakra Scroll"] = {
		ID = "8582006277";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Sealing Scroll"] = {
		ID = "8582006277";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Wind Scroll"] = {
		ID = "8582006277";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Lava Horn"] = {
		ID = "10361137546";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 50;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0.1, -1.15, -0.1);
			C0_Angles = CFrame.Angles((-math.pi/2), -2.356194490192345, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A proof of training item.";
	};
	["Biyo Relic"] = {
		ID = "10924807159";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 25;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.15, 0);
			C0_Angles = CFrame.Angles(0, 0, (math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Mello Relic"] = {
		ID = "10924837998";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 35;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.15, 0);
			C0_Angles = CFrame.Angles(0, 0, (math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Frozen Relic"] = {
		ID = "";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 65;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.15, 0);
			C0_Angles = CFrame.Angles(0, 0, (math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A proof of training item.";
	};
	["Life Up Fruit"] = {
		ID = "6874854383";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		LifeForceAddition = 20;
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 60;
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.new(0.06666666666666667, 0.45098039215686275, 0.17647058823529413);
		Droppable = true;
		LostOnDeath = true;
		CannotBeSoldInBulk = true;
		Description = "A fruit that restores life force upon consumption.";
		MaxHold = 3;
	};
	["Fruit Of Forgetfulness"] = {
		ID = "11239212617";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 40;
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.fromRGB(255, 112, 133);
		Droppable = true;
		LostOnDeath = true;
		CannotBeSoldInBulk = true;
		Description = "A fruit that resets jutsu proficiency.";
		MaxHold = 3;
	};
	["Chakra Fruit"] = {
		ID = "8144391738";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		Animation = "Eating2";
		HoldingAnimation = "ToolHold";
		SalePrice = 100;
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.new(0.06666666666666667, 0.45098039215686275, 0.17647058823529413);
		Droppable = false;
		LostOnDeath = true;
		CannotBeSoldInBulk = true;
		Description = "A bloodline-altering artifact.";
		MaxHold = 1;
	};
	["Flame Gem"] = {
		ID = "6887459132";
		Type = "Gem";
		ExtraInfo = "Infusion";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "An item that can be infused into most weapons.";
		MaxHold = 20;
	};
	["Black Flame Gem"] = {
		ID = "10529181353";
		Type = "Gem";
		ExtraInfo = "Infusion";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "An item that can be infused into most weapons.";
		MaxHold = 20;
	};
	["Aqua Gem"] = {
		ID = "6887459990";
		Type = "Gem";
		ExtraInfo = "Infusion";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "An item that can be infused into most weapons.";
		MaxHold = 20;
	};
	["Spark Gem"] = {
		ID = "8144526742";
		Type = "Gem";
		ExtraInfo = "Infusion";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "An item that can be infused into most weapons.";
		MaxHold = 20;
	};
	["Poison Gem"] = {
		ID = "10924875330";
		Type = "Gem";
		ExtraInfo = "Infusion";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "An item that can be infused into most weapons.";
		MaxHold = 20;
	};
	["Ground Gem"] = {
		ID = "6887462240";
		Type = "Gem";
		ExtraInfo = "Infusion";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "An item that can be infused into most weapons.";
		MaxHold = 20;
	};
	["Wind Gem"] = {
		ID = "6887463895";
		Type = "Gem";
		ExtraInfo = "Infusion";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "An item that can be infused into most weapons.";
		MaxHold = 20;
	};
	["Ghostly Bracelet"] = {
		ID = "8011520572";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 0;
		Weld = {
			C0 = CFrame.new(0, -1.37, 0);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		Description = "A cold bracelet with an even colder feel to its touch.";
		MaxHold = 1;
	};
	["Silver Bracelet"] = {
		ID = "5965583425";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 2;
		Weld = {
			C0 = CFrame.new(0, -1.37, 0);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A trinket that can be sold for ryo.";
	};
	["Silver Necklace"] = {
		ID = "5965583248";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 5;
		Weld = {
			C0 = CFrame.new(0, -1.04, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A trinket that can be sold for ryo.";
	};
	["Silver Ring"] = {
		ID = "5965583646";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 3;
		Weld = {
			C0 = CFrame.new(0, -1.19, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A trinket that can be sold for ryo.";
	};
	["Silver Enclosed Ring"] = {
		ID = "5965583809";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 4;
		Weld = {
			C0 = CFrame.new(0, -1.14, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A trinket that can be sold for ryo.";
	};
	["Gold Bracelet"] = {
		ID = "5949023095";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 4;
		Weld = {
			C0 = CFrame.new(0, -1.37, 0);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A trinket that can be sold for ryo.";
	};
	["Gold Necklace"] = {
		ID = "5949023217";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 7;
		Weld = {
			C0 = CFrame.new(0, -1.015, 0.4);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A trinket that can be sold for ryo.";
	};
	["Gold Ring"] = {
		ID = "5949023388";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 5;
		Weld = {
			C0 = CFrame.new(0, -1.19, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A trinket that can be sold for ryo.";
	};
	["Gold Enclosed Ring"] = {
		ID = "5965582961";
		Type = "Trinket";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 6;
		Weld = {
			C0 = CFrame.new(0, -1.14, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A trinket that can be sold for ryo.";
	};
	["Crimson Ring"] = {
		ID = "";
		Type = "";
		Animation = "";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.14, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "A ring only worn by clan chiefs.";
	};
	["Ring Of The Neoncat"] = {
		ID = "10523698723";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 15;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Negates fall damage";
		MaxHold = 10;
	};
	["Bloodbite Ring"] = {
		ID = "11266494382";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 15;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces Blood Build-up by 40%";
		MaxHold = 10;
		UpgradedVersion = "Bloodbite Ring +1";
	};
	["Bloodbite Ring +1"] = {
		ID = "11266494382";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 25;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces Blood Build-up by 50%";
		MaxHold = 10;
		UpgradedVersion = "Bloodbite Ring +2";
	};
	["Bloodbite Ring +2"] = {
		ID = "11266494382";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 35;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces Blood Build-up by 60%";
		MaxHold = 10;
		UpgradedVersion = "Bloodbite Ring +3";
	};
	["Bloodbite Ring +3"] = {
		ID = "11266494382";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 50;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces Blood Build-up by 70%";
		MaxHold = 5;
		UpgradedVersion = "Bloodbite Ring +4";
	};
	["Bloodbite Ring +4"] = {
		ID = "11266494382";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 75;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces Blood Build-up by 80%";
		MaxHold = 3;
	};
	["Ring Of Favor"] = {
		ID = "10073628532";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 15;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts health by 10HP";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Favor +1";
	};
	["Ring Of Favor +1"] = {
		ID = "10073628532";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 25;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts health by 17HP";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Favor +2";
	};
	["Ring Of Favor +2"] = {
		ID = "10073628532";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 35;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts health by 25HP";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Favor +3";
	};
	["Ring Of Favor +3"] = {
		ID = "10073628532";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 50;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts health by 35HP";
		MaxHold = 5;
		UpgradedVersion = "Ring Of Favor +4";
	};
	["Ring Of Favor +4"] = {
		ID = "10073628532";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		SalePrice = 75;
		BodyPart = "Left Arm";
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts health by 45HP";
		MaxHold = 3;
	};
	["Ring Of Infusion"] = {
		ID = "10073664636";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 15;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Increases infusion time by 15 seconds";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Infusion +1";
	};
	["Ring Of Infusion +1"] = {
		ID = "10073664636";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 25;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Increases infusion time by 30 seconds";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Infusion +2";
	};
	["Ring Of Infusion +2"] = {
		ID = "10073664636";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 35;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Increases infusion time by 45 seconds";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Infusion +3";
	};
	["Ring Of Infusion +3"] = {
		ID = "10073664636";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 50;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Increases infusion time by 60 seconds";
		MaxHold = 5;
		UpgradedVersion = "Ring Of Infusion +4";
	};
	["Ring Of Infusion +4"] = {
		ID = "10073664636";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 75;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Increases infusion time by 75 seconds";
		MaxHold = 3;
	};
	["Ring Of Remedy"] = {
		ID = "10073623084";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 15;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Improves healing abilities output by 10%";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Remedy +1";
	};
	["Ring Of Remedy +1"] = {
		ID = "10073623084";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 25;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Improves healing abilities output by 20%";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Remedy +2";
	};
	["Ring Of Remedy +2"] = {
		ID = "10073623084";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 35;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Improves healing abilities output by 32%";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Remedy +3";
	};
	["Ring Of Remedy +3"] = {
		ID = "10073623084";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 50;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Improves healing abilities output by 45%";
		MaxHold = 5;
		UpgradedVersion = "Ring Of Remedy +4";
	};
	["Ring Of Remedy +4"] = {
		ID = "10073623084";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 75;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Improves healing abilities output by 55%";
		MaxHold = 3;
	};
	["Ring Of Resistance"] = {
		ID = "10073637270";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 15;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces all ailment damage by 20%";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Resistance +1";
	};
	["Ring Of Resistance +1"] = {
		ID = "10073637270";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 25;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces all ailment damage by 30%";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Resistance +2";
	};
	["Ring Of Resistance +2"] = {
		ID = "10073637270";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 35;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces all ailment damage by 41%";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Resistance +3";
	};
	["Ring Of Resistance +3"] = {
		ID = "10073637270";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 50;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces all ailment damage by 53%";
		MaxHold = 5;
		UpgradedVersion = "Ring Of Resistance +4";
	};
	["Ring Of Resistance +4"] = {
		ID = "10073637270";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 75;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Reduces all ailment damage by 60%";
		MaxHold = 3;
	};
	["Ring Of Nourishment"] = {
		ID = "10073656320";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 15;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Using consumables will not slow you down";
		MaxHold = 10;
	};
	["Ring Of Vitality"] = {
		ID = "10073651066";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 15;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts total chakra by 15";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Vitality +1";
	};
	["Ring Of Vitality +1"] = {
		ID = "10073651066";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 25;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts total chakra by 25";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Vitality +2";
	};
	["Ring Of Vitality +2"] = {
		ID = "10073651066";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 35;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts total chakra by 35";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Vitality +3";
	};
	["Ring Of Vitality +3"] = {
		ID = "10073651066";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 50;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts total chakra by 45";
		MaxHold = 5;
		UpgradedVersion = "Ring Of Vitality +4";
	};
	["Ring Of Vitality +4"] = {
		ID = "10073651066";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 75;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Boosts total chakra by 55";
		MaxHold = 3;
	};
	["Ring Of A Helping Hand"] = {
		ID = "10528264719";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 15;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Gives 0.6s of invincibility after being ragdolled";
		MaxHold = 10;
		UpgradedVersion = "Ring Of A Helping Hand +1";
	};
	["Ring Of A Helping Hand +1"] = {
		ID = "10528264719";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 25;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Gives 0.9s of invincibility after being ragdolled";
		MaxHold = 10;
		UpgradedVersion = "Ring Of A Helping Hand +2";
	};
	["Ring Of A Helping Hand +2"] = {
		ID = "10528264719";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 35;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Gives 1.2s of invincibility after being ragdolled";
		MaxHold = 10;
		UpgradedVersion = "Ring Of A Helping Hand +3";
	};
	["Ring Of A Helping Hand +3"] = {
		ID = "10528264719";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 50;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Gives 1.5s of invincibility after being ragdolled";
		MaxHold = 5;
		UpgradedVersion = "Ring Of A Helping Hand +4";
	};
	["Ring Of A Helping Hand +4"] = {
		ID = "10528264719";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 75;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Gives 2s of invincibility after being ragdolled";
		MaxHold = 3;
	};
	["Ring Of Dexterity"] = {
		ID = "10584713328";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 15;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Improves jutsu casting speed";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Dexterity +1";
	};
	["Ring Of Dexterity +1"] = {
		ID = "10073643744";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 25;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Greatly improves jutsu casting speed";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Dexterity +2";
	};
	["Ring Of Dexterity +2"] = {
		ID = "10073643744";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 35;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Immensely improves jutsu casting speed";
		MaxHold = 10;
		UpgradedVersion = "Ring Of Dexterity +3";
	};
	["Ring Of Dexterity +3"] = {
		ID = "10073643744";
		Type = "Ring";
		Animation = "RingView";
		HoldingAnimation = "ToolHoldLeft";
		BodyPart = "Left Arm";
		SalePrice = 50;
		Weld = {
			C0 = CFrame.new(0, -1.09, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.42, -0.88, 0);
			C0_Angles = CFrame.Angles(math.pi, 0, (-math.pi/2));
		};
		WeldPart = "Right Arm";
		Droppable = true;
		Description = "Very Immensly improves jutsu casting speed";
		MaxHold = 5;
	};
	["Worm Stone"] = {
		ID = "";
		Type = "";
		Animation = "";
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		LostOnDeath = true;
		Description = "A mysterious spawn from the sand worm.";
	};
	["Basalt Stone"] = {
		ID = "";
		Type = "";
		Animation = "";
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		LostOnDeath = true;
		Description = "A mysterious stone from Biyo Bay";
	};
	["Arkoromo's Blessing"] = {
		ID = "8528044293";
		Type = "";
		Animation = "";
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "An item that protects you and your ryo from enemies who wish to end your life.";
	};
	["Reanimated Soul"] = {
		ID = "10420074818";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 30;
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Soul of a fallen reanimation.";
		Droppable = true;
	};
	["Memory Soul"] = {
		ID = "17602146417";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 30;
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Passes some of your experience onto your next character.";
		Droppable = true;
	};
	["Progression Soul"] = {
		ID = "17602147796";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 30;
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Shows some character experience data.";
		Droppable = true;
	};
	["Mashed Up Cells"] = {
		ID = "11760800933";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 2;
		SalePrice = 1;
		Animation = "Eating1";
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.3, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		CookingColor = Color3.fromRGB(200, 200, 200);
		Droppable = true;
		LostOnDeath = true;
		Description = "A fallen Zetsu's remains";
		MaxHold = 10;
	};
	["Chakra Crops"] = {
		ID = "10924817115";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		FoodCounters = 0;
		SalePrice = 1;
		Animation = "Eating1";
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.07, -0.3);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles((math.pi/2), 0, 0);
		};
		CookingColor = Color3.fromRGB(50, 85, 165);
		Droppable = true;
		LostOnDeath = true;
		Description = "Chakra runs deep in these crops.";
	};
	["Bolive Crops"] = {
		ID = "10924811904";
		Type = "Consumable";
		ExtraInfo = "Fruit";
		SalePrice = 1;
		FoodCounters = 0;
		Animation = "Eating1";
		HoldingAnimation = "ToolHold";
		BodyPart = "Right Arm";
		Weld = {
			C0 = CFrame.new(0, -1.07, -0.3);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles((math.pi/2), 0, 0);
		};
		CookingColor = Color3.fromRGB(165, 126, 63);
		Droppable = true;
		LostOnDeath = true;
		Description = "Olive-infused crops grown in the Fort Mello Compound.";
	};
	["Bolive Soup"] = {
		ID = "9247129810";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 4;
		SalePrice = 25;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A very tasty meal.";
		MaxHold = 10;
	};
	["Chakra Soup"] = {
		ID = "9247128957";
		Type = "Consumable";
		ExtraInfo = "FruitBowl";
		FoodCounters = 4;
		SalePrice = 25;
		Animation = "Slurping1";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A very tasty meal.";
		MaxHold = 10;
	};
	Chakrabone = {
		ID = "6509579101";
		Type = "Consumable";
		ExtraInfo = "";
		Animation = "ArmPullActivate";
		ActionTime = 2.5;
		ActionEndingTime = 1.1;
		BlockedByDanger = true;
		StopMovement = true;
		HoldingAnimation = "ToolHold";
		SalePrice = 15;
		AdditionalRequirements = {};
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Contains a strong link to chakra points.";
		Buyabble = true;
	};
	["Chakra Shard"] = {
		ID = "6634507203";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, (math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to learn new elements and skills.";
	};
	["Chakra Shaaard"] = {
		ID = "6634507203";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.05, 0);
			C0_Angles = CFrame.Angles((math.pi/2), 0, (math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to improve your game and not be trash at hsh.";
	};
	["Chakra Fragments"] = {
		ID = "6635420276";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.03, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to learn new elements and skills.";
		MaxHold = 40;
	};
	["Cursed Fragments"] = {
		ID = "11911532919";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.03, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to exchange for event items.";
		MaxHold = 40;
	};
	["Infernal Fragments"] = {
		ID = "15187922212";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.03, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Used to exchange for event items.";
		MaxHold = 40;
	};
	["InnKeeper's Letter"] = {
		ID = "6843082302";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.03, 0);
			C0_Angles = CFrame.Angles(math.pi, (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Contains an important message, careful not to soak it.";
	};
	["Soaked InnKeeper's Letter"] = {
		ID = "6843082907";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.03, 0);
			C0_Angles = CFrame.Angles(math.pi, (math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Description = "Contained an important message, should not have soaked it.";
	};
	Seaweed = {
		ID = "6887297179";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.03, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		Cookable = true;
		CookingColor = Color3.fromRGB(37, 132, 97);
		LostOnDeath = true;
		Description = "A plant that grows on the sea bed.";
	};
	Gloweed = {
		ID = "11760742618";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.03, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		Cookable = true;
		CookingColor = Color3.fromRGB(37, 132, 97);
		LostOnDeath = true;
		Description = "A plant that grows on the sea bed.";
	};
	["Unlit Torch"] = {
		ID = "6501408517";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.08, -0.2);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Just a piece of wood.";
	};
	Torch = {
		ID = "6501408997";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		AdditionalRequirements = {};
		Weld = {
			C0 = CFrame.new(0, -1.08, -0.2);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A guiding light in the dark.";
		Buyabble = true;
	};
	Bowl = {
		ID = "6104255182";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 3;
		AdditionalRequirements = {};
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Buyabble = true;
	};
	["Water Bowl"] = {
		ID = "6104255750";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A bowl filled with water.";
	};
	["Freshwater Bowl"] = {
		ID = "6656246414";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.6, 0);
			C0_Angles = CFrame.Angles(-1.4835298641951802, 0.17453292519943295, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A bowl filled with fresh water.";
	};
	["Flaming Heart"] = {
		ID = "";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 90;
		Weld = {
			C0 = CFrame.new(0, -1.2, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		LostOnDeath = false;
		Description = "A heart made of flames.";
		Buyabble = true;
	};
	["Chakra Heart"] = {
		ID = "10924820422";
		Type = "FakeSellable";
		Animation = "";
		SalePrice = 30;
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.2, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		LostOnDeath = false;
		Droppable = true;
		Description = "A heart made of chakra.";
	};
	["Kamui Essence"] = {
		ID = "10924852383";
		Type = "Misc";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 0;
		Weld = {
			C0 = CFrame.new(0, -1.5, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "A remnant of portal teleportation.";
	};
	["Redsmith's Mold"] = {
		ID = "9952353338";
		Type = "FakeSellable";
		Animation = "";
		HoldingAnimation = "ToolHold";
		SalePrice = 10;
		Weld = {
			C0 = CFrame.new(0, -1.5, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		Droppable = true;
		LostOnDeath = true;
		Description = "Armor-molding ingredient found at Fort Mello";
	};
	["Fur Hoodie"] = {
		ID = "7174318769";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.2, 0);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Orange Spiral Mask"] = {
		ID = "7255568583";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.05, -0.02);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Head";
		Droppable = true;
		LostOnDeath = false;
		SpecialAccessory = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Pink Spiral Mask"] = {
		ID = "8144490502";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.05, -0.02);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Head";
		Droppable = true;
		LostOnDeath = false;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Yellow Striped Mask"] = {
		ID = "7255569453";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0, -0.02);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Swirly Mask"] = {
		ID = "7255567532";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.049, -0.01);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Black Swirly Mask"] = {
		ID = "8144499578";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.049, -0.01);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Face Mask"] = {
		ID = "11639175630";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.3, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, -0.295, -0.036);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = false;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Face Wraps"] = {
		ID = "11639171868";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.3, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, -0.295, -0.036);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = false;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Red Anbu Mask"] = {
		ID = "11639164687";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		SpecialAccessory = true;
		Weld = {
			C0 = CFrame.new(0, -1.15, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.05, -0.57);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = false;
		WeldPart = "Head";
		Droppable = true;
		Description = "A boss drop accessory.";
		SalePrice = 150;
		Rank = "Anbu";
	};
	["Orange Pumpkin Head"] = {
		ID = "11639220678";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		SpecialAccessory = true;
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0, -0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		HidesHead = true;
		WeldPart = "Head";
		Droppable = false;
		Description = "A limited event accessory.";
	};
	["Purple Pumpkin Head"] = {
		ID = "11639225028";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		SpecialAccessory = true;
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0, -0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		HidesHead = true;
		WeldPart = "Head";
		Droppable = false;
		Description = "A limited event accessory.";
	};
	["Icy Pumpkin Head"] = {
		ID = "11639227465";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		SpecialAccessory = true;
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0, -0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		HidesHead = true;
		WeldPart = "Head";
		Droppable = false;
		Description = "A limited event accessory.";
	};
	["Yellow Pumpkin Head"] = {
		ID = "11639223065";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		SpecialAccessory = true;
		Weld = {
			C0 = CFrame.new(0, -1.25, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0, -0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		HidesHead = true;
		WeldPart = "Head";
		Droppable = false;
		Description = "A limited event accessory.";
	};
	["White Hood"] = {
		ID = "10585529441";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles(0, 0, (-math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.12, 0.1);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Black Hood"] = {
		ID = "10585523584";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles(0, 0, (-math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.12, 0.1);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Cracked Mask"] = {
		ID = "10924826634";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.4, 0);
			C0_Angles = CFrame.Angles(0, 0, (-math.pi/2));
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.08, -0.67);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = false;
		WeldPart = "Head";
		Droppable = true;
		SpecialAccessory = true;
		Description = "A boss drop accessory.";
	};
	["Froggy Suit"] = {
		ID = "10361149982";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.7, 0);
			C0_Angles = CFrame.Angles(0, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.08, 0.2);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = false;
		SpecialAccessory = true;
		LostOnDeath = false;
		Description = "A gamepass exclusive accessory";
	};
	["Asumai Sash"] = {
		ID = "";
		Type = "Accessory";
		Animation = "BodyEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.02, 0.2);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0.1, -1.3, -0.57);
			C0_Angles = CFrame.Angles(0.08726646259971647, (-math.pi/2), 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = false;
		WeldPart = "Torso";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Cat Ears"] = {
		ID = "7174313630";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.3, 0);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	Goggles = {
		ID = "6970390956";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.135, -0.045);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Face Guard"] = {
		ID = "8144494296";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.1, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, math.pi, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.1, -0.33);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Akatsuki Hat"] = {
		ID = "";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -2, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "A rare accessory.";
		SalePrice = 250;
		Rank = "Akatsuki";
	};
	["Merchant Hat"] = {
		ID = "8144676139";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.3, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.3, 0.05);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Medic Helm"] = {
		ID = "8144496823";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.3, 0);
			C0_Angles = CFrame.Angles((-math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(0, math.pi, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.16, 0.1);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Chef's Hat"] = {
		ID = "";
		Type = "Accessory";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.2, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.5, 0);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Purple Obi"] = {
		ID = "8144484151";
		Type = "Accessory";
		Animation = "BodyEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.55, 0.1);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(math.pi, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, -1.16, -0.1);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Torso";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Black Obi"] = {
		ID = "8144482857";
		Type = "Accessory";
		Animation = "BodyEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.55, 0.1);
			C0_Angles = CFrame.Angles((math.pi/2), 0, 0);
			C1_Angles = CFrame.Angles(math.pi, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, -1.16, -0.1);
			C0_Angles = CFrame.Angles(0, 0, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Torso";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Black Headband"] = {
		ID = "8144502398";
		Type = "Accessory";
		CustomEquipAnimation = "HeadbandEquip";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0.35);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, -0.19, 0.05);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Black Duragband"] = {
		ID = "10585535382";
		Type = "Accessory";
		CustomEquipAnimation = "HeadbandEquip";
		Animation = "HeadEquip";
		HoldingAnimation = "ToolHold";
		Weld = {
			C0 = CFrame.new(0, -1.45, 0.35);
			C0_Angles = CFrame.Angles((-math.pi/2), math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		BodyWeld = {
			C0 = CFrame.new(0, 0.05, 0.06);
			C0_Angles = CFrame.Angles(0, math.pi, 0);
			C1_Angles = CFrame.Angles(0, 0, 0);
		};
		HidesHair = true;
		WeldPart = "Head";
		Droppable = true;
		Description = "An accessory which can be purchased from Durana Village.";
	};
	["Silver Resanagi"] = {
		ID = "6358323507";
		Weapon = true;
		CombatType = "Sword";
		SalePrice = 25;
		Droppable = false;
		BaseName = "Resanagi";
		LostOnDeath = true;
		Description = "A metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Golden Resanagi"] = {
		ID = "6358323894";
		Weapon = true;
		CombatType = "Sword";
		SalePrice = 40;
		Droppable = false;
		BaseName = "Resanagi";
		LostOnDeath = true;
		Description = "A metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Onyx Resanagi"] = {
		ID = "6445487927";
		Weapon = true;
		CombatType = "Sword";
		SalePrice = 60;
		Droppable = false;
		BaseName = "Resanagi";
		LostOnDeath = true;
		Description = "A metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Silver Kunai"] = {
		ID = "6363071873";
		Weapon = true;
		CombatType = "Kunai";
		SalePrice = 15;
		Droppable = false;
		LostOnDeath = true;
		Description = "A metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Golden Kunai"] = {
		ID = "6363072181";
		Weapon = true;
		CombatType = "Kunai";
		SalePrice = 25;
		Droppable = false;
		LostOnDeath = true;
		Description = "A metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Onyx Kunai"] = {
		ID = "6450255956";
		Weapon = true;
		CombatType = "Kunai";
		SalePrice = 40;
		Droppable = false;
		LostOnDeath = true;
		Description = "A metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Silver Zabunagi"] = {
		ID = "6992492755";
		Weapon = true;
		CombatType = "Greatsword";
		SalePrice = 50;
		Droppable = false;
		BaseName = "Zabunagi";
		LostOnDeath = true;
		Description = "A heavy metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Golden Zabunagi"] = {
		ID = "6992486595";
		Weapon = true;
		CombatType = "Greatsword";
		SalePrice = 70;
		Droppable = false;
		BaseName = "Zabunagi";
		LostOnDeath = true;
		Description = "A heavy metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Onyx Zabunagi"] = {
		ID = "6992493481";
		Weapon = true;
		CombatType = "Greatsword";
		SalePrice = 90;
		Droppable = false;
		BaseName = "Zabunagi";
		Condition = {
			Req1 = "SkillOwned";
			Req2 = "Greatsword Training";
		};
		LostOnDeath = true;
		Description = "A heavy metallic weapon designed for close combat.";
		Buyabble = true;
	};
	Kusanagi = {
		ID = "";
		Weapon = true;
		CombatType = "Sword";
		SalePrice = 300;
		Droppable = false;
		BaseName = "Resanagi";
		LostOnDeath = true;
		Description = "A piercing metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Infernal Sword"] = {
		ID = "";
		Weapon = true;
		CombatType = "Sword";
		SalePrice = 500;
		Droppable = false;
		BaseName = "Resanagi";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A piercing infernal weapon designed for close combat.";
		Buyabble = true;
	};
	["Cursed Sword"] = {
		ID = "11915336957";
		Weapon = true;
		CombatType = "Sword";
		SalePrice = 500;
		Droppable = false;
		BaseName = "Resanagi";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A piercing cursed weapon designed for close combat.";
		Buyabble = true;
	};
	["Infernal Zabunagi"] = {
		ID = "";
		Weapon = true;
		CombatType = "Greatsword";
		SalePrice = 500;
		Droppable = false;
		BaseName = "Zabunagi";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A hard-hitting infernal weapon designed for close combat.";
		Buyabble = true;
	};
	["Cursed Zabunagi"] = {
		ID = "11915333615";
		Weapon = true;
		CombatType = "Greatsword";
		SalePrice = 500;
		Droppable = false;
		BaseName = "Zabunagi";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A hard-hitting cursed weapon designed for close combat.";
		Buyabble = true;
	};
	["Infernal Trident"] = {
		ID = "";
		Weapon = true;
		CombatType = "Halberd";
		SalePrice = 500;
		Droppable = false;
		BaseName = "Halberd";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A long-ranged infernal weapon designed for close combat.";
		Buyabble = true;
	};
	["Cursed Trident"] = {
		ID = "11915327642";
		Weapon = true;
		CombatType = "Halberd";
		SalePrice = 500;
		Droppable = false;
		BaseName = "Halberd";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A long-ranged cursed weapon designed for close combat.";
		Buyabble = true;
	};
	["Executioner's Blade"] = {
		ID = "";
		Weapon = true;
		CombatType = "Greatsword";
		SalePrice = 300;
		Droppable = false;
		BaseName = "Zabunagi";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A hard-hitting weapon designed for close combat.";
		Buyabble = true;
	};
	Samehada = {
		ID = "";
		Weapon = true;
		CombatType = "Greatsword";
		SalePrice = 800;
		Droppable = false;
		BaseName = "Zabunagi";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A hard-hitting weapon that absorbs chakra on hit.";
		Buyabble = true;
		ChakraDrain = 2;
	};
	["Onyx Staff"] = {
		ID = "";
		Weapon = true;
		CombatType = "Halberd";
		SalePrice = 1999;
		Droppable = false;
		BaseName = "Halberd";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A long-ranged metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Raijin Kunai"] = {
		ID = "";
		Weapon = true;
		CombatType = "Kunai";
		SalePrice = 300;
		Droppable = false;
		BaseName = "Kunai";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Infernal Dagger"] = {
		ID = "";
		Weapon = true;
		CombatType = "Kunai";
		SalePrice = 500;
		Droppable = false;
		BaseName = "Kunai";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "An infernal weapon designed for close combat.";
		Buyabble = true;
	};
	["Cursed Dagger"] = {
		ID = "11915330361";
		Weapon = true;
		CombatType = "Kunai";
		SalePrice = 500;
		Droppable = false;
		BaseName = "Kunai";
		LostOnDeath = true;
		CannotInfuse = true;
		Description = "A cursed weapon designed for close combat.";
		Buyabble = true;
	};
	["Silver Halberd"] = {
		ID = "7277783114";
		Weapon = true;
		CombatType = "Halberd";
		SalePrice = 50;
		Droppable = false;
		BaseName = "Halberd";
		LostOnDeath = true;
		Description = "A long-ranged metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Golden Halberd"] = {
		ID = "7277783673";
		Weapon = true;
		CombatType = "Halberd";
		SalePrice = 70;
		Droppable = false;
		BaseName = "Halberd";
		LostOnDeath = true;
		Description = "A long-ranged metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Onyx Halberd"] = {
		ID = "7277784313";
		Weapon = true;
		CombatType = "Halberd";
		SalePrice = 150;
		Droppable = false;
		BaseName = "Halberd";
		LostOnDeath = true;
		Description = "A long-ranged metallic weapon designed for close combat.";
		Buyabble = true;
	};
	["Silver Asumai"] = {
		ID = "8144475545";
		Weapon = true;
		CombatType = "Asumai";
		SalePrice = 25;
		Droppable = false;
		BaseName = "Asumai";
		LostOnDeath = true;
		Description = "Metallic weapons designed for close combat.";
		Buyabble = true;
	};
	["Golden Asumai"] = {
		ID = "8144478245";
		Weapon = true;
		CombatType = "Asumai";
		SalePrice = 40;
		Droppable = false;
		BaseName = "Asumai";
		LostOnDeath = true;
		Description = "Metallic weapons designed for close combat.";
		Buyabble = true;
	};
	["Onyx Asumai"] = {
		ID = "8144480334";
		Weapon = true;
		CombatType = "Asumai";
		SalePrice = 70;
		Droppable = false;
		BaseName = "Asumai";
		LostOnDeath = true;
		Description = "Metallic weapons designed for close combat.";
		Buyabble = true;
	};
}
module_6_upvr.Emotes = {
	bow = {
		Looped = false;
		Free = true;
	};
	wave = {
		Looped = false;
		Free = true;
	};
	lean = {
		Looped = true;
		Free = true;
	};
	relax = {
		Looped = true;
		Free = true;
	};
	sunbathe = {
		Looped = true;
		Free = true;
	};
	starjumps = {
		Looped = true;
		Free = false;
	};
	contemplate = {
		Looped = true;
		Free = false;
	};
	seated = {
		Looped = true;
		Free = false;
	};
	handstand = {
		Looped = true;
		Free = false;
	};
	teabag = {
		Looped = true;
		Free = false;
	};
}
module_6_upvr.Misc = {
	ResanagiSheathe = {
		Weld = {
			C0 = CFrame.new(-0.3, -1.15, 0.6);
			C0_Angles = CFrame.Angles(0, (math.pi/2), math.pi);
			C1_Angles = CFrame.Angles(1.2217304763960306, 0, 0);
		};
	};
	KusanagiSheathe = {
		Weld = {
			C0 = CFrame.new(-0.3, -1.15, 0.6);
			C0_Angles = CFrame.Angles(0, (math.pi/2), math.pi);
			C1_Angles = CFrame.Angles(1.2217304763960306, 0, 0);
		};
	};
}
module_6_upvr.Quests = {
	["Quenching Thirst"] = {
		Type = "Quest";
		QuestName = "Quenching Thirst";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = ".....I see a......River of blue......If only.......";
		OngoingResponse = "....<font color=\"rgb(255, 121, 150)\">Are you....still here?</font>.....Please hurry.....";
		FinishedGoodInitialResponse = ".....Thank you......so much......I won't.....forget this.....";
		FinishedGoodResponse = ".....I won't.....forget .....what you did for me.....";
		FinishedBadResponse = "......<font color=\"rgb(255, 121, 150)\">how could you.......do this to me?</font>.......I trusted you.......";
		FinishedBadInitialResponse = longstring2;
		QuestGoodReward = {
			ChakraFragment = 1;
			Sins = -3;
		};
		QuestBadReward = {
			ChakraFragment = 1;
			Sins = 2;
		};
		Start = {
			Option1 = {
				Text = "I'll be back soon.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I will.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "...I'm so sorry...";
				Type = "Info";
				Response = "........Your sorry......can't......help me........now......";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "....Should've used rainwater....";
				Type = "Info";
				Response = longstring1;
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["Wraps Retrieval"] = {
		Type = "Quest";
		QuestName = "Wraps Retrieval";
		UsesOngoing = true;
		UsesFinished = true;
		YearlyQuest = true;
		StartResponse = "I'll be waiting...";
		OngoingResponse = "<font color=\"rgb(255, 121, 150)\">Confused?</font>. I thought my rhymes described it well enough. Find Barbarit The Rose and defeat him in battle...";
		FinishedGoodInitialResponse = "Good work, Here are the gems.";
		FinishedGoodResponse = "Not bad, son.";
		QuestGoodReward = {
			ChakraFragment = 1;
			Sins = -2;
			Ryo = 25;
		};
		Start = {
			Option1 = {
				Text = "I'll be back soon.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Got it.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "...I'm so sorry...";
				Type = "Info";
				Response = "........Your sorry......can't......help me........now......";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "....Should've used rainwater....";
				Type = "Info";
				Response = longstring1;
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["Bolive Retrieval"] = {
		Type = "Quest";
		QuestName = "Bolive Retrieval";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = ".....Please......hurry.......";
		OngoingResponse = "....<font color=\"rgb(255, 121, 150)\">Are you....still here?</font>.....Please hurry......I think some of those......Bolive crops......from Fort Mello......will do the trick.....";
		FinishedGoodInitialResponse = ".....Thank you......so much.......take this......It's all I have.....";
		FinishedGoodResponse = "Thank you. I feel a lot better now.";
		FinishedBadResponse = "......<font color=\"rgb(255, 121, 150)\">how could you.......do this to me?</font>.......I trusted you.......";
		FinishedBadInitialResponse = longstring2;
		QuestGoodReward = {
			ChakraFragment = 1;
			Sins = -3;
			["Healing Scroll"] = 1;
			Ryo = 30;
		};
		QuestBadReward = {
			ChakraFragment = 1;
			Sins = 2;
		};
		Start = {
			Option1 = {
				Text = "I'll be back soon.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Ok.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "...I'm so sorry...";
				Type = "Info";
				Response = "........Your sorry......can't......help me........now......";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "....Should've used rainwater....";
				Type = "Info";
				Response = longstring1;
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["Humbling Lavarossa"] = {
		Type = "Quest";
		QuestName = "Humbling Lavarossa";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "I entrust him to you now.";
		OngoingResponse = "<font color=\"rgb(255, 121, 150)\">Still here?</font>";
		FinishedGoodInitialResponse = "I'm surprised you pulled it off. You have earned my respect. Here are some things you might find useful my young pyromancer...";
		FinishedGoodResponse = "Help others as you did me, let the world know that as long as you're around there's nothing to be worried about.";
		FinishedBadResponse = "<font color=\"rgb(255, 121, 150)\">You know, I thought rejuvinating these horns of mine would give me the freedom I so badly desired. But knowing my son's fate, I don't even see the point of getting up and leaving here anymore...</font>";
		FinishedBadInitialResponse = "<font color=\"rgb(255, 121, 150)\">He's dead? Was there really no other way...?</font> I guess his mind was truly lost to madness...Take these items for what they are worth. I'll just stay here.";
		QuestGoodReward = {
			ChakraFragment = 1;
			Sins = -3;
			["Flame Scroll"] = 1;
			["Flame Gem"] = 7;
			Ryo = 50;
		};
		QuestBadReward = {
			ChakraFragment = 1;
			Sins = 2;
			["Flame Scroll"] = 1;
			["Flame Gem"] = 3;
		};
		Start = {
			Option1 = {
				Text = "I won't let you down.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I'm going.";
				Type = "Quit";
			};
			Option2 = {
				Text = "How does he look?";
				Type = "Info";
				Response = "Bigger than me. Redder than me too with glowing red horns. Once you see him, you'll know it's him.......Oh and his hair isn't grey like mine...";
			};
			Option3 = {
				Text = "Where can I find him?";
				Type = "Info";
				Response = "I'm not sure. He's probably gone underground. Somewhere with lava...";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Will do.";
				Type = "Quit";
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Thank you.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "My condolences...";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "I'm sorry";
				Type = "Info";
				Response = "You are a shinobi after all. It's what you're trained to do. I shouldn't have expected anything different.";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["Search For A Flaming Heart"] = {
		Type = "Quest";
		QuestName = "Search For A Flaming Heart";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "Alright. I'll be waiting for you. Not like I'm going anywhere as it is. I seriously doubt I can even fit through that entrance...";
		OngoingResponse = "<font color=\"rgb(255, 121, 150)\">Taake your time.</font>I've got all day. Literally.";
		FinishedGoodInitialResponse = "Seems like you found me a heart. I appreciate it. I still don't think I'm going anywhere. Thanks, nonetheless.";
		FinishedGoodResponse = "A beating heart. And it's made of flames too. So nice. I still don't think I'm going anywhere. Thanks, nonetheless.";
		QuestGoodReward = {
			["Chakra Fragments"] = 1;
			Sins = -3;
		};
		Start = {
			Option1 = {
				Text = "I'll be back soon.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Ok...";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "...I can't help with that...";
				Type = "Quit";
			};
			Option2 = {
				Text = "...I've heard rumours about you...";
				Type = "Info";
				Response = "No idea what you're talking about.";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "You're still here?";
				Type = "Info";
				Response = "I'm still waiting.";
				Option1 = {
					Text = "For what?";
					Type = "Info";
					Response = "A traveller. Any traveller.";
					Option1 = {
						Text = "Like me?";
						Type = "Info";
						Response = "Yes.";
						Option1 = {
							Text = "Didn't I already help you?";
							Type = "Event";
							ExtraInfo = "FloorBreak";
							Response = "CLEAR GOLEMS";
							Option1 = {
								Text = "...What the...";
								Type = "Quit";
							};
						};
						Option2 = {
							Text = "...";
							Type = "Quit";
						};
					};
					Option2 = {
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "[This is a bug and should not appear]";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "[This is a bug and should not appear]";
				Type = "Info";
			};
		};
	};
	["A Fate Of Lightning"] = {
		Type = "Quest";
		QuestName = "A Fate Of Lightning";
		XPRequired = 150;
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "Best of luck. A word of warning though, try not to lose your life in the process.";
		OngoingResponse = "Still searching? <font color=\"rgb(255, 121, 150)\">I'd suggest listening out for thunder.</font> For where there is thunder, there is also lightning.";
		FinishedGoodInitialResponse = "I can sense the sparks of lightning eminating out of your body. Here's a scroll to help you unlock your true potential.";
		FinishedGoodResponse = "I hope you've put that scroll to good use.";
		QuestGoodReward = {
			["Chakra Fragments"] = 1;
			["Lightning Scroll"] = 1;
		};
		Start = {
			Option1 = {
				Text = "Ok I guess...";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Thanks.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Thank you for helping me out.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "[This is a bug and should not appear]";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "[This is a bug and should not appear]";
				Type = "Info";
			};
		};
	};
	["Earth Retrieval"] = {
		Type = "Quest";
		QuestName = "Earth Retrieval";
		XPRequired = 30;
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "Off you go.";
		OngoingResponse = "<font color=\"rgb(255, 121, 150)\">Afraid? This generation is hopeless.</font>";
		FinishedGoodInitialResponse = "I'm surprised you came back. Most would've run off immediately. For your cool head, Five Ground Gems are yours.";
		FinishedGoodResponse = "If I don't hear your name and skill with Earth style being echoed through the lands...";
		QuestGoodReward = {
			["Chakra Fragments"] = 1;
			["Cloning Scroll"] = 1;
		};
		Start = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Thanks.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Appreciate it.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "[This is a bug and should not appear]";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "[This is a bug and should not appear]";
				Type = "Info";
			};
		};
	};
	["Clones Debacle"] = {
		Type = "Quest";
		QuestName = "Clones Debacle";
		XPRequired = 30;
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "Best of luck...";
		OngoingResponse = "Don't know where to go? <font color=\"rgb(255, 121, 150)\">Take up the path behind me and keep going until you arrive at the Fort.</font>";
		FinishedGoodInitialResponse = "Thank you for clearing up my mess. Here's a scroll to help you unlock your true potential.";
		FinishedGoodResponse = "I hope you've put that scroll to good use.";
		QuestGoodReward = {
			["Chakra Fragments"] = 1;
			["Cloning Scroll"] = 1;
		};
		Start = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Thanks.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Appreciate it.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "[This is a bug and should not appear]";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "[This is a bug and should not appear]";
				Type = "Info";
			};
		};
	};
	["Bracelet Retrieval"] = {
		Type = "Quest";
		QuestName = "Bracelet Retrieval";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = ".......I'm........counting...........on you..........<i>huff</i>.......";
		OngoingResponse = "....<font color=\"rgb(255, 121, 150)\">I feel like I'm passing away</font>.......Please hurry.....";
		FinishedGoodInitialResponse = ".........Finally........I'm free.........Thank you.......Primitive human.......";
		FinishedGoodResponse = ".........Finally........I'm free.........Thank you.......Primitive human.......";
		QuestGoodReward = {
			["Chakra Fragments"] = 1;
			Sins = -3;
		};
		Start = {
			Option1 = {
				Text = "I'll be back soon.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I'll get it.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "......Human?......";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "...I'm so sorry...";
				Type = "Info";
				Response = "........Your sorry......can't......help me........now......";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "....Should've used rainwater....";
				Type = "Info";
				Response = longstring1;
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["Hostage Retrieval"] = {
		Type = "Quest";
		YearlyQuest = true;
		QuestName = "Hostage Retrieval";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "I'll be waiting on your return.";
		OngoingResponse = "Having trouble finding the base?";
		FinishedGoodInitialResponse = "<font color=\"rgb(255, 121, 150)\">Not bad.</font> Here are your rewards as promised.";
		FinishedGoodResponse = "<i>Your reputation from your successful missions are impressive...</i>.";
		FinishedBadResponse = "Instead of retrieving the hostage, you ended up killing them. That is embarassing.";
		FinishedBadInitialResponse = "You let the hostage die...? And you've come back here expecting to get something?";
		QuestGoodReward = {
			["Chakra Fragments"] = 1;
			Chakrabone = 1;
			Acumen = 8;
			Ryo = 40;
			Sins = -3;
		};
		QuestBadReward = {
			["Chakra Fragments"] = 1;
			Sins = 3;
		};
		Start = {
			Option1 = {
				Text = "Cheerio.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Yeah.";
				Type = "Info";
				Response = "They're known to operate underground, so keep an eye on any breaks in the ground formation.";
				Option1 = {
					Text = "Ok, thanks.";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Thanks.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Thanks.";
				Type = "Quit";
			};
			Option2 = {
				Text = "I had to leave one behind...";
				Type = "Info";
				Response = "We cannot save everyone as much as we may like to. Don't beat yourself up over it.";
				Option1 = {
					Text = "I suppose...";
					Type = "Quit";
				};
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Search For The Chakra Crops"] = {
		Type = "Quest";
		YearlyQuest = true;
		QuestName = "Search For The Chakra Crops";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "...Amazing...can't wait to be eating well again...";
		OngoingResponse = ".....Hey.....Still looking for it......I think I recall seeing it in a town called.......Borithio......Borithia?...... .....I've honestly forgotten.........";
		FinishedGoodInitialResponse = ".....<font color=\"rgb(255, 121, 150)\">Wow you really found it!</font>.......As a gift please take this gem of flames from me......";
		FinishedGoodResponse = "......Oh the taste of fresh produce!......<i>sighs in joy</i>......";
		FinishedBadResponse = "...";
		FinishedBadInitialResponse = "...";
		QuestGoodReward = {
			["Chakra Fragments"] = 1;
			["Flame Gem"] = 3;
		};
		Start = {
			Option1 = {
				Text = "Cheerio.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Ok, thanks.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Enjoy!";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "......I don't think you're going to live for that long.......";
				Type = "Info";
				Response = "......What do you mean?.......<font color=\"rgb(198, 147, 255)\">Explain!</font>";
				Option1 = {
					Text = "......Who gon tell him?......";
					Type = "Info";
					Response = ".......Tell me what?.......<font color=\"rgb(198, 147, 255)\">Tell me!</font>";
					Option1 = {
						Text = "Nothing.";
						Type = "Quit";
					};
				};
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Thanks, I needed that.";
				Type = "Quit";
			};
			Option2 = {
				Text = "The town was called Sorythia actually.";
				Type = "Info";
				Response = ".......Oh yeah!........I remember a beautiful young lady I met there.........Wish I could go and see her again but I can't seem to be able to leav-                     <font color=\"rgb(255, 121, 150)\">***                    ***                    ***</font>                   -Well that's great to know. Thanks, once again!";
				Option1 = {
					Text = "I see...";
					Type = "Quit";
				};
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = ".......It's all I could find I'm afraid......";
				Type = "Info";
				Response = ".....,...<i>bites lip and twirls mustache in frustration</i>.......,";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["A Run For Your Life"] = {
		Type = "Quest";
		QuestName = "A Run For Your Life";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "Ok great! I'll wait for your signal.....";
		OngoingResponse = "Come on! We don't have a lot of time. Are you ready with the distraction?.......";
		FinishedGoodInitialResponse = ".....<font color=\"rgb(255, 121, 150)\">Phew! I made it, Thank you so much.</font>.......I don't know how I could possibly repay you......";
		FinishedGoodResponse = "They'll never find me here.......<i>muhahahaha</i>......";
		FinishedBadResponse = ".......How could you let me die like that!........";
		FinishedBadInitialResponse = ".......How could you let me die like that!........";
		QuestGoodReward = {
			["Chakra Fragments"] = 1;
			Sins = -1;
		};
		QuestBadReward = {
			["Chakra Fragments"] = 1;
			Sins = 3;
		};
		Start = {
			Option1 = {
				Text = "Got it.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I'm getting it ready!";
				Type = "Quit";
			};
			Option2 = {
				Text = "I've done it!";
				Type = "Info";
				Response = "Really? But I didn't hear anything...";
				Option1 = {
					Text = "Trust me, it's safe and you can cross now.";
					Type = "Event";
					ExtraInfo = "TheDeadRunner";
					Response = "Ok...Here goes nothing...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Wait, It's not ready yet.";
					Type = "Quit";
				};
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Hehe, Enjoy!";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "......I don't think you're going to live for that long.......";
				Type = "Info";
				Response = "......What do you mean?.......<font color=\"rgb(198, 147, 255)\">Explain!</font>";
				Option1 = {
					Text = "......Who gon tell him?......";
					Type = "Info";
					Response = ".......Tell me what?.......<font color=\"rgb(198, 147, 255)\">Tell me!</font>";
					Option1 = {
						Text = "Nothing.";
						Type = "Quit";
					};
				};
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Thanks, I'll put it to good use.";
				Type = "Info";
				Response = longstring3;
				Option1 = {
					Text = "...Enjoy...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Couldn't you just travel back to Sorythia?";
				Type = "Info";
				Response = longstring4;
				Option1 = {
					Text = "I see...";
					Type = "Quit";
				};
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = ".......It's all I could find I'm afraid......";
				Type = "Info";
				Response = ".....,...<i>bites lip and twirls mustache in frustration</i>.......,";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["An Extravagant Dish"] = {
		Type = "Quest";
		QuestName = "An Extravagant Dish";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "Appreciate it. I'm getting so tired of eating cooked seaweed in saltwater...";
		OngoingResponse = "You still looking for it? I think I ate it in a town called......Sobia?.......Sorita?.........I don't quite remember I'm afraid.......";
		FinishedGoodInitialResponse = ".....<font color=\"rgb(255, 121, 150)\">Hey you actually made it!</font>.......Alright here's what's left of the gem. I don't know what it can do but I'll let you figure that out......";
		FinishedGoodResponse = "This tastes so delicious, I feel like the bowl will never finish.......<i>munches</i>......";
		FinishedBadResponse = ".......Am I doomed to live off seaweed and saltwater forever........";
		FinishedBadInitialResponse = ".......Urgh.......Is this seaweed?........<font color=\"rgb(198, 147, 255)\">Are you trying to mock me?</font>.......";
		QuestGoodReward = {
			ChakraFragment = 1;
			["Aqua Gem"] = 2;
		};
		Start = {
			Option1 = {
				Text = "Saltwater? Goodness me, I'll be back ASAP.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I'll get it for you.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Hehe, Enjoy!";
				Type = "Quit";
			};
			Option2 = {
				Text = "Got a key?";
				Type = "Info";
				Response = "Yeah I've got a few. They'll only work in this desert area though. <font color=\"rgb(255, 121, 150)\">I'll sell you one for 20 Ryo.</font>";
				Option1 = {
					Text = "I'll pay.";
					Type = "Payment";
					Amount = module_6_upvr.Items["Desolated Key"].SalePrice;
					Item = "Desolated Key";
					Response = "There you go. I wonder what kind of unlockery business you'll get up to...";
					Option1 = {
						Text = "...Erm...";
						Type = "Quit";
					};
					Failed = {
						Response = "Key's got a price. I appreciate the dish you brought me but you still need to pay up.";
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "......I don't think you're going to live for that long.......";
				Type = "Info";
				Response = "......What do you mean?.......<font color=\"rgb(198, 147, 255)\">Explain!</font>";
				Option1 = {
					Text = "......Who gon tell him?......";
					Type = "Info";
					Response = ".......Tell me what?.......<font color=\"rgb(198, 147, 255)\">Tell me!</font>";
					Option1 = {
						Text = "Nothing.";
						Type = "Quit";
					};
				};
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Thanks, I'll put it to good use.";
				Type = "Info";
				Response = longstring3;
				Option1 = {
					Text = "...Enjoy...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Couldn't you just travel back to Sorythia?";
				Type = "Info";
				Response = longstring4;
				Option1 = {
					Text = "I see...";
					Type = "Quit";
				};
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = ".......It's all I could find I'm afraid......";
				Type = "Info";
				Response = ".....,...<i>bites lip and twirls mustache in frustration</i>.......,";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["Kamui Resistance Training"] = {
		Type = "Quest";
		QuestName = "Kamui Resistance Training";
		AmountRequired = 10;
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "I'll be waiting.";
		OngoingResponse = "Remember, repetition is the only path to resistance here. Let yourself suffer a little to come out of this stronger.";
		FinishedGoodInitialResponse = "Didn't think you'd manage to endure that many times. <font color=\"rgb(255, 121, 150)\">I've embedded those essences inside you so you'll no longer feel pain when going through Kamui.</font>";
		FinishedGoodResponse = "Make the most of it.";
		QuestGoodReward = {
			ChakraFragment = 1;
		};
		Start = {
			Option1 = {
				Text = "I'll be back soon.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "Ok...";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Thanks.";
				Type = "Quit";
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Appreciate it.";
				Type = "Quit";
			};
		};
	};
	["Parkour Training"] = {
		Type = "Quest";
		QuestName = "Parkour Training";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "Best of luck.";
		OngoingResponse = "Still searching?";
		FinishedGoodInitialResponse = "Good job. <font color=\"rgb(255, 121, 150)\">As promised, here you go. Put this to good use.</font>";
		FinishedGoodResponse = "Make the most of it.";
		FinishedBadResponse = "Do you hear me? <font color=\"rgb(198, 147, 255)\">You <i>will</i> pay for this!</font>.......";
		FinishedBadInitialResponse = "<font color=\"rgb(198, 147, 255)\">Argh! How could you do this to me?</font>";
		QuestGoodReward = {
			ChakraFragment = 1;
			["Parkour Scroll"] = 1;
			Ryo = 25;
		};
		QuestBadReward = {
			["Chakra Fragments"] = 1;
			Sins = 4;
		};
		Start = {
			Option1 = {
				Text = "I'll be back with those bells soon.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I'll find it.";
				Type = "Quit";
			};
			Option2 = {
				Condition = {
					Req1 = "DoesNotHaveItem";
					Req2 = "Grounds Key";
				};
				Text = "Got anything that could help?";
				Type = "Info";
				Response = "This key should come in handy. It comes at a price of <font color=\"rgb(255, 233, 144)\">"..module_6_upvr.Items["Grounds Key"].SalePrice.." Ryo</font> though.";
				Option1 = {
					Text = "I'll pay.";
					Type = "Payment";
					Amount = module_6_upvr.Items["Grounds Key"].SalePrice;
					Item = "Grounds Key";
					Response = "There you go.";
					Option1 = {
						Text = "Thanks.";
						Type = "Quit";
					};
					Failed = {
						Response = "You seem quite short on coin...";
						Text = "Goodbye";
						Type = "Quit";
					};
				};
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Thanks.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "I had no idea that would happen...";
				Type = "Quit";
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Thanks, I'll put it to good use.";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "Woah...";
				Type = "Info";
				Response = "......<i>wriggles in frustration</i>......";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["Combat Training"] = {
		Type = "Quest";
		QuestName = "Combat Training";
		UsesOngoing = true;
		UsesFinished = true;
		StartResponse = "Best of luck.";
		OngoingResponse = "Still training?";
		FinishedGoodInitialResponse = "It seems like you saw through the training. <font color=\"rgb(255, 121, 150)\">Well done, here you go.</font>";
		FinishedGoodResponse = "Make the most of it.";
		QuestGoodReward = {
			ChakraFragment = 1;
			["Combat Scroll"] = 1;
			Ryo = 25;
		};
		Start = {
			Option1 = {
				Text = "I'll be back soon.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I'll find it.";
				Type = "Quit";
			};
			Option2 = {
				Text = "Got anything that could help?";
				Type = "Info";
				Response = "Not really. <font color=\"rgb(255, 233, 144)\">I just advise that you stay on your guard.</font>";
				Option1 = {
					Text = "Ok thanks.";
					Type = "Quit";
				};
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Thanks.";
				Type = "Quit";
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "I appreciate it.";
				Type = "Quit";
			};
		};
	};
	["Fruit Cooker"] = {
		Type = "Quest";
		QuestName = "Fruit Cooker";
		UsesOngoing = false;
		UsesFinished = false;
		StartResponse = "Up on the tree bushes are good places to find and collect fruits, I'll be waiting...";
		OngoingResponse = "Error.";
		FinishedGoodInitialResponse = ".....<font color=\"rgb(255, 121, 150)\">Wow.....you actually found them all?</font>......Well, here's the fruit bowl as promised! Use it wisely!......";
		FinishedGoodResponse = "FinishedGood";
		QuestGoodReward = {
			ChakraFragment = 1;
			["All Star Fruit Bowl"] = 1;
		};
		Start = {
			Option1 = {
				Text = "I'll be back.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I will.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "What does it do....";
				Type = "Info";
				Response = ".....Use it when you're at the brink of death. It will replenish your health among other things and give you a fighting chance. <font color=\"rgb(255, 121, 150)\">It's a one-time use though so don't waste it!</font>.......";
				Option1 = {
					Text = "...Ok thanks...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Why couldn't you get it yourself?";
				Type = "Info";
				Response = ".......I would......If I could........Unfortunately many of us are being held agai-           <font color=\"rgb(255, 121, 150)\">***                  ***                  ***</font>                -I'm just feeling pretty lazy today! Maybe I'll go and make own fruit bowls one day when I don't feel like rubbish!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Thanks!";
				Type = "Info";
				Response = "......Enjoy.....<i>impressed grin</i>....";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
	};
	["Relic Retrieval"] = {
		Type = "Quest";
		QuestName = "Relic Retrieval";
		UsesOngoing = false;
		UsesFinished = false;
		StartResponse = "Come find me again if you're successful.";
		OngoingResponse = "Struggling?";
		FinishedGoodInitialResponse = "<font color=\"rgb(255, 121, 150)\">Not bad...Not bad indeed</font>.....This skill should come in handy....And enjoy this bit of Ryo too for this lovely loot...";
		FinishedGoodResponse = "FinishedGood";
		FinishedBadResponse = "FinishedBad";
		FinishedBadInitialResponse = "...Huh....<font color=\"rgb(255, 121, 150)\">Why did you bring the guard here??? Are you crazy???</font>.....";
		QuestGoodReward = {
			ChakraFragment = 1;
			Ryo = 100;
			Sins = 3;
		};
		QuestBadReward = {
			ChakraFragment = 1;
			Sins = -3;
		};
		Start = {
			Option1 = {
				Text = "I'll be back.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I'll get it...";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Thanks";
				Type = "Quit";
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "...Oops...";
				Type = "Quit";
			};
		};
	};
	["InnKeeper's Reunion"] = {
		Type = "Quest";
		QuestName = "InnKeeper's Reunion";
		UsesOngoing = false;
		UsesFinished = false;
		GiveItem = "InnKeeper's Letter";
		StartResponse = "Thank you for taking this task of mine...";
		OngoingResponse = "Error.";
		FinishedGoodInitialResponse = ".....<font color=\"rgb(255, 121, 150)\">Is this from.....my brother?</font>.....I haven't heard from him in ages......";
		FinishedGoodResponse = "FinishedGood";
		FinishedBadResponse = "FinishedBad";
		FinishedBadInitialResponse = ".....What is this soaked letter?.....I can't read what it says.....<font color=\"rgb(255, 121, 150)\">Do you know what it said?</font>.....";
		QuestGoodReward = {
			ChakraFragment = 1;
			Sins = -3;
		};
		QuestBadReward = {
			ChakraFragment = 1;
			Sins = 2;
		};
		Start = {
			Option1 = {
				Text = "I'll get this to him.";
				Type = "Quit";
			};
		};
		Ongoing = {
			Option1 = {
				Text = "I will.";
				Type = "Quit";
			};
		};
		FinishedGood = {
			Option1 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		FinishedBad = {
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		FinishedGoodInitial = {
			Option1 = {
				Text = "Why don't you go see him?....";
				Type = "Info";
				Response = ".....<font color=\"rgb(255, 121, 150)\">And leave my post?</font>.....I could never do that.....He would never allow it.....";
				Option1 = {
					Text = "...I see...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Glad to be a part of your reunion.";
				Type = "Info";
				Response = ".....Thank you once again.....<i>reads letter</i>....";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		FinishedBadInitial = {
			Option1 = {
				Text = "...It's about your brother?....";
				Type = "Info";
				Response = "......My brother?......What about him?......<font color=\"rgb(198, 147, 255)\">Tell me!</font>......";
				Option1 = {
					Text = "......He was killed......at the hands of your other brother.....";
					Type = "Info";
					Response = ".....No way.....I can't believe this.....If only I could go and...... ......see him......<font color=\"rgb(198, 147, 255)\">Curses to the one who has bound me to this post!</font>......";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
		};
	};
}
module_6_upvr.Traits = {
	Bloodthirst = {
		Description = "Gripping players will restore some of your health.";
		RestoreAmount = 80;
	};
	["Frozen Step"] = {
		Description = "Freeze the water below your feet. Water walk will not affect chakra regen.";
		RestoreAmount = 80;
	};
	["Last Stand"] = {
		Description = "Whilst at low health, damage dealt will be greater.";
		LowHealthReq = 0.2;
		DamageIncrease = 1.5;
	};
	Saturated = {
		Description = "Whilst chakra is full, health regen is boosted.";
	};
	["Child of the Flames"] = {
		Description = "Whilst burning, chakra regen is boosted.";
	};
	Exalted = {
		Description = "Some shopkeepers will offer you a discount on their items.";
		PriceModifier = 0.8;
	};
	["Angelic Rescue"] = {
		Description = "Where void would have killed you, you are propelled upwards instead [cooldown].";
	};
	["A Devil's Deal"] = {
		Description = "Whenever your life force is drained due to death, you recieve one chakra fragment.";
	};
	["Slash Resist"] = {
		Description = "Weapons will deal less damage to you.";
		DamageModifier = 0.9;
	};
	Unchained = {
		Description = "When armor is broken, run speed is increased";
		SpeedIncrease = 1.2;
	};
	Lifesucker = {
		Description = "When you grip another player, restore 3% of your lifeforce";
		RestoreAmount = 3;
	};
	Aquaspeed = {
		Description = "When in water, sprint speed is increased.";
		Amount = 10;
	};
	Executioner = {
		Description = "Your execution skills make grips finish faster.";
		TimeDifference = 1.5;
	};
	Stylish = {
		Description = "Your style bedazzles anyone with a taste in fashion.";
	};
	["What Doesn't Kill Me"] = {
		Description = "Perfect Blocking will regenerate a little bit of health";
		Amount = 10;
	};
	["Tidal Boost"] = {
		Description = "Jump power when infusing chakra on water is boosted";
	};
	Airborne = {
		Description = "Aerial Attacks propel you further.";
		SpeedDiff = 1.5;
	};
	Agile = {
		Description = "Dash speed is increased";
		SpeedDiff = 1.5;
	};
	Keymaster = {
		Description = "Grants the ability to lock gates.";
	};
	["Hidden Strength"] = {
		Description = "Restores all counters when armor breaks.";
	};
	Immovable = {
		Description = "Damage taken is reduced by 40% whilst hyperarmour is active.";
		DamageReduction = 0.4;
	};
}
module_6_upvr.Flaws = {
	Clumsy = {
		Description = "Fruit bowl cooks will fail more often than expected.";
		Chance = "25%";
	};
	Squeamish = {
		Description = "Gripping another player will decrease your food counters to 0.";
	};
	Accountable = {
		Description = "More sins will be accumulated from gripping players.";
	};
	["Gone With The Wind"] = {
		Description = "More severely affected by wind-induced knockback skills.";
	};
	["Die Hard"] = {
		Description = "Peaceful deaths will only respawn you with half your health and chakra.";
	};
	["Die Harder"] = {
		Description = "An extra 2% of your lifeforce will be lost with every death.";
	};
	Nomadic = {
		Description = "You are not able to spawn in inns or towns.";
	};
	Paranoid = {
		Description = "You remain in danger from combat for a longer period of time";
		ExtraTime = 10;
	};
	Famished = {
		Description = "You will lose food counters overtime whilst your health is full.";
		Counter = 2;
	};
}
module_6_upvr.Clothing = {
	Rags = {
		SpeedBoost = 1;
		HealthBoost = 1;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 1;
		Heavy = false;
		Description = "Basic clothes.";
	};
	["Zetsu Rags"] = {
		SpeedBoost = 1;
		HealthBoost = 1;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 1;
		Heavy = false;
		Description = "Basic clothes.";
	};
	["Moon Rags"] = {
		SpeedBoost = 1;
		HealthBoost = 1;
		HealthRegen = 1;
		ChakraRegenMultiplier = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 1;
		Heavy = false;
		Description = "Slightly boosts chakra regen.";
	};
	["Ascended Moon Rags"] = {
		SpeedBoost = 1.2;
		HealthBoost = 1.25;
		HealthRegen = 1;
		ChakraRegenMultiplier = 1.4;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 500;
		Heavy = false;
		Description = "Greatly boosts chakra regen, health and speed.";
	};
	["Assassin's Kimono"] = {
		SpeedBoost = 1.1;
		HealthBoost = 1.1;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 30;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.12, 0);
		Description = "Slightly boosts max health.";
	};
	["Assassin's Garments"] = {
		SpeedBoost = 1.28;
		HealthBoost = 1;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 40;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.18, 0);
		Description = "Greatly boosts walk speed.";
	};
	["Ascended Assassin's Garments"] = {
		SpeedBoost = 1.4;
		HealthBoost = 1.05;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		AdditionalHealthRegen = 0.0014;
		Stealth = true;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 1000;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.18, 0);
		Description = "Massively boosts walk speed.";
	};
	["Orange Jumpsuit"] = {
		SpeedBoost = 1.2;
		HealthBoost = 1.45;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 4;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 80;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.15, 0);
		Description = "Massively boosts health. Boosts speed and chakra regen.";
		Exclusive = true;
	};
	Kimono = {
		SpeedBoost = 1.25;
		HealthBoost = 1.4;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 4;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 80;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.15, 0);
		Description = "Massively boosts health. Boosts speed and chakra regen.";
		Exclusive = true;
	};
	Avenger = {
		SpeedBoost = 1.3;
		HealthBoost = 1.3;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 2;
		AdditionalHealthRegen = 0.0014;
		SalePrice = 80;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.15, 0);
		Description = "Greatly boosts health and speed. Boosts health regen.";
		Exclusive = true;
	};
	Jiraiya = {
		SpeedBoost = 1.25;
		HealthBoost = 1.25;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 2;
		AdditionalHealthRegen = 0.0014;
		SalePrice = 80;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.15, 0);
		Description = "Boosts health and speed. Boosts health regen.";
		Exclusive = true;
	};
	["Senju Armor"] = {
		SpeedBoost = 1;
		HealthBoost = 1.33;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 110;
		Heavy = true;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Greatly boosts max health.";
	};
	["Ascended Senju Armor"] = {
		SpeedBoost = 1;
		SlashResistance = 0.9;
		HealthBoost = 1.51;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 1000;
		Heavy = true;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Massively boosts max health and has 10% slash resistance.";
	};
	["Ascended Brawler's Outfit"] = {
		SpeedBoost = 1;
		SlashResistance = 0.9;
		BleedResistance = 0.8;
		HealthBoost = 1.4;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 2;
		SalePrice = 55;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.16, 0);
		Description = "Greatly boosts max health, food regen and has 10% slash resistance.";
	};
	["Akatsuki Cloak"] = {
		SpeedBoost = 1.2;
		HealthBoost = 1.1;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 0;
		SalePrice = 80;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Boosts walk speed and health slightly. Greatly boosts mobility";
	};
	["Ascended Akatsuki Cloak"] = {
		SpeedBoost = 1.25;
		HealthBoost = 1.3;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 0;
		SalePrice = 80;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Boosts walk speed and health slightly. Greatly boosts mobility";
	};
	["Akatsuki Leader"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.5;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 500;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Rogue Leader";
		Rank = "Akatsuki Leader";
	};
	["Ascended Akatsuki Leader"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.75;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 2;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 2000;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Rogue Leader";
		Rank = "Akatsuki Leader";
	};
	["Thunder Cloak"] = {
		SpeedBoost = 1.22;
		HealthBoost = 1;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 0;
		SalePrice = 270;
		LightningBoost = 1.2;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Boosts walk speed, mobility and increases damage with lightning.";
	};
	["Ascended Thunder Cloak"] = {
		SpeedBoost = 1.32;
		HealthBoost = 1.18;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 0;
		SalePrice = 80;
		LightningBoost = 1.3;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Greatky boosts walk speed, mobility and increases damage with lightning. Boosts max health.";
		IdleAnim = "ThunderCloakIdle";
	};
	["Biyo Armor"] = {
		SpeedBoost = 1;
		HealthBoost = 1.3;
		AdditionalHealthRegen = 0.0005;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 110;
		Heavy = true;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Boosts max health and slightly boosts health regen.";
	};
	["Ascended Biyo Armor"] = {
		SpeedBoost = 1;
		SlashResistance = 0.92;
		HealthBoost = 1.43;
		AdditionalHealthRegen = 0.0009;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		SalePrice = 1000;
		Heavy = true;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Greatly boosts max health and slightly boosts health regen. Provides 8% slash resistance.";
	};
	["Wanderer's Outfit"] = {
		SpeedBoost = 1.21;
		HealthBoost = 1.12;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 0;
		SalePrice = 120;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Boosts walk speed and mobility. Slightly boosts max health";
	};
	["Ascended Wanderer's Outfit"] = {
		SpeedBoost = 1.31;
		HealthBoost = 1.23;
		SlashResistance = 0.9;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 0;
		SalePrice = 55;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		FallResistance = 0.1;
		Description = "Greatly boosts walk speed, mobility. Boosts max health. Provides 5% slash resistance.";
		IdleAnim = "WandererCloakIdle";
		RunAnim = "WandererCloakRun";
		FallAnim = "WandererCloakFall";
	};
	["Reanimated Cloak"] = {
		SpeedBoost = 1.15;
		HealthBoost = 1.15;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 2;
		SalePrice = 150;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Boosts walk speed, max health, mobility and food regen";
	};
	["Ascended Reanimated Cloak"] = {
		SpeedBoost = 1.25;
		HealthBoost = 1.3;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 2;
		SalePrice = 55;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.24, 0);
		Description = "Greatly boosts walk speed, max health, mobility and food regen";
		IdleAnim = "ReanimatedCloakIdle";
		RunAnim = "ReanimatedCloakRun";
	};
	["Brawler's Outfit"] = {
		SpeedBoost = 1.05;
		HealthBoost = 1.25;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 2;
		SalePrice = 55;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.16, 0);
		Description = "Boosts max health and food regen. Slightly boosts walk speed.";
	};
	["Fighter's Outfit"] = {
		SpeedBoost = 1.1;
		HealthBoost = 1.15;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 0;
		FoodCounters = 0;
		MeleeAttackBoost = 1.16;
		SalePrice = 55;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.16, 0);
		Description = "Boosts walk speed, max health and boosts melee damage by 16%";
	};
	["Ascended Fighter's Outfit"] = {
		SpeedBoost = 1.22;
		HealthBoost = 1.26;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 0;
		MeleeAttackBoost = 1.34;
		SalePrice = 55;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.16, 0);
		Description = "Boosts walk speed, max health and greatly boosts melee damage by 34%";
	};
	["Martial Artist"] = {
		SpeedBoost = 1.26;
		HealthBoost = 1.35;
		MeleeAttackBoost = 1.3;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 2;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 80;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Exclusive = true;
	};
	["Sorythia Kage"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.5;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 500;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Kage Outfit";
		Rank = "Kage";
		Village = "Sorythia";
	};
	["Ascended Sorythia Kage"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.75;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 2;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 2000;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Kage";
		Village = "Sorythia";
	};
	["Durana Kage"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.5;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 500;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Kage";
		Village = "Durana";
	};
	["Ascended Durana Kage"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.75;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 2;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 2000;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Kage";
		Village = "Durana";
	};
	["Rain Kage"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.5;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 500;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Kage";
		Village = "Rain";
	};
	["Ascended Rain Kage"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.75;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 2;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 2000;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Kage";
		Village = "Rain";
	};
	["Snow Kage"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.5;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 500;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Kage";
		Village = "Snow";
	};
	["Ascended Snow Kage"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.75;
		MeleeAttackBoost = 1;
		HealthRegen = 1.1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 2;
		AdditionalChakraIncrement = 1.3;
		SalePrice = 2000;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Kage";
		Village = "Snow";
	};
	Anbu = {
		SpeedBoost = 1.2;
		HealthBoost = 1.3;
		MeleeAttackBoost = 1;
		HealthRegen = 1.06;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1.2;
		SalePrice = 250;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Anbu";
	};
	["Ascended Anbu"] = {
		SpeedBoost = 1.3;
		HealthBoost = 1.4;
		MeleeAttackBoost = 1;
		HealthRegen = 1.07;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 3;
		FoodCounters = 0;
		AdditionalChakraIncrement = 1.2;
		SalePrice = 1000;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Anbu";
	};
	["Sorythia Outfit"] = {
		SpeedBoost = 1.2;
		HealthBoost = 1.2;
		MeleeAttackBoost = 1;
		HealthRegen = 1.05;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1;
		SalePrice = 150;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Jonin";
		Village = "Sorythia";
	};
	["Ascended Sorythia Outfit"] = {
		SpeedBoost = 1.27;
		HealthBoost = 1.27;
		MeleeAttackBoost = 1;
		HealthRegen = 1.05;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1;
		SalePrice = 750;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Jonin";
		Village = "Sorythia";
	};
	["Durana Outfit"] = {
		SpeedBoost = 1.2;
		HealthBoost = 1.2;
		MeleeAttackBoost = 1;
		HealthRegen = 1.05;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1;
		SalePrice = 150;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Jonin";
		Village = "Durana";
	};
	["Ascended Durana Outfit"] = {
		SpeedBoost = 1.27;
		HealthBoost = 1.27;
		MeleeAttackBoost = 1;
		HealthRegen = 1.05;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1;
		SalePrice = 750;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Jonin";
		Village = "Durana";
	};
	["Rain Outfit"] = {
		SpeedBoost = 1.2;
		HealthBoost = 1.2;
		MeleeAttackBoost = 1;
		HealthRegen = 1.05;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1;
		SalePrice = 150;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Jonin";
		Village = "Rain";
	};
	["Ascended Rain Outfit"] = {
		SpeedBoost = 1.27;
		HealthBoost = 1.27;
		MeleeAttackBoost = 1;
		HealthRegen = 1.05;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1;
		SalePrice = 750;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Jonin";
		Village = "Rain";
	};
	["Snow Outfit"] = {
		SpeedBoost = 1.2;
		HealthBoost = 1.2;
		MeleeAttackBoost = 1;
		HealthRegen = 1.05;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1;
		SalePrice = 150;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Jonin";
		Village = "Snow";
	};
	["Ascended Snow Outfit"] = {
		SpeedBoost = 1.27;
		HealthBoost = 1.27;
		MeleeAttackBoost = 1;
		HealthRegen = 1.05;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 1;
		AdditionalChakraIncrement = 1;
		SalePrice = 750;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.23, 0);
		Description = "Boosts health,speed,chakra regen and boosts melee damage by 20%";
		Rank = "Jonin";
		Village = "Snow";
	};
	["Ascended Peacemaker"] = {
		SpeedBoost = 1.35;
		HealthBoost = 1.13;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 2;
		FoodCounters = 0;
		SalePrice = 90;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.16, 0);
		Description = "Massively boosts walk speed and mobilty. Slightly boosts max health.";
	};
	Peacemaker = {
		SpeedBoost = 1.25;
		HealthBoost = 1;
		HealthRegen = 1;
		ColdResistance = 1;
		HeatResistance = 1;
		JumpCounters = 1;
		FoodCounters = 0;
		SalePrice = 90;
		Heavy = false;
		BloodlinePosition = UDim2.new(0.3, 0, 0.16, 0);
		Description = "Greatly boosts walk speed.";
	};
}
module_6_upvr.Skills = {
	Substitution = {
		Requirements = {
			Ryo = 10;
		};
		SkillType = "Passive";
		ID = "6877034346";
		GUIName = "Skill0";
		Description = "C+Q while stunned to activate.";
	};
	["Chakra Tree Jump"] = {
		Requirements = {
			Ryo = 30;
			Skills = {
				Substitution = true;
			};
		};
		SkillType = "Passive";
		ID = "6877029881";
		GUIName = "Skill1A";
		Description = "High jump off a tree while infusing chakra.";
	};
	["Chakra Feet"] = {
		Requirements = {
			Ryo = 30;
			Skills = {
				Substitution = true;
			};
		};
		SkillType = "Passive";
		ID = "6877027681";
		GUIName = "Skill1B";
		Description = "CC to activate. Enables water walking.";
	};
	["Chakra Punch"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Leaf Whirlwind"] = true;
			};
			Chakrabone = true;
		};
		SkillType = "Passive";
		ID = "6992498492";
		GUIName = "Skill14E";
		Description = "Punching while infusing chakra deals more damage.";
	};
	["Purple Lightning"] = {
		Requirements = {
			Ryo = 100;
			Skills = {
				["Cloak Of Lightning"] = true;
			};
			["Chakra Fragments"] = true;
			["Ayrui Affinity"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill7F";
		Description = "Lightning variant that inflicts a unique ailment";
		XPRequired = 150;
		M1Req = 250;
		BranchName = "Lightning";
	};
	["Lightning Dodge"] = {
		Requirements = {
			Acumen = 40;
			Skills = {
				["Cloak Of Lightning"] = true;
			};
			["Chakra Fragments"] = true;
		};
		BlockedSkills = {
			["Flicker Step"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill7G";
		Description = "Instantaneous dodge at the speed of light";
		BranchName = "Lightning";
	};
	["Chakra Land"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Exchange"] = true;
			};
			Chakrabone = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill6B";
		Description = "Landing while infusing chakra negates fall damage.";
		BranchName = "Chakra";
	};
	["Chakra Sense"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Land"] = true;
			};
			["Chakra Fragments"] = true;
			["Chakra Heart"] = true;
		};
		OccupiedTime = 1000000;
		SkillType = "Skill";
		SkillType2 = "Chakra";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		StartUpAnim = "ChakraSense";
		DontStopStart = true;
		WindUpMovement = "Stop";
		ActionMovement = "Stop";
		ChakraCost = 0;
		Cooldown = 0.1;
		AvoidRegionCheck = true;
		ID = "";
		GUIName = "Skill6C";
		Description = "Observe other players by typing their name";
		BranchName = "Chakraa";
	};
	["Chakra Zone"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Sense"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Chakra";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "DoubleHandSway";
		EndActionAnim = 15;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 15;
		ActivateSound = "SkillActivate";
		ChakraDrain = 6;
		Cooldown = 10;
		ChakraAmountPerSecond = 5;
		HitSound = "";
		maxRepeats = 15;
		repeatWaitTime = 1;
		AffectsSelf = true;
		TouchingParts = false;
		ID = "";
		GUIName = "Skill6E";
		Description = "Creates an area where chakra regeneration is greatly boosted";
		BranchName = "Chakra";
	};
	["Chakra Dash"] = {
		Requirements = {
			Ryo = 40;
			Skills = {
				["Chakra Tree Jump"] = true;
			};
		};
		SkillType = "Passive";
		ID = "6889048431";
		GUIName = "Skill1D";
		Description = "C+Q. Chakra dash will move you further.";
	};
	["Chakra Charge"] = {
		Requirements = {
			Ryo = 40;
			Skills = {
				["Chakra Feet"] = true;
			};
		};
		SkillType = "Passive";
		ID = "6893252534";
		GUIName = "Skill1E";
		Description = "Infusing chakra whilst standing still will charge it at a faster pace.";
	};
	["Chakra Ressurection"] = {
		Requirements = {
			Ryo = 100;
			Skills = {
				["Chakra Sense"] = true;
			};
			Chakrabone = true;
		};
		SkillType = "Skill";
		SkillType2 = "Chakra";
		MouseButton = 1;
		UseWhileKnocked = true;
		StartUpAnim = "Pickpocket";
		DontStopStart = true;
		EndActionAnim = 0.1;
		NoHold = true;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.1;
		ActivateSound = "SkillActivate";
		ChakraCost = 5;
		Cooldown = 15;
		Damage = 0;
		Knockback = false;
		CausesBleed = true;
		SlashEffect = false;
		CanBeBlocked = false;
		CanBePerfectGuarded = false;
		HitSound = "ChakraFistAttack";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 1;
		StandardDamage = true;
		StunTime = 1;
		TouchingParts = true;
		ID = "7174291815";
		GUIName = "Skill6D";
		Description = "Ressurects you when knocked. Has 1 year cooldown.";
		BranchName = "Chakra";
	};
	Burrow = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton1 = "Burrow";
		MouseButton2 = "Burrow Teleport";
		UseWhileKnocked = false;
		StartUpAnim = "";
		DontStopStart = true;
		EndActionAnim = 0.01;
		BypassOccupied = true;
		NoHold = true;
		WindUpMovement = "";
		ActionMovement = "";
		ActivateSound = "SmolderingEarth";
		ChakraCost = 1;
		Cooldown = 1;
		AvoidRegionCheck = true;
		ID = "";
		Description = "Sink into the ground.";
	};
	["Burrow Teleport"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Passive";
		SkillType2 = "Poison";
		UseWhileKnocked = false;
		RequiresGrounded = false;
		StartUpAnim = "";
		DontStopStart = true;
		EndActionAnim = 0.01;
		BypassOccupied = true;
		NoHold = true;
		WindUpMovement = "";
		ActionMovement = "";
		ChakraCost = 8;
		Cooldown = 2;
		Damage = 12;
		BlockBreaks = false;
		StopsCarry = false;
		HitsRagdolled = false;
		Knockback = false;
		CanBeBlocked = true;
		CanBePerfectBlocked = false;
		CanBePerfectGuarded = false;
		maxRepeats = 2;
		repeatWaitTime = 1.1;
		StandardDamage = true;
		Point1 = CFrame.new(10, 10, 10);
		Point2 = CFrame.new(-10, -10, -10);
		Ailment = "Poison";
		ID = "";
		Description = "";
	};
	["Blinding Strike"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chip Damage"] = true;
			};
			["Chakra Shard"] = true;
			["Combat Scroll"] = true;
		};
		BlockedSkills = {
			["Kunai Throw"] = true;
			["Greatsword Training"] = true;
			["Weighted Kick"] = true;
			["Twin Strike"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Close Combat";
		MouseButton1 = "Blinding Strike";
		MouseButton2 = "Thrusting Strike";
		ServerWaitTime = 0;
		LoadUpTime = 0.3;
		NoHold = true;
		RequiresWeapon = {"Sword"};
		UseWhileKnocked = false;
		StunDeactivate = false;
		HyperArmour = false;
		DontStopStart = true;
		ActionAnim = "BlindingStrike";
		EndActionAnim = 1;
		WindUpMovement = "Walk";
		ActionMovement = "Stop";
		ActionTime = 0.01;
		OccupiedTime = 0.6;
		Cooldown = 10;
		Damage = 14;
		Knockback = false;
		CausesBleed = true;
		Bleed = 9;
		SlashEffect = true;
		BlockBreaks = true;
		CanBePerfectGuarded = true;
		HitSound = "HeavySword";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 1;
		Point1 = CFrame.new(4, 4, 0);
		Point2 = CFrame.new(-4, -4, -10);
		StandardDamage = true;
		StunTime = 0.5;
		TouchingParts = true;
		ID = "";
		GUIName = "Skill11A";
		Description = "Render your opponent blind for a short while";
	};
	["Thrusting Strike"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Vertical Slash"] = true;
			};
			["Chakra Fragments"] = true;
			["Redsmith's Mold"] = true;
		};
		SkillType = "Passive";
		SkillType2 = "Close Combat";
		NoHold = true;
		UseWhileKnocked = false;
		LoadUpTime = 0.5;
		RequiresWeapon = {"Sword"};
		StartUpAnim = "ThrustingStrike";
		DontStopStart = true;
		EndActionAnim = 1.35;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.9;
		Cooldown = 9;
		Damage = 11;
		BlockBreaks = true;
		Knockback = false;
		CausesBleed = true;
		Bleed = 7;
		SlashEffect = true;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		DontResetParentFound = true;
		HitSound = "HeavySword";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 0.2;
		Point1 = CFrame.new(2.5, 2.5, 0.5);
		Point2 = CFrame.new(-2.5, -2.5, -9);
		StandardDamage = true;
		StunTime = 0.8;
		ID = "";
		GUIName = "Skill11C";
		Description = "A thrusted lunge attack";
	};
	["Vertical Slash"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Blinding Strike"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Close Combat";
		MouseButton1 = "Vertical Slash";
		MouseButton2 = "Vertical Slash Finish";
		LoadUpTime = 0;
		UseWhileKnocked = false;
		StunDeactivate = true;
		HyperArmour = true;
		RequiresWeapon = {"Sword"};
		StartUpAnim = "VerticalSlashWarmUp";
		ActionAnim = "VerticalSlash";
		EndActionAnim = 1;
		WindUpMovement = "Run";
		ActionMovement = "";
		OccupiedTime = 0.9;
		Cooldown = 8;
		Damage = 15;
		StopsCarry = true;
		Knockback = true;
		CausesBleed = true;
		Bleed = 6;
		SlashEffect = true;
		CanBeBlocked = true;
		maxRepeats = 1;
		repeatWaitTime = 1;
		Point1 = CFrame.new(7, 6, 2);
		Point2 = CFrame.new(-7, -5, -9.5);
		StandardDamage = true;
		StunTime = 2.5;
		TouchingParts = true;
		ID = "";
		GUIName = "Skill11B";
		Description = "Slash upwards";
	};
	["Kunai Throw"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chip Damage"] = true;
			};
			["Chakra Shard"] = true;
			["Combat Scroll"] = true;
		};
		BlockedSkills = {
			["Blinding Strike"] = true;
			["Greatsword Training"] = true;
			["Weighted Kick"] = true;
			["Twin Strike"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Close Combat";
		MouseButton1 = "Kunai Throw";
		MouseButton2 = "Multi Kunai Throw";
		RequiresWeapon = {"Kunai"};
		UseWhileKnocked = false;
		StunDeactivate = true;
		StartUpAnim = "KunaiHold";
		ActionAnim = "KunaiThrow";
		EndActionAnim = 0.5;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		Cooldown = 5;
		Damage = 10;
		Knockback = false;
		CausesBleed = true;
		Bleed = 12;
		CanBeBlocked = true;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		AffectsSelf = true;
		StunTime = 0.1;
		ID = "7277782306";
		GUIName = "Skill10A";
		Description = "Throw a kunai";
	};
	["Multi Kunai Throw"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Critical Damage"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		SkillType2 = "Close Combat";
		UseWhileKnocked = false;
		StunDeactivate = true;
		StartUpAnim = "KunaiHold";
		ActionAnim = "KunaiThrow";
		EndActionAnim = 0.5;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		Cooldown = 8;
		Damage = 10;
		Knockback = false;
		CausesBleed = true;
		Bleed = 9;
		CanBeBlocked = true;
		maxRepeats = 3;
		repeatWaitTime = 0.01;
		StandardDamage = true;
		AffectsSelf = true;
		StunTime = 0.1;
		ID = "7282103827";
		GUIName = "Skill10C";
		Description = "Throw multiple kunai by clicking M2 with kunai throw.";
	};
	["Critical Damage"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Kunai Throw"] = true;
			};
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill10B";
		Description = "Backstab damage with light weapons is boosted by 30%";
	};
	["Wired Kunai"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Multi Kunai Throw"] = true;
			};
			["Chakra Fragments"] = true;
			["Chakra Heart"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Close Combat";
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		RequiresWeapon = {"Kunai"};
		StartUpAnim = "Grapple";
		DontStopStart = true;
		EndActionAnim = 0.5;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.3;
		Cooldown = 9;
		JumpCounters = 1;
		Damage = 3;
		StunTime = 0.8;
		Knockback = false;
		CausesBleed = true;
		Bleed = 6;
		CanBeBlocked = true;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		ID = "10924848166";
		GUIName = "Skill10D";
		Description = "wired";
	};
	["Kunai Spin"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Wired Kunai"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Close Combat";
		ServerWaitTime = 0;
		LoadUpTime = 0.3;
		NoHold = true;
		UseWhileKnocked = false;
		StunDeactivate = false;
		HyperArmour = true;
		RequiresWeapon = {"Kunai"};
		StartUpAnim = "KunaiSpin";
		DontStopStart = true;
		EndActionAnim = 1.35;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 1.1;
		Cooldown = 8;
		Damage = 8;
		BlockBreaks = false;
		Knockback = false;
		CausesBleed = true;
		Bleed = 5;
		SlashEffect = true;
		CanBeBlocked = true;
		HitSound = "KunaiBodyHit";
		FluctuateHitSound = true;
		maxRepeats = 2;
		repeatWaitTime = 0.37;
		Point1 = CFrame.new(13, 6, 13);
		Point2 = CFrame.new(-13, -6, -13);
		StandardDamage = true;
		StunTime = 1;
		TouchingParts = true;
		ID = "";
		GUIName = "Skill10E";
		Description = "720 degree double hitting spin";
	};
	["Weighted Kick"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				Substitution = true;
			};
			["Chakra Shard"] = true;
			["Combat Scroll"] = true;
		};
		BlockedSkills = {
			["Kunai Throw"] = true;
			["Greatsword Training"] = true;
			["Blinding Strike"] = true;
			["Twin Strike"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Taijutsu";
		ServerWaitTime = 0;
		LoadUpTime = 0.7;
		NoHold = true;
		UseWhileKnocked = false;
		StunDeactivate = false;
		StartUpAnim = "RoundhouseKick";
		DontStopStart = true;
		EndActionAnim = 1;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 0.9;
		Cooldown = 8;
		Damage = 17;
		BlockBreaks = true;
		Knockback = true;
		CausesBleed = false;
		SlashEffect = false;
		CanBeBlocked = false;
		HitSound = "HeavyPunch";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		Point1 = CFrame.new(5, 5, 1.5);
		Point2 = CFrame.new(-5, -5, -10);
		StandardDamage = true;
		StunTime = 1.5;
		TouchingParts = true;
		ID = "";
		GUIName = "Skill14A";
		Description = "Create a powerful kick to knockback an enemy. 50% damage to break armor.";
	};
	["Twin Strike"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chip Damage"] = true;
			};
			["Chakra Shard"] = true;
			["Combat Scroll"] = true;
			BlockedSkills = {
				["Kunai Throw"] = true;
				["Blinding Strike"] = true;
				["Weighted Kick"] = true;
				["Vertical Slash"] = true;
			};
		};
		SkillType = "Skill";
		SkillType2 = "Close Combat";
		ServerWaitTime = 0.36;
		NoHold = true;
		UseWhileKnocked = false;
		StunDeactivate = false;
		HyperArmour = false;
		RequiresWeapon = {"Halberd"};
		StartUpAnim = "TwinStrike";
		DontStopStart = true;
		EndActionAnim = 1;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 0.72;
		Cooldown = 10;
		Damage = 7;
		BlockBreaks = true;
		Knockback = false;
		CausesBleed = true;
		Bleed = 6;
		SlashEffect = true;
		CanBeBlocked = true;
		HitSound = "SwordAttack";
		FluctuateHitSound = true;
		maxRepeats = 2;
		repeatWaitTime = 0.3;
		Point1 = CFrame.new(4.5, 4.5, -1);
		Point2 = CFrame.new(-4.5, -4.5, -14);
		StandardDamage = true;
		StunTime = 0.8;
		TouchingParts = true;
		ID = "11639201780";
		GUIName = "Skill12A";
		Description = "Lunge forwards with your spear";
	};
	["Charged Ram"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Twin Strike"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Close Combat";
		MouseButton = 1;
		CanDeactivate = true;
		ServerWaitTime = 0;
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		RequiresWeapon = {"Halberd"};
		StartUpAnim = "Run";
		DontStopStart = true;
		EndActionAnim = 1.7;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 3;
		Cooldown = 10;
		Damage = 5;
		BlockBreaks = false;
		Knockback = true;
		CausesBleed = true;
		SlashEffect = true;
		CanBeBlocked = true;
		HitSound = "SwordAttack";
		FluctuateHitSound = true;
		maxRepeats = 6;
		repeatWaitTime = 0.3;
		Point1 = CFrame.new(4, 4, -3);
		Point2 = CFrame.new(-4, -4, -18);
		StandardDamage = true;
		StunTime = 0.8;
		TouchingParts = true;
		ID = "11639188976";
		GUIName = "Skill12B";
		Description = "Charge forwards.";
	};
	["Overhead Spin"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Charged Ram"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton1 = "Overhead Spin";
		MouseButton2 = "Spinning Glide";
		CanDeactivate = true;
		ServerWaitTime = 0;
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		RequiresWeapon = {"Halberd"};
		StartUpAnim = "HalberdSpin";
		DontStopStart = true;
		EndActionAnim = 2.5;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 2.5;
		Cooldown = 12;
		SharedCooldown = {"Spinning Glide"};
		Damage = 3;
		Knockback = true;
		CausesBleed = true;
		Bleed = 3;
		SlashEffect = true;
		CanBeBlocked = true;
		HitSound = "SwordAttack";
		FluctuateHitSound = true;
		maxRepeats = 10;
		repeatWaitTime = 0.25;
		Point1 = CFrame.new(10, 5, 10);
		Point2 = CFrame.new(-10, -3, -10);
		StandardDamage = true;
		StunTime = 0.5;
		TouchingParts = true;
		ID = "11639199021";
		GUIName = "Skill12C";
		Description = "Spin in 360 degree motion with halberd";
	};
	["Chain Pull"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Overhead Spin"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		LoadUpTime = 0.4;
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		RequiresWeapon = {"Halberd"};
		StartUpAnim = "ChainPull";
		DontStopStart = true;
		EndActionAnim = 1;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 0.5;
		Cooldown = 8;
		Damage = 10;
		Knockback = false;
		CausesBleed = true;
		SlashEffect = true;
		CanBeBlocked = true;
		HitSound = "SwordAttack";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 0.2;
		Point1 = CFrame.new(5, 5, -3);
		Point2 = CFrame.new(-5, -5, -20);
		StandardDamage = true;
		StunTime = 1.5;
		TrueStun = true;
		OnlyHitsOne = true;
		TouchingParts = true;
		ID = "11639183423";
		GUIName = "Skill12D";
		Description = "Pull in an enemy";
	};
	["Spinning Glide"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chain Pull"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		JumpCounters = 1;
		MouseButton1 = "Overhead Spin";
		MouseButton2 = "Spinning Glide";
		CanDeactivate = true;
		ServerWaitTime = 0;
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		RequiresWeapon = {"Halberd"};
		StartUpAnim = "GlidingSpin";
		DontStopStart = true;
		EndActionAnim = 5;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 5;
		Cooldown = 12;
		SharedCooldown = {"Overhead Spin"};
		Damage = 2;
		Knockback = true;
		CausesBleed = true;
		Bleed = 4;
		SlashEffect = true;
		CanBeBlocked = true;
		HitSound = "SwordAttack";
		FluctuateHitSound = true;
		maxRepeats = 17;
		repeatWaitTime = 0.25;
		Point1 = CFrame.new(10, 5, 10);
		Point2 = CFrame.new(-10, -3, -10);
		StandardDamage = true;
		StunTime = 0.5;
		TouchingParts = true;
		ID = "";
		GUIName = "Skill12E";
		Description = "Overhead spin with a glide";
	};
	["Chakra Infused Slam"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Spinning Glide"] = true;
			};
			["Chakra Fragments"] = true;
			["Chakra Heart"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Close Combat";
		NoHold = true;
		UseWhileKnocked = false;
		StunDeactivate = false;
		HyperArmour = false;
		RequiresWeapon = {"Halberd"};
		StartUpAnim = "HalberdChakraSlam";
		DontStopStart = true;
		EndActionAnim = 1.7;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 0.8;
		Cooldown = 11;
		JutsuSealingTime = 7;
		Damage = 17;
		BlockBreaks = true;
		Knockback = false;
		CausesBleed = true;
		Bleed = 13;
		SlashEffect = true;
		CanBeBlocked = false;
		CanBePerfectGuarded = true;
		DontResetParentFound = true;
		HitSound = "SwordAttack";
		FluctuateHitSound = true;
		maxRepeats = 4;
		repeatWaitTime = 0.05;
		Point1 = CFrame.new(5, 5, -4);
		Point2 = CFrame.new(-5, -5, -70);
		StandardDamage = true;
		StunTime = 2;
		TouchingParts = true;
		ID = "11639186582";
		GUIName = "Skill12F";
		Description = "Form a chakra spear";
	};
	["Leaf Whirlwind"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Weighted Kick"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Taijutsu";
		ServerWaitTime = 0;
		LoadUpTime = 0.2;
		NoHold = true;
		MouseButton1 = "Leaf Whirlwind";
		MouseButton2 = "Improved Whirlwind";
		UseWhileKnocked = false;
		StunDeactivate = false;
		HyperArmour = true;
		StartUpAnim = "LeafWhirlWind";
		DontStopStart = true;
		EndActionAnim = 0.95;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 0.85;
		Cooldown = 8;
		SharedCooldown = {"Improved Whirlwind"};
		Damage = 10;
		BlockBreaks = true;
		Knockback = false;
		CausesBleed = false;
		SlashEffect = false;
		CanBeBlocked = true;
		HitSound = "FistAttack1";
		FluctuateHitSound = true;
		maxRepeats = 2;
		repeatWaitTime = 0.3;
		Point1 = CFrame.new(5, 5, 1.5);
		Point2 = CFrame.new(-5, -5, -8);
		StandardDamage = true;
		StunTime = 0.8;
		TouchingParts = true;
		ID = "9467861275";
		GUIName = "Skill14B";
		Description = "Release two kicks.";
	};
	["Dynamic Entry"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Leaf Whirlwind"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Taijutsu";
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		StartUpAnim = "DynamicEntry";
		DontStopStart = true;
		EndActionAnim = 1;
		JumpCounters = 1;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.9;
		Cooldown = 12;
		Damage = 11;
		BlockBreaks = true;
		Knockback = false;
		CausesBleed = false;
		SlashEffect = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		DontResetParentFound = true;
		HitSound = "FistAttack1";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 0.2;
		Point1 = CFrame.new(3, 3, 0.5);
		Point2 = CFrame.new(-3, -3, -7);
		StandardDamage = true;
		StunTime = 0.8;
		ID = "9467828290";
		GUIName = "Skill14C";
		Description = "A flying kick";
	};
	["Primary Lotus"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "Taijutsu";
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = true;
		IgnoresHyperArmour = true;
		StartUpAnim = "LotusKickUp";
		DontStopStart = true;
		EndActionAnim = 0.85;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 2.5;
		Cooldown = 11;
		SharedCooldown = {"Improved Barrage", "Lion's Barrage"};
		Damage = 5;
		BlockBreaks = false;
		Knockback = false;
		CausesBleed = false;
		SlashEffect = false;
		CanBeBlocked = true;
		HitSound = "FistAttack1";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 0.2;
		Point1 = CFrame.new(3, 5, 1);
		Point2 = CFrame.new(-3, -3, -5.5);
		StandardDamage = true;
		TrueStun = true;
		StunTime = 2.8;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Lion's Barrage"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Dynamic Entry"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Taijutsu";
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		IgnoresHyperArmour = true;
		JumpCounters = 1;
		MouseButton1 = "Lion's Barrage";
		MouseButton2 = "Improved Barrage";
		StartUpAnim = "KickUp";
		DontStopStart = true;
		EndActionAnim = 0.85;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 1.7;
		Cooldown = 12;
		SharedCooldown = {"Improved Barrage", "Primary Lotus"};
		Damage = 15;
		BlockBreaks = false;
		Knockback = true;
		CausesBleed = false;
		SlashEffect = false;
		CanBeBlocked = true;
		HitSound = "FistAttack1";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 0.2;
		Point1 = CFrame.new(3, 3, 1);
		Point2 = CFrame.new(-3, -3, -5);
		StandardDamage = true;
		StunTime = 1.5;
		ID = "";
		GUIName = "Skill14D";
		Description = "up and down";
	};
	["Taijutsu Combat"] = {
		Requirements = {
			Skills = {
				["Lion's Barrage"] = true;
			};
			Acumen = 60;
			["Chakra Fragments"] = true;
			["Redsmith's Mold"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill14F";
		Description = "Your base combat is improved";
	};
	["Improved Barrage"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Taijutsu Combat"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		IgnoresHyperArmour = true;
		StartUpAnim = "KickUp";
		DontStopStart = true;
		EndActionAnim = 0.85;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 2.7;
		Cooldown = 11;
		SharedCooldown = {"Lion's Barrage", "Primary Lotus"};
		Damage = 5;
		BlockBreaks = false;
		Knockback = true;
		CausesBleed = false;
		SlashEffect = false;
		CanBeBlocked = true;
		HitSound = "FistAttack1";
		FluctuateHitSound = true;
		maxRepeats = 1;
		repeatWaitTime = 0.3;
		Point1 = CFrame.new(3, 3, 1);
		Point2 = CFrame.new(-3, -3, -5.5);
		StunTime = 2;
		ID = "";
		GUIName = "Skill14G";
		Description = "M2 variant of Lion's Barrage";
	};
	["Improved Whirlwind"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Taijutsu Combat"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		ServerWaitTime = 0;
		LoadUpTime = 0.2;
		NoHold = true;
		MouseButton1 = "Leaf Whirlwind";
		MouseButton2 = "Improved Whirlwind";
		UseWhileKnocked = false;
		StunDeactivate = false;
		HyperArmour = true;
		StartUpAnim = "Whirlwind2";
		DontStopStart = true;
		EndActionAnim = 1.3;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 1.2;
		Cooldown = 5;
		SharedCooldown = {"Leaf Whirlwind"};
		Damage = 7;
		BlockBreaks = true;
		Knockback = true;
		CausesBleed = false;
		SlashEffect = false;
		CanBeBlocked = true;
		HitSound = "FistAttack1";
		FluctuateHitSound = true;
		maxRepeats = 3;
		repeatWaitTime = 0.35;
		Point1 = CFrame.new(5, 5, 1.5);
		Point2 = CFrame.new(-5, -5, -8);
		StandardDamage = true;
		StunTime = 0.8;
		TouchingParts = true;
		ID = "";
		GUIName = "Skill14H";
		Description = "M2 variant of Leaf Whirlwind";
	};
	["The Basics of Summoning"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Feet"] = true;
			};
			["Chakra Shard"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill19A";
		Description = "Grants the knowledge required to perform summonings";
		BranchName = "Summoning";
	};
	["Cratos Summoning"] = {
		Requirements = {
			Ryo = 75;
			Skills = {
				["The Basics of Summoning"] = true;
			};
			["Summoning Scroll"] = true;
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Summoning";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 30;
		Cooldown = 80;
		SummoningColor = Color3.fromRGB(255, 204, 0);
		aliveTime = 30;
		AvoidRegionCheck = true;
		Sound = "DeathPoof";
		ID = "";
		GUIName = "Skill19B";
		Description = "Summons Cratos";
		BranchName = "Summoning";
	};
	["Barbarian Summoning"] = {
		Requirements = {
			Ryo = 100;
			Skills = {
				["Cratos Summoning"] = true;
			};
			["Summoning Scroll"] = true;
			["Chakra Fragments"] = 2;
		};
		SkillType = "Skill";
		SkillType2 = "Summoning";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 40;
		Cooldown = 120;
		SummoningColor = Color3.fromRGB(255, 255, 255);
		aliveTime = 25;
		AvoidRegionCheck = true;
		Sound = "DeathPoof";
		ID = "";
		GUIName = "Skill19C";
		Description = "Summons the Barbarian";
		BranchName = "Summoning";
	};
	["Pentadummy Summoning"] = {
		Requirements = {
			Ryo = 150;
			Skills = {
				["Barbarian Summoning"] = true;
			};
			["Summoning Scroll"] = true;
			["Chakra Fragments"] = 2;
		};
		SkillType = "Skill";
		SkillType2 = "Summoning";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 45;
		Cooldown = 100;
		SummoningColor = Color3.fromRGB(255, 204, 0);
		AvoidRegionCheck = true;
		Sound = "DeathPoof";
		ID = "";
		GUIName = "Skill19D";
		Description = "Summons 5 explosion dummies";
		BranchName = "Summoning";
	};
	["Summoning Mastery"] = {
		Requirements = {
			Acumen = 250;
			Skills = {
				["Pentadummy Summoning"] = true;
			};
			["Chakra Fragments"] = 2;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill19E";
		Description = "Summons remain for an extra 10 seconds.";
		BranchName = "Summoning";
	};
	["Barbarit Summoning"] = {
		Requirements = {
			Ryo = 250;
			Skills = {
				["Summoning Mastery"] = true;
			};
			["Summoning Scroll"] = true;
			["Chakra Fragments"] = 2;
		};
		SkillType = "Skill";
		SkillType2 = "Summoning";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 55;
		Cooldown = 180;
		SummoningColor = Color3.fromRGB(255, 255, 255);
		aliveTime = 22;
		AvoidRegionCheck = true;
		Sound = "DeathPoof";
		ID = "";
		GUIName = "Skill19F";
		Description = "Summons Barbarit The Rose";
		BranchName = "Summoning";
	};
	["Improved Stamina"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				Substitution = true;
			};
			["Chakra Shard"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill18A";
		Description = "Adds an additional stamina counter.";
		BranchName = "Acrobat";
	};
	["Core Strength"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Improved Stamina"] = true;
			};
			["Chakra Fragments"] = true;
			["Parkour Scroll"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill18B";
		Description = "You can hold a vault for much longer.";
		BranchName = "Acrobat";
	};
	["Efficient Substitution"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Core Strength"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill18C";
		Description = "Your substitutions no longer require chakra.";
		BranchName = "Acrobat";
	};
	Lightweight = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Efficient Substitution"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill18D";
		Description = "Fall damage is reduced by 10%";
		BranchName = "Acrobat";
	};
	["Aerial Backflip"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				Lightweight = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill18E";
		Description = "Dashing backwards on land is followed by a jump";
		BranchName = "Acrobat";
	};
	["Flicker Step"] = {
		Requirements = {
			Acumen = 40;
			Skills = {
				Lightweight = true;
			};
			["Chakra Fragments"] = true;
		};
		BlockedSkills = {
			["Lightning Dodge"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill18F";
		Description = "Your dash is replaced by a fluid fast-paced movement.";
		BranchName = "Acrobat";
	};
	["Improved Stomach"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				Substitution = true;
			};
			["Chakra Shard"] = true;
			["Chef's Kiss"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill16A";
		Description = "Adds an additional food counter.";
	};
	["Doubled Harvest"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Improved Stomach"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill16B";
		Description = "50% chance to pick up twice as many fruits.";
		BranchName = "Chef";
	};
	["Doubled Produce"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Doubled Harvest"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill16C";
		Description = "50% chance to cook twice as many fruit bowls";
		BranchName = "Chef";
	};
	["Gourmet's Secrets"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Doubled Produce"] = true;
			};
			["Chakra Fragments"] = true;
			["Tangerina Fruit Bowl"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill16D";
		Description = "You can cook a wider range of fruit bowls";
		BranchName = "Chef";
	};
	["Fruit Summoning"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Gourmet's Secrets"] = true;
			};
			["Chakra Fragments"] = true;
			["Bolive Soup"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Chef";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 15;
		Cooldown = 13;
		Damage = 0;
		HitsRagdolled = true;
		CausesBleed = true;
		StunTime = 0;
		maxRepeats = 1;
		repeatWaitTime = 1;
		TouchingParts = false;
		Point1 = CFrame.new(7, 3, 7);
		Point2 = CFrame.new(-7, -3, -7);
		ID = "";
		GUIName = "Skill16E";
		Description = "Allows you to summon 3 fruits.";
		BranchName = "Chef";
	};
	["Bowl Summoning"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Gourmet's Secrets"] = true;
			};
			["Chakra Fragments"] = true;
			["Chakra Soup"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Chef";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 16;
		Cooldown = 12;
		Damage = 0;
		HitsRagdolled = true;
		CausesBleed = true;
		StunTime = 0;
		maxRepeats = 1;
		repeatWaitTime = 1;
		TouchingParts = false;
		Point1 = CFrame.new(7, 3, 7);
		Point2 = CFrame.new(-7, -3, -7);
		ID = "";
		GUIName = "Skill16F";
		Description = "Allows you to summon three empty bowls";
		BranchName = "Chef";
	};
	["Smoldering Earth"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Pellet"] = true;
			};
			["Ground Gem"] = true;
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Earth";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 15;
		Cooldown = 7;
		Damage = 20;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 1.5;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		HitSound = "FistAttack1";
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		Sound = "SmolderingEarth";
		Ailment = "Earth";
		ID = "6915154832";
		GUIName = "Skill4A";
		Description = "Protrudes the earth beneath you to knockback enemies.";
		BranchName = "Earth";
	};
	["Butterfly Slam"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		UseWhileKnocked = false;
		DontStopStart = true;
		ActionAnim = "HighQualGroundSmash";
		EndActionAnim = 1;
		PreLandWaitTime = 0.2;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.65;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 15;
		Cooldown = 11;
		JutsuSealingTime = 8;
		Damage = 27;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 1.5;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		HitSound = "FistAttack1";
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		ID = "";
		GUIName = "";
		Description = "Smash the ground with immense force";
	};
	["Earth Slam"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Earth Dragon"] = true;
			};
			["Ground Gem"] = true;
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Earth";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HighQualGroundSmash";
		EndActionAnim = 1;
		PreLandWaitTime = 0.3;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 0.8;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 16;
		Cooldown = 11;
		Damage = 26;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 1.5;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		HitSound = "FistAttack1";
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		Ailment = "Earth";
		ID = "";
		GUIName = "Skill4D";
		Description = "Smash the ground with immense force";
		BranchName = "Earth";
	};
	["Earth Wall"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Smoldering Earth"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Earth";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 10;
		Cooldown = 5;
		AvoidRegionCheck = true;
		Sound = "SmolderingEarth";
		ID = "7174334386";
		GUIName = "Skill4B";
		Description = "Creates an earth wall to block incoming attacks or wall off an area";
		BranchName = "Earth";
	};
	["Earth Golem"] = {
		Requirements = {
			Ryo = 150;
			Skills = {
				["Dome Defense"] = true;
			};
			["Ground Gem"] = true;
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Earth";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 25;
		Cooldown = 60;
		aliveTime = 30;
		AvoidRegionCheck = true;
		Sound = "SmolderingEarth";
		ID = "10524446216";
		GUIName = "Skill4F";
		Description = "Summons an earth golem";
		BranchName = "Earth";
	};
	["Dome Defense"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Earth Slam"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Earth";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 2;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "Stop";
		IgnoreActionIfMastered = "Walk";
		OccupiedTime = 5;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 15;
		Cooldown = 20;
		Damage = 0;
		BlockBreaks = false;
		StopsCarry = false;
		HitsRagdolled = false;
		Knockback = false;
		CanBeBlocked = true;
		CanBePerfectBlocked = false;
		CanBePerfectGuarded = false;
		maxRepeats = 5;
		repeatWaitTime = 1;
		StandardDamage = true;
		Point1 = CFrame.new(30, 30, 30);
		Point2 = CFrame.new(-30, -30, -30);
		TouchingParts = true;
		Ailment = "Earth";
		ID = "";
		GUIName = "Skill4E";
		Description = "Gives temporary invincibility";
		BranchName = "Earth";
	};
	["Earth Dragon"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Earth Wall"] = true;
			};
			["Chakra Fragments"] = true;
			["Earth Scroll"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Earth";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 15;
		Cooldown = 10;
		InstantKill = true;
		Damage = 24;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 1.5;
		Knockback = true;
		CausesBleed = false;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		DontResetParentFound = true;
		maxRepeats = 20;
		repeatWaitTime = 0.3;
		StandardDamage = true;
		Sound = "SmolderingEarth";
		TouchingParts = true;
		Ailment = "Earth";
		DestructionCounters = 0;
		ID = "";
		GUIName = "Skill4C";
		Description = "Fires out a dragon head molded from the earth.";
		BranchName = "Earth";
	};
	Fireball = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Pellet"] = true;
			};
			["Flame Gem"] = true;
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Fire";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "AirBlow";
		EndActionAnim = 0.5;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ChakraCost = 18;
		Cooldown = 7;
		Damage = 19;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 2;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		AffectsSelf = true;
		Sound = "Fireball";
		Ailment = "Fire";
		ID = "6970371932";
		GUIName = "Skill8A";
		Description = "Shoot out a fireball and hurl it at your enemies.";
		BranchName = "Fire";
	};
	["Phoenix Flower"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				Fireball = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Fire";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "AirBlow";
		EndActionAnim = 0.5;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.7;
		ActivateSound = "SkillActivate";
		ChakraCost = 20;
		Cooldown = 10;
		Damage = 20;
		HitsRagdolled = true;
		StunTime = 2;
		Knockback = true;
		CanBeBlocked = true;
		maxRepeats = 3;
		repeatWaitTime = 0.2;
		StandardDamage = true;
		Sound = "Fireball";
		Ailment = "Fire";
		ID = "7174298850";
		GUIName = "Skill8B";
		Description = "Shoot out multiple mini fireballs";
		BranchName = "Fire";
	};
	["Twin Flame Dragons"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Fire Seal"] = true;
			};
			["Chakra Fragments"] = true;
			["Flame Scroll"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Fire";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "AirBlowUp";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ChakraCost = 20;
		Cooldown = 15;
		Damage = 14;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 2;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectGuarded = true;
		Point1 = Vector3.new(20, 20, 20);
		Point2 = Vector3.new(-20, -20, -20);
		maxRepeats = 2;
		repeatWaitTime = 0.3;
		StandardDamage = true;
		AffectsSelf = true;
		Ailment = "Fire";
		ID = "";
		GUIName = "Skill8F";
		Description = "Construct fire dragons to launch at your enemies";
		BranchName = "Fire";
	};
	["Dragonic Flames"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Phoenix Flower"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Fire";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "AirBlow";
		WindUpMovement = "Walk";
		BlocksJumping = true;
		ActionMovement = "";
		OccupiedTime = 6;
		EndActionAnim = 6;
		ActivateSound = "SkillActivate";
		ChakraDrain = 2;
		Cooldown = 14;
		Damage = 3;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 1.2;
		Knockback = true;
		CanBeBlocked = true;
		maxRepeats = 24;
		repeatWaitTime = 0.25;
		StandardDamage = true;
		Sound = "Fireball";
		UpdateRegions = true;
		Point1 = CFrame.new(9, 9, -1.5);
		Point2 = CFrame.new(-9, -9, -24);
		Ailment = "Fire";
		ID = "7174294477";
		GUIName = "Skill8C";
		Description = "Exhale a stream of fire";
		BranchName = "Fire";
	};
	["Flame Company"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Dragonic Flames"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Fire";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "DoubleHandWave";
		EndActionAnim = 1;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 1;
		EndOccupiedEarly = true;
		ActivateSound = "SkillActivate";
		ChakraCost = 20;
		Cooldown = 10;
		Damage = 4;
		HitsRagdolled = true;
		CanBeBlocked = true;
		maxRepeats = 5;
		repeatWaitTime = 0.3;
		StandardDamage = true;
		Sound = "Fireball";
		Ailment = "Fire";
		ID = "8204563340";
		GUIName = "Skill8D";
		Description = "Create floating fireballs that will fire at whoever you attack.";
		BranchName = "Fire";
	};
	["Fire Seal"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Flame Company"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Fire";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "SkillHold";
		WindUpMovement = "Walk";
		BlocksJumping = false;
		InitialActionAnim = "RightHandWave";
		InitialStop = true;
		ActionTime = 0.5;
		ActionMovement = "";
		MasteryAllowsDashing = true;
		CanSkillRun = true;
		OccupiedTime = 6;
		EndActionAnim = 6;
		ActivateSound = "SkillActivate";
		ChakraCost = 15;
		Cooldown = 16;
		SkillSpeedBoost = 1.5;
		Damage = 16;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 1.5;
		JutsuSealingTime = 10;
		CausesBleed = true;
		Bleed = 8;
		CanBeBlocked = false;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		UpdateRegions = false;
		Point1 = CFrame.new(4, 4, 4);
		Point2 = CFrame.new(-4, -4, -4);
		Ailment = "Fire";
		ID = "";
		GUIName = "Skill8E";
		Description = "Harness the power of fire in your palm";
		BranchName = "Fire";
	};
	Chidori = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Pellet"] = true;
			};
			["Spark Gem"] = true;
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "SkillHold";
		AllowsDashing = true;
		WindUpMovement = "Walk";
		BlocksJumping = false;
		InitialActionAnim = "ChidoriStartUp";
		InitialStop = true;
		ActionTime = 0.5;
		ActionMovement = "";
		CanSkillRun = true;
		OccupiedTime = 6;
		EndActionAnim = 6;
		ActivateSound = "SkillActivate";
		ChakraCost = 22;
		Cooldown = 15;
		SkillSpeedBoost = 1.8;
		Damage = 22;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 1.5;
		CausesBleed = true;
		Bleed = 18;
		CanBeBlocked = false;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		UpdateRegions = false;
		Point1 = CFrame.new(4, 4, 4);
		Point2 = CFrame.new(-4, -4, -4);
		Ailment = "Lightning";
		DestructionCounters = 5;
		ID = "7182549279";
		GUIName = "Skill7A";
		Description = "Harness the power of lighting in your palm";
		BranchName = "Lightning";
	};
	["Revival Healing"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Pellet"] = true;
			};
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Healing";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "ArmsTogetherDown";
		EndActionAnim = 3;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 3;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraDrain = 4;
		Cooldown = 14;
		HealingAmountPerSecond = 8;
		Damage = 0;
		HitsRagdolled = true;
		Point1 = CFrame.new(6, 4, 6);
		Point2 = CFrame.new(-6, -4, -6);
		CanBeBlocked = false;
		HitSound = "";
		maxRepeats = 3;
		repeatWaitTime = 1;
		ID = "7267050653";
		GUIName = "Skill9A";
		Description = "Heals knocked players in the vicinity and revives them faster.";
		BranchName = "Healing";
	};
	["Injury Heal"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Self Purification"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Healing";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "DoubleHandWave";
		EndActionAnim = 1;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 1;
		ActivateSound = "SkillActivate";
		ChakraCost = 15;
		Cooldown = 1;
		HitSound = "";
		maxRepeats = 1;
		repeatWaitTime = 1;
		ID = "11639160808";
		GUIName = "Skill9D";
		Description = "Heals the injuries of your allies.";
		BranchName = "Healing";
	};
	["Hundred Healings"] = {
		Requirements = {
			Acumen = 100;
			Skills = {
				["Yin Seal"] = true;
			};
			["Chakra Fragments"] = 3;
		};
		SkillType = "Awakening";
		ID = "9480271723";
		Description = "Allows you to keep fighting regardless of health";
		ActivationAnimation = "RageAwaken";
		GUIName = "Skill9G";
		Freeze = 1;
		BranchName = "Healing";
	};
	["Healing Assist"] = {
		Requirements = {
			Ryo = 100;
			Skills = {
				["Hundred Healings"] = true;
			};
			["Chakra Fragments"] = 2;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill9H";
		Description = "Awakening with Hundred Healings restores health";
	};
	["Butterfly Mode"] = {
		Requirements = {};
		SkillType = "Awakening";
		ID = "";
		Description = "Infuse your chakra and take flight";
		ActivationAnimation = "RageAwaken";
		MouseButton1 = "Butterfly Flight";
		MouseButton2 = "Butterfly Slam";
		GUIName = "";
		Freeze = 1;
		BranchName = "";
	};
	Gates = {
		Requirements = {
			Ryo = 150;
			Skills = {
				["Improved Barrage"] = true;
				["Improved Whirlwind"] = true;
			};
			["Fighter's Wraps"] = true;
			["Chakra Fragments"] = 3;
		};
		SkillType = "Awakening";
		ID = "11269350690";
		Description = "Harness your inner gates";
		ActivationAnimation = "GatesAwaken";
		SpeedIncrease = 5;
		MouseButton1 = "Flicker Teleport";
		MouseButton2 = "Primary Lotus";
		GUIName = "Skill14I";
		Freeze = 2;
	};
	["Shark Transformation"] = {
		Requirements = {
			Acumen = 75;
			Skills = {
				["Water Wave"] = true;
			};
			["Chakra Fragments"] = 2;
			["Hoshigaki Affinity"] = true;
		};
		SkillType = "Awakening";
		ID = "";
		Description = "Transform into SHARK";
		ActivationAnimation = "RageAwaken";
		XPRequired = 150;
		MouseButton1 = "Water Region";
		GUIName = "Skill5E";
		Freeze = 1;
		BranchName = "Water";
	};
	["Binding Seal"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Sealing Floor"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Sealing";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 16;
		Cooldown = 10;
		JutsuSealingTime = 15;
		Damage = 0;
		HitsRagdolled = true;
		CausesBleed = true;
		CanBeBlocked = false;
		StunTime = 0;
		maxRepeats = 10;
		repeatWaitTime = 1;
		StandardDamage = false;
		TouchingParts = true;
		Point1 = CFrame.new(7, 3, 7);
		Point2 = CFrame.new(-7, -3, -7);
		Ailment = "Sealing";
		ID = "8528043336";
		GUIName = "Skill15B";
		Description = "Seal knocked players in place.";
		BranchName = "Sealing";
	};
	["Sealing Barrier Rod"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Sealing Banners"] = true;
			};
			["Chakra Fragments"] = true;
			["Sealing Bells"] = true;
		};
		VerticalDistance = 250;
		MaxRodDistance = 500;
		RodDestroyTime = 120;
		SkillType = "Skill";
		SkillType2 = "Sealing";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 8;
		Cooldown = 6;
		JutsuSealingTime = 0;
		Damage = 0;
		HitsRagdolled = true;
		CausesBleed = true;
		CanBeBlocked = false;
		StunTime = 0;
		maxRepeats = 1;
		repeatWaitTime = 1;
		TouchingParts = false;
		Point1 = CFrame.new(7, 3, 7);
		Point2 = CFrame.new(-7, -3, -7);
		ID = "8722713596";
		GUIName = "Skill15D";
		Description = "Create a sealing rod. Can be used to form barriers.";
		BranchName = "Sealing";
	};
	["Extraction Seal"] = {
		Requirements = {
			Ryo = 300;
			Skills = {
				["Sealing Barrier Rod"] = true;
			};
			["Chakra Fragments"] = true;
			["Uzumaki Affinity"] = true;
		};
		CanDeactivate = true;
		SkillType = "Skill";
		SkillType2 = "Sealing";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "Extraction";
		EndActionAnim = 3;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 3;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 25;
		Cooldown = 12;
		Damage = 0;
		HitsRagdolled = true;
		CausesBleed = true;
		CanBeBlocked = false;
		StunTime = 0;
		maxRepeats = 1;
		repeatWaitTime = 1;
		TouchingParts = false;
		Point1 = CFrame.new(7, 3, 7);
		Point2 = CFrame.new(-7, -3, -7);
		Ailment = "Sealing";
		ID = "";
		GUIName = "Skill15E";
		Description = "Used to extract eyes with visual prowess";
		BranchName = "Sealing";
	};
	["Adamantine Sealing Chains"] = {
		Requirements = {
			Acumen = 150;
			Skills = {
				["Extraction Seal"] = true;
			};
			["Reanimated Soul"] = true;
			["Uzumaki Affinity"] = true;
		};
		SkillType = "Awakening";
		ID = "";
		Description = "Grants immobilising techniques";
		ActivationAnimation = "RageAwaken";
		MouseButton1 = "Protruding Chains";
		MouseButton2 = "Chains Of The Wild";
		GUIName = "Skill15F";
		Freeze = 1;
		BranchName = "Sealing";
	};
	["Chain Application"] = {
		Requirements = {
			Ryo = 100;
			Skills = {
				["Adamantine Sealing Chains"] = true;
			};
			["Reanimated Soul"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill15G";
		Description = "Adamantine Chains can be applied even when a weapon is equipped";
	};
	["Protruding Chains"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "Adamantine";
		MouseButton = 1;
		UseWhileKnocked = false;
		LoadUpTime = 0.3;
		NoHold = true;
		DontStopStart = true;
		ActionAnim = "LightningStream";
		EndActionAnim = 1.4;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 1.2;
		ActivateSound = "MissedAttack";
		ChakraCost = 13;
		Cooldown = 13;
		Damage = 14;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 1.3;
		Knockback = false;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		HitSound = "ChainHit";
		maxRepeats = 5;
		repeatWaitTime = 0.2;
		StandardDamage = true;
		TouchingParts = true;
		DontResetParentFound = true;
		Ailment = "Adamantine Seal";
	};
	["Chains Of The Wild"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "Adamantine";
		MouseButton = 2;
		UseWhileKnocked = false;
		LoadUpTime = 0.3;
		NoHold = true;
		DontStopStart = true;
		ActionAnim = "RageAwaken";
		EndActionAnim = 1.4;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 1.1;
		ActivateSound = "MissedAttack";
		ChakraCost = 15;
		Cooldown = 13;
		Damage = 15;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 1.3;
		Knockback = false;
		CanBeBlocked = false;
		CanBePerfectBlocked = false;
		CanBePerfectGuarded = true;
		HitSound = "ChainHit";
		maxRepeats = 5;
		repeatWaitTime = 0.2;
		StandardDamage = true;
		TouchingParts = true;
		DontResetParentFound = true;
		Ailment = "Adamantine Seal";
	};
	["Sealing Banners"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Binding Seal"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Sealing";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "Clash";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ChakraCost = 14;
		Cooldown = 20;
		JutsuSealingTime = 7;
		AvoidRegionCheck = true;
		DestroyTime = 15;
		ID = "8528043840";
		GUIName = "Skill15C";
		Description = "Generate sealing formulas on your arms.";
		BranchName = "Sealing";
	};
	["Healing Zone"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Revival Healing"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Healing";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 20;
		Cooldown = 22;
		HealingAmountPerSecond = 3;
		Damage = 0;
		HitsRagdolled = true;
		Point1 = CFrame.new(12.5, 7, 12.5);
		Point2 = CFrame.new(-12.5, 0, -12.5);
		CanBeBlocked = true;
		HitSound = "";
		maxRepeats = 6;
		repeatWaitTime = 1.5;
		AffectsSelf = true;
		TouchingParts = true;
		ID = "8144467219";
		GUIName = "Skill9B";
		Description = "Heals any player inside the zone for the duration of the ability";
		BranchName = "Healing";
	};
	["Self Purification"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Healing Zone"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Healing";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "SelfPurify";
		EndActionAnim = 3;
		HyperArmour = true;
		WindUpMovement = "Walk";
		BlocksJumping = false;
		ActionTime = 1;
		InitialWaitTime = 1;
		ActionMovement = "Stop";
		OccupiedTime = 1.8;
		ActivateSound = "SkillActivate";
		ChakraCost = 15;
		Cooldown = 15;
		HealingPercentage = 0.06;
		FoodCounters = 6;
		Damage = 0;
		CanBeBlocked = false;
		maxRepeats = 1;
		repeatWaitTime = 1;
		ID = "8144462458";
		GUIName = "Skill9C";
		Description = "Restores 6% of your health and 3 food counters. Removes all elemental ailments.";
		BranchName = "Healing";
	};
	["Yin Seal"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Injury Heal"] = true;
			};
			["Healing Scroll"] = true;
		};
		SkillType = "Passive";
		ID = "9480247797";
		GUIName = "Skill9E";
		Description = "Improves chakra reserves and healing output";
		BranchName = "Healing";
	};
	Coalescence = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Yin Seal"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Healing";
		MouseButton = 1;
		CanDeactivate = true;
		ServerWaitTime = 0.5;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "LightningStream";
		WindUpMovement = "Walk";
		BlocksJumping = false;
		ActionTime = 0.5;
		ActionMovement = "";
		OccupiedTime = 6;
		EndActionAnim = 6;
		ActivateSound = "SkillActivate";
		ChakraDrain = 3;
		Cooldown = 14;
		HealingAmountPerSecond = 5;
		maxRepeats = 7;
		repeatWaitTime = 1;
		TouchingParts = true;
		Point1 = CFrame.new(45, 0.25, 0.25);
		Point2 = CFrame.new(-45, -0.25, -0.25);
		ID = "10361132081";
		GUIName = "Skill9F";
		Description = "Channel a long-range beam to heal allies";
		BranchName = "Healing";
	};
	["Chakra Exchange"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Pellet"] = true;
			};
			["Chakra Fragments"] = true;
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Chakra";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		Handsigns = 4;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.5;
		ActivateSound = "SkillActivate";
		ChakraCost = 2;
		Cooldown = 15;
		Damage = 10;
		ChakraIncrease = 20;
		HitSound = "";
		maxRepeats = 1;
		repeatWaitTime = 0;
		AffectsSelf = true;
		TouchingParts = false;
		ID = "8204672598";
		GUIName = "Skill6A";
		Description = "Converts some of your health into chakra.";
		BranchName = "Chakra";
	};
	Pickpocket = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		StartUpAnim = "Pickpocket";
		DontStopStart = true;
		EndActionAnim = 0.4;
		PickpocketAmount = 3;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.3;
		ChakraCost = 0;
		Cooldown = 5;
		AvoidRegionCheck = true;
		ID = "";
		Description = "Steal unexpectedly.";
	};
	Infestation = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		CanDeactivate = false;
		LoadUpTime = 0.3;
		UseWhileKnocked = false;
		StartUpAnim = "BugsActivation";
		DontStopStart = true;
		EndActionAnim = 1;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 1;
		ChakraCost = 3;
		Cooldown = 2;
		AvoidRegionCheck = true;
		ID = "";
		Description = "Coat your arms with bugs";
	};
	["Chakra Pellet"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Charge"] = true;
				["Chakra Dash"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		StartUpAnim = "KunaiThrow";
		DontStopStart = true;
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.5;
		ChakraCost = 5;
		Cooldown = 15;
		AvoidRegionCheck = true;
		ID = "";
		GUIName = "Skill1F";
		Description = "";
	};
	["Clone Decoy"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Dash"] = true;
			};
			["Chakra Fragments"] = true;
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Clone";
		CanDeactivate = false;
		MouseButton1 = "Clone Decoy";
		MouseButton2 = "Clone Swap";
		UseWhileKnocked = false;
		Handsigns = 1;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.1;
		ActivateSound = "SkillActivate";
		ChakraCost = 11;
		Cooldown = 10;
		maxRepeats = 1;
		repeatWaitTime = 0;
		AffectsSelf = false;
		ID = "";
		GUIName = "Skill17A";
		Description = "Produces a decoy that runs ahead of you";
		BranchName = "Clones";
	};
	["Clone Swap"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Clone Decoy"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		SkillType2 = "Clone";
		CanDeactivate = false;
		UseWhileKnocked = false;
		Handsigns = 3;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.1;
		ActivateSound = "SkillActivate";
		ChakraCost = 5;
		Cooldown = 5;
		maxRepeats = 1;
		repeatWaitTime = 0;
		AffectsSelf = false;
		ID = "";
		GUIName = "Skill17B";
		Description = "Swaps your position with that of a clone. Clone Decoy M2";
		BranchName = "Clones";
	};
	Bamboozle = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Clone Swap"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Clone";
		CanDeactivate = false;
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 2;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 3;
		ActivateSound = "SkillActivate";
		BlocksJumping = false;
		ChakraCost = 14;
		Cooldown = 15;
		maxRepeats = 1;
		repeatWaitTime = 0;
		AffectsSelf = false;
		ID = "";
		GUIName = "Skill17C";
		Description = "Create multiple clones to cause confusion.";
		BranchName = "Clones";
	};
	["Clone Throw"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				Bamboozle = true;
			};
			["Chakra Fragments"] = true;
			["Cloning Scroll"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Clone";
		MouseButton = 1;
		ActionAnim = "CloneThrow";
		UseWhileKnocked = false;
		Handsigns = 1;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.4;
		ActivateSound = "SkillActivate";
		ChakraCost = 10;
		Cooldown = 6;
		Damage = 5;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 2;
		CanBePerfectGuarded = true;
		maxRepeats = 30;
		repeatWaitTime = 0.1;
		TouchingParts = true;
		Point1 = CFrame.new(5, 5, 0);
		Point2 = CFrame.new(-5, -5, -20);
		DontResetParentFound = true;
		StandardDamage = true;
		ID = "";
		GUIName = "Skill17D";
		Description = "Send a clone flying.";
		BranchName = "Clones";
	};
	["Duo Throw"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Clone Throw"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill17E";
		Description = "Clone throw launches two clones";
		BranchName = "Clones";
	};
	["Durable Clones"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Clone Throw"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill17F";
		Description = "Clones spawn with more health";
		BranchName = "Clones";
	};
	["Multi Shadow Clones"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Durable Clones"] = true;
				["Duo Throw"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Clone";
		CanDeactivate = false;
		MouseButton1 = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.1;
		ActivateSound = "SkillActivate";
		ChakraCost = 20;
		Cooldown = 50;
		maxRepeats = 1;
		repeatWaitTime = 0;
		AffectsSelf = false;
		ID = "";
		GUIName = "Skill17G";
		Description = "Creates two shadow clones to fight alongside you";
		BranchName = "Clones";
	};
	["Lightning Stream"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				Chidori = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 1;
		CanDeactivate = true;
		ServerWaitTime = 0.5;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "LightningStream";
		WindUpMovement = "Walk";
		BlocksJumping = false;
		ActionTime = 0.5;
		ActionMovement = "";
		OccupiedTime = 3;
		EndActionAnim = 3;
		ActivateSound = "SkillActivate";
		ChakraCost = 18;
		Cooldown = 12;
		Damage = 7;
		StunTime = 0.5;
		CausesBleed = true;
		Bleed = 5;
		CanBeBlocked = true;
		maxRepeats = 6;
		repeatWaitTime = 0.3;
		StandardDamage = true;
		UpdateRegions = true;
		TouchingParts = true;
		Point1 = CFrame.new(45, 0.25, 0.25);
		Point2 = CFrame.new(-45, -0.25, -0.25);
		Ailment = "Lightning";
		DestructionCounters = 1;
		ID = "7193886301";
		GUIName = "Skill7B";
		Description = "Extend forwards a stream of lightning";
		BranchName = "Lightning";
	};
	["Lightning Ripple"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Lightning Stream"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 1;
		CanDeactivate = false;
		ServerWaitTime = 0;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "GroundRipple";
		WindUpMovement = "Walk";
		BlocksJumping = false;
		ActionTime = 0.5;
		ActionMovement = "Walk";
		OccupiedTime = 1.4;
		EndActionAnim = 1.4;
		ActivateSound = "SkillActivate";
		ChakraCost = 20;
		Cooldown = 10;
		Damage = 8;
		BlockBreaks = true;
		MasteryBlockBreak = true;
		StunTime = 1;
		CausesBleed = true;
		Bleed = 4;
		CanBeBlocked = true;
		maxRepeats = 3;
		repeatWaitTime = 0.45;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Lightning";
		DestructionCounters = 1;
		ID = "7255566856";
		GUIName = "Skill7C";
		Description = "Electrify the ground. Behaves differently depending on ground.";
		BranchName = "Lightning";
	};
	["Bugs Swarm"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "Bugs";
		MouseButton1 = "Bugs Swarm";
		MouseButton2 = "Bugs Strike";
		CanDeactivate = false;
		ServerWaitTime = 0;
		LoadUpTime = 0.3;
		UseWhileKnocked = false;
		StartUpAnim = "RageAwaken";
		DontStopStart = true;
		EndActionAnim = 1;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.5;
		ChakraCost = 15;
		Cooldown = 18;
		CanBeBlocked = true;
		CanBePerfectGuarded = false;
		Damage = 3;
		maxRepeats = 10;
		repeatWaitTime = 1;
		StandardDamage = true;
		UpdateRegions = true;
		Point1 = CFrame.new(17, 17, 17);
		Point2 = CFrame.new(-17, -17, -17);
		Ailment = "Bugs";
		DestructionCounters = 1;
		HitSound = "BugsExplode";
		ID = "";
		GUIName = "";
		Description = "Unleash a swarm of bugs to immobilise chakra";
	};
	["Bugs Strike"] = {
		Requirements = {};
		SkillType = "Passive";
		SkillType2 = "Bugs";
		MouseButton = 1;
		CanDeactivate = false;
		ServerWaitTime = 0;
		LoadUpTime = 0.4;
		UseWhileKnocked = false;
		StartUpAnim = "DoubleArmsAhead";
		DontStopStart = true;
		EndActionAnim = 1;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.8;
		ChakraCost = 15;
		Cooldown = 10;
		CanBeBlocked = true;
		CanBePerfectGuarded = false;
		StunTime = 1.2;
		Damage = 11;
		maxRepeats = 3;
		repeatWaitTime = 0.75;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Bugs";
		DestructionCounters = 1;
		HitSound = "BugsExplode";
		ID = "";
		GUIName = "";
		Description = "Unleash a swarm of bugs to immobilise chakra";
	};
	["Lightning Strike"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Lightning Ripple"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 1;
		CanDeactivate = false;
		ServerWaitTime = 0;
		UseWhileKnocked = false;
		Handsigns = 3;
		EndActionAnim = 0.1;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.1;
		ActivateSound = "SkillActivate";
		ChakraCost = 17;
		Cooldown = 10;
		ExplosionWait = 1;
		MasteryExplosionWait = 0.75;
		MaxLightningDistance = 200;
		Damage = 20;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 2;
		CausesBleed = true;
		Bleed = 10;
		CanBePerfectGuarded = true;
		maxRepeats = 1;
		repeatWaitTime = 0;
		StandardDamage = true;
		Point1 = CFrame.new(22, 22, 22);
		Point2 = CFrame.new(-22, -22, -22);
		TouchingParts = true;
		Ailment = "Lightning";
		DestructionCounters = 1;
		ID = "";
		GUIName = "Skill7D";
		Description = "Strike the ground with a delayed lightning detonation.";
		BranchName = "Lightning";
	};
	Kirin = {
		Requirements = {
			Ryo = 250;
			Skills = {
				["Cloak Of Lightning"] = true;
			};
			["Chakra Fragments"] = 3;
			["Spark Gem"] = 5;
		};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 1;
		CanDeactivate = false;
		ServerWaitTime = 0;
		UseWhileKnocked = false;
		LoadUpTime = 0.8;
		EndActionAnim = 1.7;
		NoHold = true;
		StartUpAnim = "Kirin";
		DontStopStart = true;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 1;
		ActivateSound = "SkillActivate";
		ChakraCost = 25;
		Cooldown = 30;
		InstantKill = true;
		AffectsSelf = true;
		HitsRagdolled = true;
		ExplosionWait = 1;
		MaxLightningDistance = 300;
		Damage = 40;
		BlockBreaks = true;
		StopsCarry = true;
		IgnoresHyperArmour = true;
		StunTime = 2;
		CausesBleed = true;
		Bleed = 15;
		CanBePerfectGuarded = true;
		maxRepeats = 1;
		repeatWaitTime = 0;
		StandardDamage = true;
		Point1 = CFrame.new(18, 10, 18);
		Point2 = CFrame.new(-18, -10, -18);
		TouchingParts = true;
		Ailment = "Lightning";
		DestructionCounters = 5;
		ID = "";
		GUIName = "Skill7I";
		Description = "Call down a strike of lightning from the clouds";
		BranchName = "Lightning";
	};
	["Lightning Teleport"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		NoHold = true;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.2;
		ActivateSound = "LightningRipple";
		ChakraCost = 5;
		Cooldown = 5;
		Damage = 0;
		HitSound = "";
		maxRepeats = 1;
		repeatWaitTime = 0;
		AvoidRegionCheck = true;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Flicker Teleport"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		NoHold = true;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.2;
		ChakraCost = 5;
		Cooldown = 5;
		Damage = 0;
		HitSound = "";
		maxRepeats = 1;
		repeatWaitTime = 0;
		AvoidRegionCheck = true;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Water Region"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		BypassOccupied = true;
		InstantKill = true;
		NoHold = true;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.2;
		ActivateSound = "LightningRipple";
		ChakraCost = 15;
		Cooldown = 25;
		Damage = 3;
		BlockBreaks = false;
		StopsCarry = false;
		StunTime = 0;
		Knockback = false;
		CanBeBlocked = true;
		CausesBleed = true;
		Bleed = 4;
		SlashEffect = true;
		CanBePerfectBlocked = false;
		maxRepeats = 10;
		repeatWaitTime = 0.9;
		StandardDamage = true;
		DontResetParentFound = false;
		TouchingParts = true;
		Ailment = "Water";
		HitSound = "SwordAttack";
		FluctuateHitSound = true;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Lightning Drop"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "Lightning";
		MouseButton = 2;
		CanDeactivate = false;
		UseWhileKnocked = false;
		NoHold = true;
		EndActionAnim = 0;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 0.75;
		ActivateSound = "LightningRipple";
		ChakraCost = 13;
		Cooldown = 9;
		InstantKill = true;
		Damage = 13;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 2;
		Knockback = true;
		CanBePerfectGuarded = true;
		CanBeBlocked = false;
		maxRepeats = 1;
		repeatWaitTime = 0.2;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Lightning";
	};
	["Susanoo Strike"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 2;
		UseWhileKnocked = false;
		LoadUpTime = 0;
		NoHold = true;
		HyperArmour = true;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 1.5;
		ActivateSound = "MangekyoAbility";
		ChakraCost = 18;
		Cooldown = 13;
		Damage = 23;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 1.5;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectBlocked = false;
		CanBePerfectGuarded = true;
		HitSound = "HeavySword";
		maxRepeats = 5;
		repeatWaitTime = 0.1;
		StandardDamage = true;
		TouchingParts = true;
		DontResetParentFound = true;
		JutsuSealingTime = 6;
		CausesBleed = true;
		Bleed = 14;
		SlashEffect = true;
		Ailment = "Fire";
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Purple Armoured Susanoo Summon"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		UseWhileKnocked = false;
		LoadUpTime = 0;
		NoHold = true;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.5;
		ActivateSound = "SusanooSummon";
		ChakraCost = 5;
		Cooldown = 1;
		AvoidRegionCheck = true;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Purple Susanoo Summon"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		UseWhileKnocked = false;
		LoadUpTime = 0;
		NoHold = true;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.5;
		ActivateSound = "SusanooSummon";
		ChakraCost = 5;
		Cooldown = 1;
		AvoidRegionCheck = true;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Armoured Susanoo Flame Arrows"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Skill";
		SkillType2 = "PurpleSusanoo";
		MouseButton = 2;
		UseWhileKnocked = false;
		LoadUpTime = 0;
		NoHold = true;
		HyperArmour = true;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 1.3;
		ActivateSound = "MangekyoAbility";
		ChakraCost = 15;
		Cooldown = 16;
		Damage = 14;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 2;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectGuarded = true;
		maxRepeats = 3;
		repeatWaitTime = 0.01;
		StandardDamage = true;
		Sound = "Fireball";
		Ailment = "PurpleFire";
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Purple Susanoo Grab"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Skill";
		SkillType2 = "PurpleSusanoo";
		MouseButton = 2;
		UseWhileKnocked = false;
		LoadUpTime = 0;
		NoHold = true;
		HyperArmour = true;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 2.4;
		ActivateSound = "MangekyoAbility";
		ChakraCost = 12;
		Cooldown = 5;
		Damage = 16;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = false;
		HitSound = "HeavySword";
		maxRepeats = 7;
		repeatWaitTime = 0.1;
		StandardDamage = true;
		TouchingParts = true;
		CausesBleed = true;
		Ailment = "PurpleFire";
		ID = "";
		GUIName = "";
		Description = "";
	};
	Amaterasu = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		UseWhileKnocked = false;
		LoadUpTime = 0.3;
		NoHold = true;
		DontStopStart = true;
		ActionAnim = "EyeSkill";
		EndActionAnim = 0.5;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.5;
		ActivateSound = "MangekyoAbility";
		ChakraCost = 13;
		Cooldown = 13;
		Damage = 17;
		BlockBreaks = true;
		StopsCarry = true;
		HitsRagdolled = true;
		StunTime = 2;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		AffectsSelf = true;
		Sound = "Fireball";
		Ailment = "BlackFire";
		ID = "";
		GUIName = "";
		Description = "";
	};
	HUDGenjutsu = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		UseWhileKnocked = false;
		LoadUpTime = 0.3;
		NoHold = true;
		DontStopStart = true;
		ActionAnim = "EyeSkill";
		EndActionAnim = 0.5;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.5;
		ActivateSound = "MangekyoAbility";
		ChakraCost = 10;
		Cooldown = 5;
		GenjutsuTime = 10;
		Damage = 0;
		CanBeBlocked = false;
		CanBePerfectBlocked = false;
		CanBePerfectGuarded = false;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Kamui Suck"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chip Damage"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "";
		LoadUpTime = 0.3;
		NoHold = true;
		UseWhileKnocked = false;
		CanDeactivate = true;
		HyperArmour = true;
		DontStopStart = true;
		ActionAnim = "EyeSkill";
		EndActionAnim = 2;
		WindUpMovement = "Stop";
		ActionMovement = "Stop";
		OccupiedTime = 3;
		Cooldown = 13;
		ChakraCost = 5;
		Damage = 10;
		StopsCarry = true;
		HitsRagdolled = true;
		Knockback = false;
		CausesBleed = true;
		CanBeBlocked = true;
		maxRepeats = 5;
		repeatWaitTime = 0.2;
		Point1 = CFrame.new(8, 8, 0);
		Point2 = CFrame.new(-8, -8, -18);
		StandardDamage = false;
		TouchingParts = true;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Kamui Self-Warp"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		LoadUpTime = 0.3;
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = true;
		ActionAnim = "EyeSkill";
		EndActionAnim = 2;
		WindUpMovement = "Stop";
		ActionMovement = "Stop";
		OccupiedTime = 2;
		Cooldown = 10;
		Damage = 10;
		ChakraCost = 5;
		StopsCarry = true;
		HitsRagdolled = true;
		Knockback = false;
		CausesBleed = true;
		CanBeBlocked = true;
		HitSound = "Kamui";
		maxRepeats = 15;
		repeatWaitTime = 0.39;
		Point1 = CFrame.new(9, 9, 9);
		Point2 = CFrame.new(-9, -9, -9);
		StandardDamage = false;
		AffectsSelf = true;
		TouchingParts = true;
		DontResetParentFound = true;
		ID = "";
		GUIName = "";
		Description = "";
	};
	Intangibility = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		CanDeactivate = true;
		ServerWaitTime = 0;
		UseWhileKnocked = false;
		AllowsDashing = true;
		BlocksJumping = false;
		CanSkillRun = true;
		ActivateSound = "Intangible";
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 4.4;
		ChakraCost = 14;
		Cooldown = 10;
		maxRepeats = 16;
		repeatWaitTime = 0.25;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Butterfly Flight"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		CanDeactivate = true;
		ServerWaitTime = 0;
		UseWhileKnocked = false;
		NoHold = true;
		StartUpAnim = "PlayerFlightAnim";
		DontStopStart = true;
		EndActionAnim = 4;
		WindUpMovement = "Stop";
		ActionMovement = "Stop";
		OccupiedTime = 4;
		ChakraCost = 16;
		Cooldown = 20;
		maxRepeats = 1;
		repeatWaitTime = 0.25;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Almighty Push"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		LoadUpTime = 0.5;
		NoHold = true;
		UseWhileKnocked = false;
		CanDeactivate = false;
		HyperArmour = true;
		DontStopStart = true;
		ActionAnim = "QuirkArmPoint";
		EndActionAnim = 1;
		InstantKill = true;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 0.9;
		Cooldown = 12;
		ActivateSound = "SkillActivate";
		ChakraCost = 9;
		Anchored = true;
		Damage = 22;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 1.5;
		Knockback = true;
		CanBeBlocked = false;
		HitsRagdolled = true;
		CausesBleed = false;
		CanBePerfectBlocked = true;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Wind";
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Universal Pull"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 2;
		LoadUpTime = 0.4;
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = false;
		StartUpAnim = "ArmPull";
		DontStopStart = true;
		EndActionAnim = 0.9;
		WindUpMovement = "Walk";
		ActionMovement = "Walk";
		OccupiedTime = 0.8;
		Cooldown = 10;
		Damage = 14;
		Knockback = false;
		CanBeBlocked = true;
		HitSound = "MissedAttack";
		FluctuateHitSound = true;
		StunTime = 1.1;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		TrueStun = true;
		TouchingParts = true;
		Ailment = "Wind";
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Palm Rotation"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		LoadUpTime = 0.5;
		NoHold = true;
		UseWhileKnocked = false;
		CanDeactivate = true;
		HyperArmour = true;
		DontStopStart = true;
		ActionAnim = "PalmRotation";
		EndActionAnim = 3.25;
		WindUpMovement = "Walk";
		ActionMovement = "Stop";
		OccupiedTime = 3;
		Cooldown = 8;
		ActivateSound = "SkillActivate";
		ChakraCost = 11;
		Anchored = true;
		Damage = 4;
		JutsuSealingTime = 6;
		StunTime = 0.5;
		CausesBleed = false;
		CanBeBlocked = true;
		maxRepeats = 12;
		repeatWaitTime = 0.25;
		StandardDamage = true;
		HitSound = "ChakraFistAttack";
		HitSoundPlayback = 1.5;
		TouchingParts = true;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["64 Palms"] = {
		Requirements = {};
		SkillType = "Skill";
		SkillType2 = "";
		InitialWaitTime = 0.9;
		NoHold = true;
		UseWhileKnocked = false;
		HyperArmour = true;
		Invincible = true;
		DontStopStart = true;
		StartUpAnim = "PalmsSetup";
		EndActionAnim = 2.5;
		RequiresGrounded = true;
		JutsuSealingTime = 7;
		WindUpMovement = "Stop";
		ActionMovement = "Stop";
		OccupiedTime = 0.7;
		Cooldown = 11;
		AbilityTime = 3;
		ActivateSound = "SkillActivate";
		ChakraCost = 14;
		Anchored = true;
		Damage = 1.5;
		IgnoreInvincible = true;
		CausesBleed = false;
		CanBeBlocked = false;
		maxRepeats = 20;
		repeatWaitTime = 0.125;
		StandardDamage = true;
		SpecialHitEffect = "Palms";
		HitSound = "ChakraFistAttack";
		HitSoundPlayback = 1.5;
		ID = "";
		GUIName = "";
		Description = "";
	};
	["Water Pool"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Pellet"] = true;
			};
			["Aqua Gem"] = true;
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Water";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 12;
		Cooldown = 6;
		Damage = 0;
		CausesBleed = false;
		CanBeBlocked = true;
		maxRepeats = 40;
		repeatWaitTime = 0.5;
		StandardDamage = false;
		TouchingParts = true;
		Ailment = "Water";
		ID = "7267053588";
		GUIName = "Skill5A";
		Description = "Form a pool of water on the ground.";
		BranchName = "Lightning";
	};
	["Sealing Floor"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Charge"] = true;
			};
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Sealing";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 16;
		Cooldown = 15;
		JutsuSealingTime = 8;
		HurtOnlyOnce = true;
		Damage = 8;
		HitsRagdolled = true;
		CausesBleed = true;
		CanBeBlocked = true;
		StunTime = 1.5;
		DontResetParentFound = false;
		Point1 = CFrame.new(20, 7, 20);
		Point2 = CFrame.new(-20, -1, -20);
		maxRepeats = 20;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Sealing";
		ID = "8528032736";
		GUIName = "Skill15A";
		Description = "Create a sealing formula on the ground.";
		BranchName = "Sealing";
	};
	["Water Fountain"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Water Pool"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Water";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 19;
		Cooldown = 12;
		Damage = 18;
		HitsRagdolled = true;
		CausesBleed = false;
		CanBeBlocked = true;
		StunTime = 1.7;
		maxRepeats = 12;
		repeatWaitTime = 0.5;
		StandardDamage = false;
		AffectsSelf = true;
		Ailment = "Water";
		ID = "7277779994";
		GUIName = "Skill5B";
		Description = "Form a spring of water from the ground.";
		BranchName = "Water";
	};
	["Water Dragon"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Water Fountain"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Water";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "ArmLaunch";
		EndActionAnim = 1;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 1;
		ActivateSound = "SkillActivate";
		ChakraCost = 20;
		Cooldown = 8;
		Damage = 24;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 2;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectBlocked = true;
		CanBePerfectGuarded = true;
		Point1 = CFrame.new(14, 14, 14);
		Point2 = CFrame.new(-14, -14, -14);
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		AffectsSelf = false;
		Ailment = "Water";
		ID = "7267054991";
		GUIName = "Skill5C";
		Description = "Construct a dragon of water and launch at your enemies";
		BranchName = "Water";
	};
	["Water Wave"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Water Dragon"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Water";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 22;
		Cooldown = 10;
		InstantKill = true;
		Damage = 21;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 1.5;
		Knockback = true;
		CanBeBlocked = false;
		CanBePerfectGuarded = true;
		Point1 = CFrame.new(13, 9, 8);
		Point2 = CFrame.new(-13, -8, -10);
		DontResetParentFound = true;
		maxRepeats = 25;
		repeatWaitTime = 0.19;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Water";
		DestructionCounters = 0;
		ID = "8528045395";
		GUIName = "Skill5D";
		Description = "Construct a wave of water to overwhelm your enemies";
		BranchName = "Water";
	};
	["Water Prison"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Water Wave"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Water";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "SkillHold";
		WindUpMovement = "Walk";
		BlocksJumping = false;
		InitialActionAnim = "RightHandWave";
		InitialStop = true;
		ActionTime = 0.5;
		ActionMovement = "";
		CanSkillRun = true;
		MasteryAllowsDashing = true;
		OccupiedTime = 6;
		EndActionAnim = 6;
		ActivateSound = "SkillActivate";
		ChakraCost = 22;
		Cooldown = 16;
		SkillSpeedBoost = 1.5;
		Damage = 15;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 1.5;
		TrueStun = true;
		CausesBleed = true;
		CanBeBlocked = false;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		UpdateRegions = false;
		Point1 = CFrame.new(4, 4, 4);
		Point2 = CFrame.new(-4, -4, -4);
		Ailment = "Water";
		ID = "";
		GUIName = "Skill5F";
		Description = "Encase your enemy in a ball of water";
		BranchName = "Water";
	};
	["Pool Expansion"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Water Prison"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		StartUpAnim = "StunnedKneeling";
		ActionAnim = "StunnedKneeling";
		EndActionAnim = 1.3;
		WindUpMovement = "Stop";
		ActionMovement = "Stop";
		OccupiedTime = 0.8;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 10;
		Cooldown = 5;
		Damage = 21;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 2.5;
		CausesBleed = false;
		CanBeBlocked = false;
		CanBePerfectGuarded = true;
		Knockback = true;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Water";
		ID = "";
		GUIName = "Skill5G";
		Description = "Rapidly expand a pool of water";
		BranchName = "Water";
	};
	["Wind Tornado"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Gale Palm"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Wind";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 4;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		HitsRagdolled = true;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 22;
		Cooldown = 10;
		Damage = 20;
		StopsCarry = true;
		StunTime = 1.5;
		Knockback = true;
		CanBeBlocked = true;
		MasteryBlockBreak = true;
		Point1 = CFrame.new(13, 9, 8);
		Point2 = CFrame.new(-13, -8, -10);
		DontResetParentFound = true;
		maxRepeats = 32;
		repeatWaitTime = 0.25;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Wind";
		DestructionCounters = 0;
		ID = "8144471829";
		GUIName = "Skill3C";
		Description = "Construct a tornado of wind to blast your enemies away";
		BranchName = "Wind";
	};
	Rasengan = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Wind Tornado"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Wind";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 2;
		ActionAnim = "SkillHold";
		AllowsDashing = true;
		WindUpMovement = "Walk";
		BlocksJumping = false;
		CanSkillRun = true;
		InitialActionAnim = "RasenganStartUp";
		InitialStop = true;
		ActionTime = 1;
		ActionMovement = "";
		OccupiedTime = 6.5;
		EndActionAnim = 6.5;
		ActivateSound = "SkillActivate";
		ChakraCost = 22;
		Cooldown = 15;
		SkillSpeedBoost = 1.7;
		Damage = 25;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 1.5;
		Knockback = true;
		CausesBleed = true;
		CanBeBlocked = false;
		maxRepeats = 1;
		repeatWaitTime = 0.5;
		StandardDamage = true;
		UpdateRegions = false;
		Point1 = CFrame.new(4, 4, 4);
		Point2 = CFrame.new(-4, -4, -4);
		Ailment = "Wind";
		DestructionCounters = 5;
		ID = "";
		GUIName = "Skill3D";
		Description = "Harness the power of wind in your palm";
		BranchName = "Wind";
	};
	["Rasengan Barrage"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				Rasengan = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Wind";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 2;
		ActionAnim = "DoubleSkillHold";
		AllowsDashing = true;
		WindUpMovement = "Walk";
		BlocksJumping = false;
		InitialActionAnim = "SlowClash";
		InitialStop = true;
		ActionTime = 0.9;
		ActionMovement = "";
		CanSkillRun = true;
		OccupiedTime = 9;
		EndActionAnim = 9;
		ActivateSound = "SkillActivate";
		ChakraCost = 26;
		Cooldown = 15;
		SkillSpeedBoost = 1.8;
		Damage = 17;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 1.5;
		Knockback = true;
		CausesBleed = true;
		CanBeBlocked = false;
		maxRepeats = 2;
		repeatWaitTime = 0.1;
		StandardDamage = true;
		UpdateRegions = false;
		Point1 = CFrame.new(4, 4, 4);
		Point2 = CFrame.new(-4, -4, -4);
		Ailment = "Wind";
		DestructionCounters = 5;
		ID = "";
		GUIName = "Skill3F";
		Description = "Harness the power of wind in your palms";
		BranchName = "Wind";
	};
	["Gale Palm"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Rising Wind"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Wind";
		MouseButton = 1;
		CanDeactivate = false;
		InitialWaitTime = 0.5;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "ArmBlast";
		HitsRagdolled = true;
		WindUpMovement = "Walk";
		BlocksJumping = false;
		ActionTime = 0.5;
		ActionMovement = "";
		OccupiedTime = 1;
		EndActionAnim = 1;
		ActivateSound = "GalePalm";
		ChakraCost = 20;
		Cooldown = 10;
		InstantKill = true;
		Damage = 26;
		BlockBreaks = true;
		StopsCarry = true;
		StunTime = 2.25;
		Knockback = true;
		CausesBleed = false;
		CanBeBlocked = false;
		CanBePerfectGuarded = true;
		DontResetParentFound = true;
		maxRepeats = 31;
		repeatWaitTime = 0.3;
		StandardDamage = true;
		TouchingParts = true;
		Ailment = "Wind";
		DestructionCounters = 0;
		ID = "8204674389";
		GUIName = "Skill3B";
		Description = "Send out a gust of wind.";
		BranchName = "Wind";
	};
	["Rising Wind"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Chakra Pellet"] = true;
			};
			["Wind Gem"] = true;
			["Chakra Shard"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Wind";
		MouseButton = 1;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "HandsToTheGround";
		EndActionAnim = 0.6;
		WindUpMovement = "";
		ActionMovement = "Stop";
		OccupiedTime = 0.6;
		ActivateSound = "SkillActivate";
		ActivateState = "Landed";
		ChakraCost = 16;
		Cooldown = 10;
		Damage = 0;
		StopsCarry = true;
		HitsRagdolled = true;
		CanBeBlocked = true;
		HitSound = "";
		maxRepeats = 5;
		repeatWaitTime = 0.5;
		AffectsSelf = true;
		Sound = "RisingWind";
		ID = "6915158186";
		GUIName = "Skill3A";
		Description = "Creates a gust of wind directed upwards.";
		BranchName = "Wind";
	};
	["Wind Discs"] = {
		Requirements = {
			Ryo = 70;
			Skills = {
				["Wind Tornado"] = true;
			};
			["Chakra Fragments"] = true;
		};
		SkillType = "Skill";
		SkillType2 = "Wind";
		MouseButton = 1;
		CanDeactivate = true;
		UseWhileKnocked = false;
		Handsigns = 3;
		ActionAnim = "AirBlow";
		WindUpMovement = "Walk";
		BlocksJumping = false;
		ActionMovement = "";
		OccupiedTime = 1.7;
		EndActionAnim = 1.8;
		ActivateSound = "SkillActivate";
		ChakraDrain = 4;
		Cooldown = 11;
		Damage = 0;
		HitsRagdolled = true;
		StunTime = 0;
		CanBeBlocked = true;
		maxRepeats = 6;
		repeatWaitTime = 0.4;
		AffectsSelf = true;
		Sound = "RisingWind";
		ID = "";
		GUIName = "Skill3E";
		Description = "Shoot out discs of wind that bounce you upwards.";
		BranchName = "Wind";
	};
	["Aerial Heavy Attack"] = {
		Requirements = {
			Ryo = 10;
			Skills = {
				Substitution = true;
			};
		};
		SkillType = "Passive";
		ID = "6893281680";
		GUIName = "Skill2A";
		Description = "Unleashes a different heavy attack when used in the air.";
	};
	["Triple Jump"] = {
		Requirements = {
			Ryo = 20;
			Skills = {
				["Aerial Heavy Attack"] = true;
				["Weighted Kick"] = true;
			};
		};
		SkillType = "Passive";
		ID = "6877023841";
		GUIName = "Skill2B";
		Description = "Third jump similar to the normal double. Increases airtime.";
	};
	["Gold Infusions"] = {
		Requirements = {
			Ryo = 30;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		BlockedSkills = {
			["Increased Infusion Time"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill2C";
		Description = "Allows you to infuse gold weapons.";
	};
	["Increased Infusion Time"] = {
		Requirements = {
			Ryo = 30;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		BlockedSkills = {
			["Gold Infusions"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill2D";
		Description = "Increases the time that infusions by 15 seconds.";
	};
	["Chip Damage"] = {
		Requirements = {
			Ryo = 40;
			Skills = {
				["Gold Infusions"] = true;
				["Increased Infusion Time"] = true;
			};
		};
		SkillType = "Passive";
		ID = "7177951631";
		GUIName = "Skill2E";
		Description = "Armor-broken enemies will take some damage whilst blocking your attacks.";
	};
	["Greatsword Training"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Chip Damage"] = true;
			};
			["Chakra Shard"] = true;
			["Combat Scroll"] = true;
		};
		BlockedSkills = {
			["Kunai Throw"] = true;
			["Blinding Strike"] = true;
			["Weighted Kick"] = true;
			["Twin Strike"] = true;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill13A";
		Description = "Allows you to purchase the Onyx Zabunagi.";
	};
	["Hyper Roar"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Greatsword Training"] = true;
			};
		};
		SkillType = "Skill";
		SkillType2 = "";
		MouseButton = 1;
		CanDeactivate = false;
		UseWhileKnocked = false;
		RequiresWeapon = {"Greatsword"};
		StartUpAnim = "RageAwaken";
		DontStopStart = true;
		EndActionAnim = 0.05;
		WindUpMovement = "";
		ActionMovement = "";
		OccupiedTime = 0.05;
		ChakraCost = 0;
		Cooldown = 25;
		AvoidRegionCheck = true;
		ID = "";
		GUIName = "Skill13B";
		Description = "Hyper armoured m1s, increased damage, endangers nearby enemies.";
	};
	["Sharingan [Stage 1]"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		SkillType = "Awakening";
		ID = "7174326332";
		Description = "Allows you to view other players' health.";
		ActivationAnimation = "SharinganActivation";
		CannotUnlockNormally = true;
	};
	["Sharingan [Stage 2]"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		SkillType = "Awakening";
		ID = "7245353709";
		Description = "Allows you to predict what your opponent will do next.";
		ActivationAnimation = "SharinganActivation";
		M1Req = 130;
		GripReq = 4;
		KnockReq = 3;
		Usage = 8;
		CannotUnlockNormally = true;
	};
	["Sharingan [Stage 3]"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		SkillType = "Awakening";
		ID = "7245930185";
		Description = "Enables you to dodge close-combat attacks.";
		ActivationAnimation = "SharinganActivation";
		MouseButton1 = "HUDGenjutsu";
		M1Req = 280;
		GripReq = 10;
		KnockReq = 7;
		Usage = 25;
		CannotUnlockNormally = true;
	};
	["Obito's Mangekyo"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Awakening";
		ID = "7286096199";
		Description = "Visual prowess specialising in teleportation ninjutsu.";
		ActivationAnimation = "SharinganActivation";
		MouseButton1 = "Kamui Suck";
		MouseButton2 = "Kamui Self-Warp";
		CannotUnlockNormally = true;
	};
	["Obito's Eternal Mangekyo"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Awakening";
		ID = "11266409852";
		Description = "Visual prowess specialising in teleportation ninjutsu.";
		ActivationAnimation = "SharinganActivation";
		MouseButton1 = "Intangibility";
		MouseButton2 = "Kamui Self-Warp";
		CannotUnlockNormally = true;
	};
	["Itachi's Mangekyo"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Awakening";
		ID = "9484712296";
		Description = "Visual prowess specialising in flame control";
		ActivationAnimation = "SharinganActivation";
		MouseButton1 = "Amaterasu";
		MouseButton2 = "Susanoo Strike";
		CannotUnlockNormally = true;
	};
	["Itachi's Eternal Mangekyo"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Awakening";
		ID = "11263859792";
		Description = "Visual prowess specialising in flame control";
		ActivationAnimation = "SharinganActivation";
		MouseButton1 = "Amaterasu";
		MouseButton2 = "Susanoo Strike";
		CannotUnlockNormally = true;
	};
	["Sasuke's Mangekyo"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Awakening";
		ID = "10800228871";
		Description = "Visual prowess specialising in armoured offense";
		ActivationAnimation = "SharinganActivation";
		MouseButton1 = "Purple Susanoo Summon";
		MouseButton2 = "Purple Susanoo Grab";
		CannotUnlockNormally = true;
	};
	["Sasuke's Eternal Mangekyo"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Awakening";
		ID = "15190048032";
		Description = "Visual prowess specialising in armoured offense";
		ActivationAnimation = "SharinganActivation";
		MouseButton1 = "Purple Armoured Susanoo Summon";
		MouseButton2 = "Armoured Susanoo Flame Arrows";
		CannotUnlockNormally = true;
	};
	["Pain's Rinnegan"] = {
		Requirements = {
			Skills = {};
		};
		SkillType = "Awakening";
		ID = "10809160363";
		Description = "Visual prowess specialising in controlling enemy movement";
		ActivationAnimation = "SharinganActivation";
		MouseButton1 = "Almighty Push";
		MouseButton2 = "Universal Pull";
		CannotUnlockNormally = true;
	};
	["Cloak Of Lightning"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Lightning Strike"] = true;
			};
			["Lightning Scroll"] = true;
		};
		SkillType = "Awakening";
		ID = "8789089933";
		Description = "Boosts speed and gives new abilities";
		ActivationAnimation = "RageAwaken";
		SpeedIncrease = 9;
		MouseButton1 = "Lightning Teleport";
		MouseButton2 = "Lightning Drop";
		GUIName = "Skill7E";
		Freeze = 1;
	};
	["Sparked Stamina"] = {
		Requirements = {
			Ryo = 100;
			Skills = {
				["Cloak Of Lightning"] = true;
			};
			["Spark Gem"] = 3;
		};
		SkillType = "Passive";
		ID = "";
		GUIName = "Skill7H";
		Description = "Awakening with Cloak of Lightning restores stamina counters";
	};
	["Byakugan [Stage 1]"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		SkillType = "Awakening";
		ID = "7246195779";
		Description = "View players and npcs that would otherwise be hidden";
		ActivationAnimation = "SharinganActivation";
		M1Req = 100;
		BlockReq = 30;
		KnockReq = 0;
		PB = 1;
		CannotUnlockNormally = true;
	};
	["Byakugan [Stage 2]"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		SkillType = "Awakening";
		ID = "7246195779";
		Description = "Increased view range of other players and npcs. Shows chakra levels.";
		ActivationAnimation = "SharinganActivation";
		M1Req = 230;
		BlockReq = 70;
		KnockReq = 5;
		Usage = 12;
		PB = 2;
		MouseButton1 = "Palm Rotation";
		CannotUnlockNormally = true;
	};
	["Byakugan [Stage 3]"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		SkillType = "Awakening";
		ID = "7246195779";
		Description = "Increased view range of other players and npcs. Shows chakra levels";
		ActivationAnimation = "SharinganActivation";
		M1Req = 350;
		BlockReq = 100;
		KnockReq = 10;
		Usage = 25;
		PB = 5;
		MouseButton1 = "Palm Rotation";
		MouseButton2 = "64 Palms";
		CannotUnlockNormally = true;
	};
	["Byakugan [Stage 4]"] = {
		Requirements = {
			Ryo = 50;
			Skills = {
				["Triple Jump"] = true;
			};
		};
		SkillType = "Awakening";
		ID = "7246195779";
		Description = "Increased view range of other players and npcs. Shows chakra levels";
		ActivationAnimation = "SharinganActivation";
		M1Req = 500;
		BlockReq = 130;
		KnockReq = 14;
		Usage = 35;
		PB = 20;
		MouseButton1 = "Palm Rotation";
		MouseButton2 = "64 Palms";
		CannotUnlockNormally = true;
	};
}
function module_6_upvr.IsEmpty(arg1, arg2) -- Line 20846
	local var2880
	if next(arg2) ~= nil then
		var2880 = false
	else
		var2880 = true
	end
	return var2880
end
function module_6_upvr.AburameInfestation(arg1, arg2, arg3) -- Line 20850
	--[[ Upvalues[2]:
		[1]: ServerStorage_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	if arg3 == true then
		local var2895
		for i_112 = 1, 2 do
			if i_112 == 1 then
				var2895 = arg2["Right Arm"]
			else
				var2895 = arg2["Left Arm"]
			end
			for i_113, v_81 in ipairs(ServerStorage_upvr.Effects.Aburame.Arms:GetChildren()) do
				local clone_58 = v_81:Clone()
				clone_58.Name = "AburameEffect"
				clone_58.Parent = var2895
			end
		end
		arg2.HumanoidRootPart.BugsLoop.Volume = 0.5
		arg2.HumanoidRootPart.BugsLoop:Play()
	elseif arg2["Right Arm"]:FindFirstChild("AburameEffect") then
		for _, v_88 in ipairs(arg2["Right Arm"]:GetChildren()) do
			if v_88.Name == "AburameEffect" then
				v_88.Enabled = false
				i_113 = v_88
				v_81 = 1.5
				Debris_upvr:AddItem(i_113, v_81)
			end
		end
		for _, v_89 in ipairs(arg2["Left Arm"]:GetChildren()) do
			if v_89.Name == "AburameEffect" then
				v_89.Enabled = false
				i_113 = v_89
				v_81 = 1.5
				Debris_upvr:AddItem(i_113, v_81)
			end
		end
		arg2.HumanoidRootPart.BugsLoop:Stop()
	end
end
function module_6_upvr.iceFloor(arg1, arg2) -- Line 20884
	--[[ Upvalues[3]:
		[1]: ServerStorage_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_31 = ServerStorage_upvr.Models.IceFloor:Clone()
	clone_31.CFrame *= CFrame.Angles(0, math.rad(math.random(0, 360)), 0)
	clone_31.Size = Vector3.new(0.00999, 0.00999, 0.00999)
	clone_31.Position = arg2
	clone_31.Parent = workspace
	clone_31.Mist.Enabled = true
	TweenService_upvr:Create(clone_31, TweenInfo.new(0.5), {
		Size = Vector3.new(28, 0.5, 25);
		CFrame = clone_31.CFrame * CFrame.Angles(0, math.rad(math.random(0, 360)), 0);
	}):Play()
	Debris_upvr:AddItem(clone_31, 5)
end
function module_6_upvr.checkEyesUpgrade(arg1, arg2, arg3) -- Line 20896
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 41 start (CF ANALYSIS FAILED)
	if module_6_upvr:hasItem(arg2, "Byakugan [Stage 1]") then
		-- KONSTANTWARNING: GOTO [45] #34
	end
	-- KONSTANTERROR: [3] 3. Error Block 41 end (CF ANALYSIS FAILED)
end
module_6_upvr.Particles = {
	HitEffect = {
		RotationLock = true;
		Preset = true;
		PresetParent = "CentrePoint";
	};
	HitEffect2 = {
		RotationLock = true;
		Preset = true;
		PresetParent = "CentrePoint";
	};
	HitEffectBubbles = {
		RotationLock = false;
		Preset = true;
		PresetParent = "CentrePoint";
	};
	SwordHit = {
		RotationLock = false;
		Preset = true;
		PresetParent = "CentrePoint";
	};
	Blocked = {
		RotationLock = false;
		Preset = true;
		PresetParent = "CentrePoint";
	};
	BlockBreak = {
		RotationLock = false;
		Preset = true;
		PresetParent = "Torso";
	};
	Blood = {
		RotationLock = false;
		Preset = true;
		PresetParent = "Torso";
	};
	FatBlood = {
		RotationLock = false;
		Preset = true;
		PresetParent = "Torso";
	};
	Slice = {
		RotationLock = true;
		Preset = true;
		PresetParent = "CentrePoint";
	};
	SwordClash = {
		RotationLock = false;
		Preset = true;
		PresetParent = "CentrePoint";
	};
	SwordClash2 = {
		RotationLock = false;
		Preset = true;
		PresetParent = "Torso";
	};
}
module_6_upvr.Combat = {
	Fist = {
		Metallic = false;
		Point1 = CFrame.new(4.5, 4.5, 1.5);
		Point2 = CFrame.new(-4.5, -4.5, -6);
		CooldownTime = 0.4;
		StunTime = 0.7;
		FinalCooldownTime = 1.1;
		ComboLength = 5;
		ChakraPunchDamageBoost = 1.3;
		ChakraPunchCost = 2;
		GripAnimation = "StompGrip";
		GripSound = "StompGrip";
		GripZVector = -1.1;
		VictimGripAnimation = "StompGripVictim";
		Combo = {
			['1'] = {
				Animation = "PunchRight";
				ActionTime = 0.12;
			};
			['2'] = {
				Animation = "UpPunchLeft";
				ActionTime = 0.12;
			};
			['3'] = {
				Animation = "UpPunchRight";
				ActionTime = 0.12;
			};
			['4'] = {
				Animation = "PunchLeft";
				ActionTime = 0.12;
			};
			['5'] = {
				Animation = "DoubleKickFinish";
				ActionTime = 0.18;
				ParticleTime = 0.5;
			};
		};
		BlockCount = 3;
		Block = {
			['1'] = "FistBlock1";
			['2'] = "FistBlock2";
			['3'] = "FistBlock3";
		};
		HeavyAttack = {
			Ground = {
				Animation = "FistHeavyAttack";
				ActionTime = 0.38;
				Cooldown = 1.1;
				ParticleTime = 0.6;
				Point1 = CFrame.new(4, 4.5, 1.5);
				Point2 = CFrame.new(-4, -4, -5.5);
				BodyParts = {
					RightHand = true;
				};
			};
			Air = {
				Animation = "FistAirHeavyAttack";
				ActionTime = 0.2;
				Cooldown = 1;
				ParticleTime = 0.6;
				Speed = 70;
				Point1 = CFrame.new(4.5, -2, -2);
				Point2 = CFrame.new(-4.5, -8, -9.5);
				Direction = CFrame.new(0, 100, 100);
				BodyParts = {
					LeftLeg = true;
					RightLeg = true;
				};
			};
		};
		Damage = {
			NormalAttack = 4.5;
			HeavyAttack = 10;
		};
	};
	SusanooFist = {
		Metallic = false;
		Point1 = CFrame.new(4.5, 4.5, 1.5);
		Point2 = CFrame.new(-4.5, -4.5, -6);
		CooldownTime = 1.1;
		StunTime = 1.35;
		FinalCooldownTime = 2;
		ComboLength = 3;
		GripAnimation = "StompGrip";
		GripSound = "StompGrip";
		GripZVector = -1.1;
		VictimGripAnimation = "StompGripVictim";
		Combo = {
			['1'] = {
				Animation = "";
				ActionTime = 0.7;
			};
			['2'] = {
				Animation = "";
				ActionTime = 0.7;
			};
			['3'] = {
				Animation = "";
				ActionTime = 0.7;
			};
		};
		BlockCount = 3;
		Block = {
			['1'] = "FistBlock1";
			['2'] = "FistBlock2";
			['3'] = "FistBlock3";
		};
		HeavyAttack = {
			Ground = {
				Animation = "FistHeavyAttack";
				ActionTime = 0.9;
				Cooldown = 1.3;
				ParticleTime = 0.6;
				Point1 = CFrame.new(4, 4.5, 1.5);
				Point2 = CFrame.new(-4, -4, -5.5);
				BodyParts = {
					RightHand = true;
				};
			};
			Air = {
				Animation = "FistAirHeavyAttack";
				ActionTime = 0.2;
				Cooldown = 1;
				ParticleTime = 0.6;
				Speed = 70;
				Point1 = CFrame.new(4.5, -2, -2);
				Point2 = CFrame.new(-4.5, -8, -9.5);
				Direction = CFrame.new(0, 100, 100);
				BodyParts = {
					LeftLeg = true;
					RightLeg = true;
				};
			};
		};
		Damage = {
			NormalAttack = 9;
			HeavyAttack = 13;
		};
	};
	Tai = {
		Metallic = false;
		Point1 = CFrame.new(5.5, 5, 1.5);
		Point2 = CFrame.new(-5.5, -5, -7.5);
		CooldownTime = 0.4;
		StunTime = 0.7;
		FinalCooldownTime = 1.8;
		ComboLength = 6;
		ChakraPunchDamageBoost = 1.3;
		ChakraPunchCost = 2;
		GripAnimation = "StompGrip";
		GripSound = "StompGrip";
		GripZVector = -1.1;
		VictimGripAnimation = "StompGripVictim";
		StandingIdle = "TaijutsuIdle";
		Combo = {
			['1'] = {
				Animation = "Tai1";
				ActionTime = 0.25;
			};
			['2'] = {
				Animation = "Tai2";
				ActionTime = 0.25;
			};
			['3'] = {
				Animation = "Tai3";
				ActionTime = 0.25;
			};
			['4'] = {
				Animation = "Tai4";
				ActionTime = 0.25;
			};
			['5'] = {
				Animation = "Tai5";
				ActionTime = 0.25;
			};
			['6'] = {
				Animation = "Tai6";
				ActionTime = 0.25;
				ParticleTime = 1;
				Repeat = 0.6;
				Point1 = CFrame.new(5.5, 5, 1.5);
				Point2 = CFrame.new(-5.5, -5, -9);
			};
		};
		BlockCount = 3;
		Block = {
			['1'] = "FistBlock1";
			['2'] = "FistBlock2";
			['3'] = "FistBlock3";
		};
		HeavyAttack = {
			Ground = {
				Animation = "Tai1V2";
				ActionTime = 0.22;
				Cooldown = 1.1;
				ParticleTime = 0.6;
				Point1 = CFrame.new(5.5, 5, 1.5);
				Point2 = CFrame.new(-5.5, -5, -8);
				BodyParts = {
					RightLeg = true;
				};
			};
			Air = {
				Animation = "FistAirHeavyAttack";
				ActionTime = 0.2;
				Cooldown = 1;
				ParticleTime = 0.6;
				Speed = 70;
				Point1 = CFrame.new(4.5, -2, -2);
				Point2 = CFrame.new(-4.5, -8, -9.5);
				Direction = CFrame.new(0, 100, 100);
				BodyParts = {
					LeftLeg = true;
					RightLeg = true;
				};
			};
		};
		Damage = {
			NormalAttack = 5.5;
			HeavyAttack = 11;
		};
	};
	Sword = {
		Bleed = 5;
		Metallic = true;
		Point1 = CFrame.new(6.5, 5, 2);
		Point2 = CFrame.new(-6.5, -5, -9);
		CooldownTime = 0.5;
		StunTime = 0.76;
		FinalCooldownTime = 1.1;
		ComboLength = 5;
		GripAnimation = "SwordChestGrip";
		GripSound = "SwordGrip";
		GripZVector = -1.4;
		VictimGripAnimation = "StompGripVictim";
		Combo = {
			['1'] = {
				Animation = "SwordSlash1";
				ActionTime = 0.2;
			};
			['2'] = {
				Animation = "SwordSlash2";
				ActionTime = 0.2;
			};
			['3'] = {
				Animation = "SwordSlashBackHand1";
				ActionTime = 0.2;
			};
			['4'] = {
				Animation = "SwordSlashBackHand2";
				ActionTime = 0.2;
			};
			['5'] = {
				Animation = "SwordSlashSpinFinish";
				ActionTime = 0.255;
				ParticleTime = 0.55;
			};
		};
		BlockCount = 3;
		Block = {
			['1'] = "SwordBlock1";
			['2'] = "SwordBlock2";
			['3'] = "SwordBlock3";
		};
		HeavyAttack = {
			Ground = {
				Animation = "SwordHeavyAttack";
				ActionTime = 0.33;
				Cooldown = 1.1;
				ParticleTime = 0.6;
				Point1 = CFrame.new(5.5, 4.5, 1.5);
				Point2 = CFrame.new(-5.5, -5, -9);
				BodyParts = {
					RightHand = true;
				};
			};
			Air = {
				Animation = "SwordAirHeavyAttack";
				ActionTime = 0.25;
				Cooldown = 1;
				ParticleTime = 0.6;
				Speed = 70;
				Point1 = CFrame.new(5, -2, -2);
				Point2 = CFrame.new(-5, -10, -10.5);
				Direction = CFrame.new(0, 100, 100);
				BodyParts = {
					LeftHand = true;
					RightHand = true;
				};
			};
		};
		Damage = {
			NormalAttack = 6;
			HeavyAttack = 12;
		};
		SheatheAnimation = "SwordSheathe";
		UnsheatheAnimation = "SwordUnsheathe";
	};
	Greatsword = {
		Bleed = 8;
		Metallic = true;
		Point1 = CFrame.new(8, 5, 2.5);
		Point2 = CFrame.new(-8, -5, -10);
		CooldownTime = 0.9;
		StunTime = 1.05;
		FinalCooldownTime = 2;
		ComboLength = 3;
		GripAnimation = "SwordChestGrip";
		GripSound = "SwordGrip";
		GripZVector = -1.4;
		VictimGripAnimation = "StompGripVictim";
		Idle = "GreatswordIdle";
		RunningIdle = "GreatswordRunningIdle";
		Combo = {
			['1'] = {
				Animation = "GreatswordSwing1";
				ActionTime = 0.37;
			};
			['2'] = {
				Animation = "GreatswordSwing2";
				ActionTime = 0.37;
			};
			['3'] = {
				Animation = "GreatswordSwing3";
				ActionTime = 0.42;
				ParticleTime = 1;
				Repeat = 0.6;
				Point1 = CFrame.new(9, 5, 4);
				Point2 = CFrame.new(-9, -5, -10);
			};
		};
		BlockCount = 3;
		Block = {
			['1'] = "GreatswordBlock1";
			['2'] = "GreatswordBlock2";
			['3'] = "GreatswordBlock3";
		};
		HeavyAttack = {
			Ground = {
				Animation = "GreatswordHeavyAttack";
				ActionTime = 0.38;
				Cooldown = 1.1;
				ParticleTime = 0.6;
				Point1 = CFrame.new(5.5, 4.5, 1.5);
				Point2 = CFrame.new(-5.5, -5, -10);
				BodyParts = {
					RightHand = true;
				};
			};
			Air = {
				Animation = "SwordAirHeavyAttack";
				ActionTime = 0.25;
				Cooldown = 1;
				ParticleTime = 0.6;
				Speed = 70;
				Point1 = CFrame.new(6, -2, -2);
				Point2 = CFrame.new(-6, -10, -10.5);
				Direction = CFrame.new(0, 100, 100);
				BodyParts = {
					LeftHand = true;
					RightHand = true;
				};
			};
		};
		Damage = {
			NormalAttack = 11;
			HeavyAttack = 17;
		};
		SheatheAnimation = "GreatswordSheathe";
		UnsheatheAnimation = "GreatswordUnsheathe";
	};
	Halberd = {
		Bleed = 6;
		Metallic = true;
		Point1 = CFrame.new(9, 5, 2.5);
		Point2 = CFrame.new(-9, -5, -10);
		CooldownTime = 0.6;
		StunTime = 0.82;
		FinalCooldownTime = 1.5;
		ComboLength = 4;
		GripAnimation = "SwordChestGrip";
		GripSound = "SwordGrip";
		GripZVector = -1.4;
		VictimGripAnimation = "StompGripVictim";
		Idle = "HalberdIdle";
		RunningIdle = "HalberdRunningIdle";
		Combo = {
			['1'] = {
				Animation = "HalberdAttack1";
				ActionTime = 0.4;
			};
			['2'] = {
				Animation = "HalberdAttack2";
				ActionTime = 0.4;
			};
			['3'] = {
				Animation = "HalberdAttack3";
				ActionTime = 0.4;
			};
			['4'] = {
				Animation = "HalberdAttack4";
				ActionTime = 0.4;
				ParticleTime = 1;
			};
		};
		BlockCount = 3;
		Block = {
			['1'] = "HalberdBlock1";
			['2'] = "HalberdBlock2";
			['3'] = "HalberdBlock3";
		};
		HeavyAttack = {
			Ground = {
				Animation = "HalberdHeavyAttack";
				ActionTime = 0.38;
				Cooldown = 1.5;
				ParticleTime = 0.6;
				Point1 = CFrame.new(3, 5, 1);
				Point2 = CFrame.new(-3, -5, -13);
				BodyParts = {
					RightHand = true;
				};
			};
			Air = {
				Animation = "HalberdAirHeavyAttack";
				ActionTime = 0.2;
				Cooldown = 1.3;
				ParticleTime = 0.8;
				Speed = 70;
				Point1 = CFrame.new(4, 2, 4);
				Point2 = CFrame.new(-4, -12, -11);
				Direction = CFrame.new(0, 100, 100);
				BodyParts = {
					LeftHand = true;
					RightHand = true;
				};
			};
		};
		Damage = {
			NormalAttack = 7.5;
			HeavyAttack = 14;
		};
		SheatheAnimation = "HalberdSheathe";
		UnsheatheAnimation = "HalberdUnsheathe";
	};
	Kunai = {
		Bleed = 4;
		Metallic = true;
		Point1 = CFrame.new(7, 4.5, 1.5);
		Point2 = CFrame.new(-6, -4.5, -7);
		CooldownTime = 0.37;
		StunTime = 0.6;
		FinalCooldownTime = 1.1;
		ComboLength = 5;
		GripAnimation = "KunaiGripAnim";
		GripSound = "SwordGrip";
		GripZVector = -2.5;
		VictimGripAnimation = "StompGripVictim";
		Combo = {
			['1'] = {
				Animation = "KunaiSlash1";
				ActionTime = 0.12;
			};
			['2'] = {
				Animation = "KunaiSlash2";
				ActionTime = 0.12;
			};
			['3'] = {
				Animation = "KunaiSlash3";
				ActionTime = 0.12;
			};
			['4'] = {
				Animation = "KunaiSlash4";
				ActionTime = 0.12;
			};
			['5'] = {
				Animation = "KunaiSlash5";
				ActionTime = 0.23;
				ParticleTime = 0.5;
			};
		};
		BlockCount = 2;
		Block = {
			['1'] = "KunaiBlock1";
			['2'] = "KunaiBlock2";
		};
		HeavyAttack = {
			Ground = {
				Animation = "KunaiHeavyAttack";
				ActionTime = 0.46;
				Cooldown = 1.2;
				ParticleTime = 0.6;
				Point1 = CFrame.new(5, 4, 1.5);
				Point2 = CFrame.new(-3, -4, -15);
			};
			Air = {
				Animation = "KunaiAirHeavyAttack";
				ActionTime = 0.25;
				Cooldown = 1;
				ParticleTime = 0.6;
				Speed = 70;
				Point1 = CFrame.new(5.5, -2, -2);
				Point2 = CFrame.new(-5.5, -9, -9.5);
				Direction = CFrame.new(0, 100, 100);
			};
		};
		Damage = {
			NormalAttack = 6;
			HeavyAttack = 12;
		};
	};
	Asumai = {
		Bleed = 5;
		Metallic = true;
		Point1 = CFrame.new(5, 5, 1.5);
		Point2 = CFrame.new(-5, -5, -6.2);
		CooldownTime = 0.42;
		StunTime = 0.67;
		FinalCooldownTime = 1.1;
		ComboLength = 5;
		ChakraPunchDamageBoost = 1.3;
		ChakraPunchCost = 2;
		GripAnimation = "StompGrip";
		GripSound = "StompGrip";
		GripZVector = -1.1;
		VictimGripAnimation = "StompGripVictim";
		Idle = "AsumaiIdle";
		Combo = {
			['1'] = {
				Animation = "RightHook";
				ActionTime = 0.12;
				Right = true;
			};
			['2'] = {
				Animation = "LeftHook";
				ActionTime = 0.12;
				Left = true;
			};
			['3'] = {
				Animation = "RightHook";
				ActionTime = 0.12;
				Right = true;
			};
			['4'] = {
				Animation = "LeftHook";
				ActionTime = 0.12;
				Left = true;
			};
			['5'] = {
				Animation = "DoubleHook";
				ActionTime = 0.25;
				ParticleTime = 0.5;
				Right = true;
				Left = true;
			};
		};
		BlockCount = 3;
		Block = {
			['1'] = "AsumaiBlock1";
			['2'] = "AsumaiBlock2";
			['3'] = "AsumaiBlock3";
		};
		HeavyAttack = {
			Ground = {
				Animation = "AsumaiHeavy";
				ActionTime = 0.38;
				Cooldown = 1.1;
				ParticleTime = 0.6;
				Point1 = CFrame.new(4, 4.5, 1.5);
				Point2 = CFrame.new(-4, -4, -5.5);
				BodyParts = {
					RightHand = true;
					LeftHand = true;
				};
			};
			Air = {
				Animation = "FlyingHook";
				ActionTime = 0.2;
				Cooldown = 1;
				ParticleTime = 0.6;
				Speed = 70;
				Point1 = CFrame.new(4.5, -2, -2);
				Point2 = CFrame.new(-4.5, -8, -9.5);
				Direction = CFrame.new(0, 100, 100);
				BodyParts = {
					RightHand = true;
					LeftHand = true;
				};
			};
		};
		Damage = {
			NormalAttack = 7;
			HeavyAttack = 13;
		};
	};
}
module_6_upvr.Door = {
	Standard = {
		Speed = 0.25;
		Sound = "JapaneseDoor";
	};
	SlidingRock = {
		Speed = 0.25;
		Sound = "RockDoor";
	};
}
module_6_upvr.TeleportLocations = {
	["Sorythia Town"] = {
		OrderNumber = 1;
		ID = "5981657027";
	};
	["Windy Plains 1"] = {
		OrderNumber = 2;
		ID = "6079549859";
	};
	["Windy Plains 2"] = {
		OrderNumber = 3;
		ID = "7043591052";
	};
	["Windy Plains 3"] = {
		OrderNumber = 4;
		ID = "7043516757";
	};
	["Rosemary Pit"] = {
		OrderNumber = 5;
		ID = "6026134132";
	};
	["Biyo Bay"] = {
		OrderNumber = 6;
		ID = "6343348905";
	};
	Passageway = {
		OrderNumber = 7;
		ID = "6870240552";
	};
	["The Oasis"] = {
		OrderNumber = 8;
		ID = "6857240421";
	};
	["Durana Town"] = {
		OrderNumber = 9;
		ID = "7436094421";
	};
	["Serpent's Cove Entrance"] = {
		OrderNumber = 10;
		ID = "8990587561";
	};
	["Foot Of The Serpent's Cove"] = {
		OrderNumber = 11;
		ID = "9008772780";
	};
	["Training Grounds"] = {
		OrderNumber = 12;
		ID = "7273861356";
	};
	["Rooftop Balcony"] = {
		OrderNumber = 13;
		ID = "8193067392";
	};
	["Fort Mello"] = {
		OrderNumber = 14;
		ID = "9983473940";
	};
	["Rose Bay"] = {
		OrderNumber = 15;
		ID = "10540567893";
	};
	["The Expanse"] = {
		OrderNumber = 16;
		ID = "10236042321";
	};
	["Combat Hall"] = {
		OrderNumber = 17;
		ID = "10523988849";
	};
	["Chakra's Edge"] = {
		OrderNumber = 18;
		ID = "9983419878";
	};
	["Arctic Cove"] = {
		OrderNumber = 19;
		ID = "11910801251";
	};
	["Snow Village"] = {
		OrderNumber = 20;
		ID = "140472911526246";
	};
}
module_6_upvr.Locations = {
	["Sorythia Town"] = {
		Description = "Home of the many, refuge of the few";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 150;
		FogEnd = 900;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = true;
		Villages = {"Sorythia", "Neutral"};
	};
	["Windy Plains"] = {
		Description = "Terratorial monsters ravage through the area";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 150;
		FogEnd = 1000;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
	};
	["The Expanse"] = {
		Description = "The lands in between";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 150;
		FogEnd = 1200;
		Ambient = Color3.new(0.5882352941176471, 0.5882352941176471, 0.5882352941176471);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
	};
	["Arctic Plains"] = {
		Description = "The wind whistles above the icy terrain";
		FogColor = Color3.fromRGB(220, 220, 220);
		FogStart = 0;
		FogEnd = 700;
		Ambient = Color3.new(0.5882352941176471, 0.5882352941176471, 0.5882352941176471);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "SnowAmbience";
		NightSound = "SnowAmbience";
		SpawnPoint = false;
	};
	["Snow Village"] = {
		Description = "The wind whistles above this village.";
		FogColor = Color3.fromRGB(220, 220, 220);
		FogStart = 0;
		FogEnd = 700;
		Ambient = Color3.new(0.5882352941176471, 0.5882352941176471, 0.5882352941176471);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "SnowAmbience";
		NightSound = "SnowAmbience";
		SpawnPoint = true;
		Villages = {"Snow", "Neutral"};
	};
	["Inner Rosemary"] = {
		Description = "Tairock's training ground";
		FogColor = Color3.fromRGB(227, 85, 166);
		FogStart = 50;
		FogEnd = 1100;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
		SpawningForbidden = true;
	};
	["Fort Mello"] = {
		Description = "The edge of the expanse";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 150;
		FogEnd = 1100;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
	};
	["The Chakralands"] = {
		Description = "Your chakra connection is magnified here.";
		FogColor = Color3.fromRGB(15, 75, 107);
		FogStart = 0;
		FogEnd = 1000;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
	};
	["Rose Sanctum"] = {
		Description = "All roads lead to Rose";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 150;
		FogEnd = 1100;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
		SpawningForbidden = true;
	};
	["Rose Road"] = {
		Description = "The Rose lies ahead";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 150;
		FogEnd = 1100;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
	};
	["Durana Town"] = {
		Description = "The traveller's abode";
		FogColor = Color3.new(1, 0.8352941176470589, 0.4196078431372549);
		FogStart = 0;
		FogEnd = 1200;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Desert";
		NightSound = "Desert";
		SpawnPoint = true;
		Villages = {"Durana", "Neutral"};
		SphereSize = Vector3.new(750, 750, 750);
		Blur = 3;
	};
	["The Desolated Dunes"] = {
		Description = "Desert and dust, hand in hand, plotting your demise.";
		FogColor = Color3.new(1, 0.8352941176470589, 0.4196078431372549);
		FogStart = 0;
		FogEnd = 1200;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Desert";
		NightSound = "Desert";
		SpawnPoint = false;
		SphereSize = Vector3.new(750, 750, 750);
		Blur = 3;
	};
	["Desertoid Lair"] = {
		Description = "Desert and dust, hand in hand, plotting your demise.";
		FogColor = Color3.new(1, 0.8352941176470589, 0.4196078431372549);
		FogStart = 0;
		FogEnd = 600;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Desert";
		NightSound = "Desert";
		SpawnPoint = false;
		SphereSize = Vector3.new(750, 750, 750);
		Blur = 2;
		SpawningForbidden = true;
	};
	["Bandit Lair"] = {
		Description = "Desert and dust, hand in hand, plotting your demise.";
		FogColor = Color3.new(1, 0.8352941176470589, 0.4196078431372549);
		FogStart = 0;
		FogEnd = 600;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Desert";
		NightSound = "Desert";
		SpawnPoint = false;
		SphereSize = Vector3.new(750, 750, 750);
		Blur = 2;
		SpawningForbidden = true;
	};
	["Serpent's Cove"] = {
		Description = "No man's land";
		FogColor = Color3.fromRGB(84, 61, 132);
		FogStart = 0;
		FogEnd = 500;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Catacombs";
		NightSound = "Catacombs";
		SpawnPoint = false;
		SphereSize = Vector3.new(0, 0, 0);
		Blur = 1.5;
	};
	["Serpent's Lair"] = {
		Description = "No man's land";
		FogColor = Color3.fromRGB(84, 61, 132);
		FogStart = 0;
		FogEnd = 500;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Catacombs";
		NightSound = "Catacombs";
		SpawnPoint = false;
		SphereSize = Vector3.new(0, 0, 0);
		Blur = 1.5;
		SpawningForbidden = true;
	};
	["The Oasis"] = {
		Description = "An isolated patch of greenery, a temporary abode.";
		FogColor = Color3.new(1, 0.8352941176470589, 0.4196078431372549);
		FogStart = 0;
		FogEnd = 1200;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Desert";
		NightSound = "Desert";
		SpawnPoint = false;
		SphereSize = Vector3.new(0, 0, 0);
		Blur = 3;
	};
	Passageway = {
		Description = "The connecting body between the desert and its provision.";
		FogColor = Color3.new(1, 0.8352941176470589, 0.4196078431372549);
		FogStart = 300;
		FogEnd = 1200;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Passageway";
		NightSound = "Passageway";
		SpawnPoint = false;
		SphereSize = Vector3.new(0, 0, 0);
	};
	["Orochi's Hideout"] = {
		Description = "Hidden beneath the expanse, endless corridors.";
		FogColor = Color3.new(1, 0.8352941176470589, 0.4196078431372549);
		FogStart = 300;
		FogEnd = 1200;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Passageway";
		NightSound = "Passageway";
		SpawnPoint = false;
		SphereSize = Vector3.new(0, 0, 0);
	};
	["Zen's Residence"] = {
		Description = "A sense of calm envelops the elevated complex";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 200;
		FogEnd = 1300;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
	};
	["Hyuga Residence"] = {
		Description = "A sense of calm envelops the elevated complex";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 200;
		FogEnd = 1300;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
	};
	["Biyo Bay"] = {
		Description = "Sounds of crashing waves are commonplace in this water front town";
		FogColor = Color3.new(0, 0.3215686274509804, 0.35294117647058826);
		FogStart = 300;
		FogEnd = 2000;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "IndoorTown";
		NightSound = "IndoorTown";
		SpawnPoint = true;
		Villages = {"Sorythia", "Durana", "Rain", "Snow", "Neutral"};
	};
	["Biyo Sea"] = {
		Description = "A large and unforgiving body of water";
		FogColor = Color3.new(0, 0.3215686274509804, 0.35294117647058826);
		FogStart = 300;
		FogEnd = 1500;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Ocean";
		NightSound = "Ocean";
		SpawnPoint = false;
	};
	["The Mist"] = {
		Description = "The foggy surroundings overtake your senses";
		FogColor = Color3.new(0, 0.3215686274509804, 0.35294117647058826);
		FogStart = 50;
		FogEnd = 500;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Ocean";
		NightSound = "Ocean";
		SpawnPoint = true;
		Villages = {"Rain", "Neutral"};
		SphereSize = Vector3.new(550, 550, 550);
		Blur = 2;
	};
	["The Catacombs"] = {
		Description = "Beware these passages, lest they never let you leave";
		FogColor = Color3.new(0, 0, 0);
		FogStart = 200;
		FogEnd = 400;
		Ambient = Color3.new(0, 0, 0);
		OutdoorAmbient = Color3.new(0, 0, 0);
		DaySound = "Catacombs";
		NightSound = "Catacombs";
		SpawnPoint = false;
		SpawningForbidden = true;
	};
	["Akatsuki Hideout"] = {
		Description = "A sinner's last resort.";
		FogColor = Color3.fromRGB(65, 48, 71);
		FogStart = 0;
		FogEnd = 400;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "Catacombs";
		NightSound = "Catacombs";
		SphereSize = Vector3.new(500, 500, 500);
		SpawnPoint = true;
		Villages = {"Rogue"};
	};
	["Combat Hall"] = {
		Description = "Where legends are made";
		FogColor = Color3.fromRGB(55, 62, 53);
		FogStart = 0;
		FogEnd = 700;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
		SpawningForbidden = false;
	};
	["The Void"] = {
		Description = "Perish.";
		FogColor = Color3.new(0, 0, 0);
		FogStart = 200;
		FogEnd = 400;
		Ambient = Color3.new(0, 0, 0);
		OutdoorAmbient = Color3.new(0, 0, 0);
		DaySound = "Catacombs";
		NightSound = "Catacombs";
		SpawnPoint = false;
	};
	["Arkoromo Time Space"] = {
		Description = "No time passes in this continium...";
		FogColor = Color3.new(0, 0, 0);
		FogStart = 0;
		FogEnd = 50;
		Ambient = Color3.new(0, 0, 0);
		OutdoorAmbient = Color3.new(0, 0, 0);
		DaySound = "RebirthRoom";
		NightSound = "RebirthRoom";
		SpawnPoint = false;
	};
	["Kamui Timespace"] = {
		Description = "An alternate dimension...";
		FogColor = Color3.new(0.1607843137254902, 0.19607843137254902, 0.20784313725490197);
		FogStart = 200;
		FogEnd = 500;
		Ambient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "RebirthRoom";
		NightSound = "RebirthRoom";
		SpawnPoint = false;
	};
	["Grassy Prarie"] = {
		Description = "Terratorial monsters ravage through the area";
		FogColor = Color3.new(0, 0.35294117647058826, 0.2627450980392157);
		FogStart = 150;
		FogEnd = 1000;
		Ambient = Color3.new(0.49019607843137253, 0.49019607843137253, 0.49019607843137253);
		OutdoorAmbient = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803);
		DaySound = "ForestDay";
		NightSound = "ForestNight";
		SpawnPoint = false;
	};
}
module_6_upvr.UI = {
	TopFrame = "6509981994";
	MiddleFrame = "6509982659";
	BottomFrame = "6509983138";
	CompletedFrame = "6510117138";
	StandardBorder = "6111584176";
	SelectedBorder = "6836702842";
	LockedBorder = "6877102222";
	RyoSign = "9805819947";
	LockedLineColor = Color3.fromRGB(48, 48, 48);
	UnlockedLineColor = Color3.fromRGB(85, 191, 202);
	PermalockedLineColor = Color3.fromRGB(154, 56, 56);
	GrassColor = Color3.fromRGB(6, 90, 58);
	FireColor = Color3.fromRGB(255, 50, 23);
	EarthColor = Color3.fromRGB(126, 71, 27);
	WaterColor = Color3.fromRGB(34, 78, 124);
	WindColor = Color3.fromRGB(255, 255, 255);
	CloneColor = Color3.fromRGB(255, 255, 255);
	PoisonColor = Color3.fromRGB(87, 27, 124);
	LightningColor = Color3.fromRGB(0, 196, 255);
	BlueLightningColor = Color3.fromRGB(23, 135, 255);
	HealingColor = Color3.fromRGB(37, 255, 164);
	ChakraColor = Color3.fromRGB(16, 108, 255);
	HealthColor = Color3.fromRGB(255, 33, 55);
	SealingColor = Color3.fromRGB(162, 80, 255);
	FireSealingColor = Color3.fromRGB(255, 138, 43);
	ChefColor = Color3.fromRGB(255, 197, 49);
	BlackFireColor = Color3.fromRGB(0, 0, 0);
	PurpleFireColor = Color3.fromRGB(142, 105, 223);
	GreenFireColor = Color3.fromRGB(0, 221, 122);
	AdamantineColor = Color3.fromRGB(253, 234, 141);
	SummoningColor = Color3.fromRGB(162, 80, 255);
	PurpleSusanooColor = Color3.fromRGB(183, 0, 255);
	BurnColor = Color3.fromRGB(19, 24, 16);
}
module_6_upvr.Settings = {
	MinRankToDisplay = 50;
	MinRankPoints = 200;
	BaseSpeed = 16;
	BaseJump = 50;
	BleedDamage = 0.16;
	DefaultMinZoom = 0.5;
	DefaultMaxZoom = 30;
	ConsumableEffectTime = 12;
	TraitsAcumen = 100;
	FlawsAcumen = 100;
	ChakraSealedDamage = 11;
	JutsuMasteryAcumen = 75;
	StunSpeed = 10;
	StunJump = 0;
	MeleeStunTime = 0.6;
	DashCooldown = 2.6;
	DashTime = 0.5;
	BlockCooldown = 0.5;
	BlockBreakStunTime = 1.75;
	PerfectBlockWindow = 0.25;
	PerfectBlockCooldown = 0.4;
	PerfectBlockStunTime = 1.75;
	MaxKnockTime = 12;
	FireKillTime = 7;
	RegenRate = 0.0015;
	FoodCounterRate = 0.0005;
	CarryCooldown = 1;
	NormalChakraIncrement = 2.3;
	ChakraFeetCost = 0.7;
	MaxItems = 100;
	ReanimatedBloodColor = 0;
	DefaultXPGain = 5;
	RainFireSize = 0.8;
	JailSinsMin = 15;
	JailReward = 50;
	SinsMax = 50;
	AccessoryPrice = 95;
	SwitchFacePrice = 25;
	ImplantPrice = 200;
	MinImplantAge = 16;
	AwakeningTime = 40;
	AwakeningCooldown = 60;
	TreeJumpChakra = 6;
	ChakraDashCost = 4;
	SubCost = 5;
	SubCooldown = 8;
	ArmorBreakRangeMax = 45;
	ArmorBreakRangeMin = 25;
	ChipDamage = 0.2;
	LightningModifier = 0.16;
	ThunderStormDamage = 45;
	DefaultFOV = 70;
	RunFOV = 78;
	SlideFOV = 80;
	ClashTime = 0.13;
	ResetTime = 10;
	LaserAttackDamage = 13;
	MaxFruitCount = 220;
	TeleportLocationsCount = module_6_upvr:getTeleportLocationsCount();
	OriginalFruitCookerColor = Color3.new(0.13333333333333333, 0.47843137254901963, 1);
	NewHairPrice = 15;
	BaldPrice = 5;
	SlotTweenTime = 0.2;
	SingleSinPrice = 5;
	BuyConditionFail = "You can't buy this yet.";
	ClanNameLimit = 13;
	ClanCreationAge = 30;
	RyoMax = 5000;
	RenderDistance = 600;
	ItemDestroyTime = 120;
	KamuiDamage = 8;
}
module_6_upvr.QuestProposals = {}
module_6_upvr.NPC = {
	Dummy = {
		BodyType = "Humanoid";
		RandomName = true;
		Clothing = "Rags";
		MaxHealth = 100;
		NPCType = "Combat";
		InstantDeath = false;
		LoadParticles = true;
		AcumenReward = 3;
		Combat = {
			OriginSpeed = 0;
			OriginJump = 0;
			KnockbackResistance = false;
			AttackedChat = {"Stop hitting me!", "Enough!", "Have you no shame?!", "You're hurting me!", "Stop that this instant!"};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 100;
			AttackRange = 7;
			CanBeCarried = true;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 250;
		};
		Response = "....Sure is a sunny day huh.....";
		Option1 = {
			Text = ".....Yep....";
			Type = "Quit";
		};
	};
	Manda = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 1000;
		NPCType = "Dialog";
		Idle = "BIGSittingLegsForward";
		RequiredSounds = {"BarbarianJump", "BarbarianLandSmash", "BarbarianRoar"};
		BigChar = true;
		AcumenReward = 18;
		LoadParticles = false;
		InstantDeath = true;
		Combat = {
			OriginSpeed = 16;
			OriginJump = 80;
			KnockbackResistance = true;
			PermenantHyperarmour = true;
			AttackedChat = {"..."};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 250;
			AttackRange = 60;
			CanBeCarried = false;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 700;
			CloseRangeAttacks = {
				["Tail Swish"] = {
					HyperArmour = true;
					Damage = 12;
					Blockable = false;
				};
				["Full Body Swish"] = {
					HyperArmour = true;
					Damage = 15;
					Blockable = false;
				};
				["Snake Spit"] = {
					HyperArmour = true;
					Damage = 5;
					Blockable = true;
				};
			};
			FarRangeAttacks = {
				["Snake Strike"] = {
					HyperArmour = true;
					Damage = 17;
					Blockable = false;
				};
			};
			ReturnAbility = "Leap Back";
		};
		CustomValues = {
			perfectBlockedAmount = {
				Type = "NumberValue";
				Value = 0;
			};
		};
		PoundMaxPerfectBlock = 2;
	};
	["Combat Instructor Clone"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 100;
		NPCType = "Combat";
		CustomAnimationScript = "NinjaAnimation";
		RequiredSounds = {"Dash", "Jump"};
		CanSub = true;
		AcumenReward = 1;
		LoadParticles = true;
		InstantDeath = true;
		DropItem = "Broken Leaf Armor";
		Combat = {
			OriginSpeed = 22;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			DoesNotGrip = true;
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 10;
			CanBeCarried = true;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Fist = {
					HyperArmour = false;
					Blockable = true;
					CombatTypeAttack = true;
				};
			};
			FarRangeAttacks = {
				["Front Roll"] = {
					HyperArmour = true;
					Damage = 21;
					Blockable = false;
				};
			};
			VerticalAbility = {
				Jump = {
					Damage = 0;
				};
			};
			ReturnAbility = "Leap Back";
		};
	};
	Tairock = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 700;
		NPCType = "Dialog";
		Idle = "handstand";
		CustomAnimationScript = "NinjaAnimation";
		RequiredSounds = {"Dash", "Jump"};
		CanSub = false;
		AcumenReward = 11;
		LoadParticles = true;
		DropItem = "Broken Leaf Armor";
		Combat = {
			OriginSpeed = 24;
			OriginJump = 80;
			KnockbackResistance = false;
			PermenantHyperarmour = true;
			AttackedChat = {"Stop!", "Stop it!", "Are you mad!", "Be careful...", "What's your problem?", "Got a problem?"};
			AlwaysAggro = false;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 10;
			CanBeCarried = false;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Tai = {
					HyperArmour = false;
					Blockable = true;
					CombatTypeAttack = true;
				};
				LeafWhirlwind = {
					HyperArmour = true;
					Damage = 12;
					Blockable = true;
				};
			};
			FarRangeAttacks = {
				["Front Roll"] = {
					HyperArmour = true;
					Damage = 21;
					Blockable = false;
				};
				["Dynamic Entry"] = {
					HyperArmour = true;
					Damage = 13;
					Blockable = false;
				};
			};
			VerticalAbility = {
				Jump = {
					Damage = 0;
				};
			};
			ReturnAbility = "Leap Back";
		};
		Response = "...Haar!...Humph!...Haar!...";
		Option1 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Biyo Bay Guard"] = {
		BodyType = "Humanoid";
		RandomName = true;
		Clothing = "";
		MaxHealth = 120;
		NPCType = "Combat";
		CustomAnimationScript = "NinjaAnimation";
		RequiredSounds = {"Dash", "Jump"};
		AcumenReward = 4;
		CanSub = true;
		MaleHair = true;
		LoadParticles = true;
		InstantDeath = true;
		DropItem = "Broken Biyo Armor";
		Combat = {
			OriginSpeed = 22;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 12;
			CanBeCarried = true;
			CanBeGripped = true;
			DeleteWhenOutOfCombat = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Greatsword = {
					HyperArmour = false;
					Blockable = true;
					CombatTypeAttack = true;
				};
			};
			FarRangeAttacks = {
				["Front Roll"] = {
					HyperArmour = true;
					Blockable = false;
				};
			};
			VerticalAbility = {
				Jump = {
					Damage = 0;
				};
			};
			ReturnAbility = "Leap Back";
		};
	};
	["Fort Mello Guard"] = {
		BodyType = "Humanoid";
		RandomName = true;
		Clothing = "";
		MaxHealth = 130;
		NPCType = "Combat";
		CustomAnimationScript = "NinjaAnimation";
		RequiredSounds = {"Dash", "Jump"};
		AcumenReward = 4;
		CanSub = true;
		MaleHair = true;
		LoadParticles = true;
		InstantDeath = true;
		DropItem = "Broken Mello Armor";
		Combat = {
			OriginSpeed = 24;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 12;
			CanBeCarried = true;
			CanBeGripped = true;
			DeleteWhenOutOfCombat = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Halberd = {
					HyperArmour = false;
					Blockable = true;
					CombatTypeAttack = true;
				};
			};
			FarRangeAttacks = {
				["Front Roll"] = {
					HyperArmour = true;
					Blockable = false;
				};
			};
			VerticalAbility = {
				Jump = {
					Damage = 0;
				};
			};
			ReturnAbility = "Leap Back";
		};
	};
	Bandit = {
		BodyType = "Humanoid";
		RandomName = true;
		Clothing = "";
		MaxHealth = 80;
		NPCType = "Combat";
		CustomAnimationScript = "NinjaAnimation";
		RequiredSounds = {"Dash", "Jump"};
		AcumenReward = 3;
		CanSub = true;
		FemaleHair = true;
		LoadParticles = true;
		InstantDeath = true;
		Combat = {
			OriginSpeed = 22;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 12;
			CanBeCarried = true;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Sword = {
					HyperArmour = false;
					Blockable = true;
					CombatTypeAttack = true;
				};
			};
			FarRangeAttacks = {
				["Front Roll"] = {
					HyperArmour = true;
					Blockable = false;
				};
			};
			VerticalAbility = {
				Jump = {
					Damage = 0;
				};
			};
			ReturnAbility = "Leap Back";
		};
	};
	Snowstopper = {
		BodyType = "Humanoid";
		RandomName = true;
		Clothing = "";
		MaxHealth = 125;
		NPCType = "Combat";
		CustomAnimationScript = "NinjaAnimation";
		RequiredSounds = {"Dash", "Jump"};
		AcumenReward = 6;
		CanSub = true;
		LoadParticles = true;
		InstantDeath = true;
		DropItem = "Black Flame Gem";
		Combat = {
			OriginSpeed = 24;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 12;
			CanBeCarried = true;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 600;
			CloseRangeAttacks = {
				Sword = {
					HyperArmour = false;
					Blockable = true;
					CombatTypeAttack = true;
				};
			};
			FarRangeAttacks = {
				["Front Roll"] = {
					HyperArmour = true;
					Blockable = false;
				};
				["Snowstopper Sprint"] = {
					HyperArmour = true;
					Damage = 10;
					Blockable = false;
				};
			};
			VerticalAbility = {
				Jump = {
					Damage = 0;
				};
			};
			ReturnAbility = "Leap Back";
		};
	};
	Hostage = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 100;
		NPCType = "Combat";
		AcumenReward = 0;
		SpawnKnocked = true;
		LoadParticles = true;
		InstantDeath = true;
		KnockedAnim = "HostageSit";
		Combat = {
			OriginSpeed = 22;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 12;
			CanBeCarried = true;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 5000;
		};
	};
	Desertoid = {
		BodyType = "Humanoid";
		RandomName = true;
		Clothing = "";
		MaxHealth = 80;
		NPCType = "Combat";
		CustomAnimationScript = "ClayRunnerAnimation";
		RequiredSounds = {"Dash"};
		AcumenReward = 2;
		LoadParticles = true;
		InstantDeath = true;
		DropItem = "Switchpowder";
		DropChance = 5;
		Combat = {
			OriginSpeed = 20;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 10;
			CanBeCarried = true;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Fist = {
					HyperArmour = false;
					Blockable = true;
					CombatTypeAttack = true;
				};
			};
			FarRangeAttacks = {
				["Desertoid Sprint"] = {
					HyperArmour = true;
					Damage = 8;
					Blockable = false;
				};
			};
			ReturnAbility = "Leap Back";
		};
	};
	ShadowClone = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 1;
		NPCType = "Misc";
		CustomAnimationScript = "NinjaAnimation";
		RequiredSounds = {"Dash", "Jump"};
		CanSub = true;
		LoadParticles = true;
		InstantDeath = true;
		Combat = {
			OriginSpeed = 22;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"..."};
			AlwaysAggro = false;
			Aggressive = false;
			AggroRange = 150;
			AttackRange = 10;
			CanBeCarried = false;
			CanBeGripped = false;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Fist = {
					HyperArmour = false;
					Blockable = true;
					CombatTypeAttack = true;
				};
			};
			FarRangeAttacks = {
				["Front Roll"] = {
					HyperArmour = true;
					Damage = 21;
					Blockable = false;
				};
			};
			VerticalAbility = {
				Jump = {
					Damage = 0;
				};
			};
			ReturnAbility = "Leap Back";
		};
	};
	["Clay Runner"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 17;
		NPCType = "Combat";
		CustomAnimationScript = "ClayRunnerAnimation";
		RequiredSounds = {};
		CanSub = true;
		AcumenReward = 1;
		LoadParticles = true;
		InstantDeath = true;
		Combat = {
			OriginSpeed = 36;
			OriginJump = 50;
			KnockbackResistance = false;
			PermenantHyperarmour = false;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = true;
			Aggressive = true;
			AggroRange = 90;
			AttackRange = 100;
			CanBeCarried = true;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Explode = {
					HyperArmour = true;
					Blockable = false;
					Damage = 20;
				};
			};
			FarRangeAttacks = {};
		};
	};
	Lavarossa = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 600;
		NPCType = "Dialog";
		RequiredSounds = {"BarbarianJump", "BarbarianLandSmash", "BarbarianRoar"};
		BigChar = true;
		AcumenReward = 13;
		LoadParticles = true;
		Combat = {
			OriginSpeed = 20;
			OriginJump = 80;
			KnockbackResistance = true;
			PermenantHyperarmour = true;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = false;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 20;
			CanBeCarried = false;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			StartingAttack = "Petrifying Roar";
			CloseRangeAttacks = {
				["Lava Ground Pound"] = {
					HyperArmour = true;
					Damage = 15;
					Blockable = true;
				};
				["Lava Stomp"] = {
					HyperArmour = true;
					Damage = 20;
					Blockable = false;
				};
			};
			FarRangeAttacks = {
				["Giant Lava Leap"] = {
					HyperArmour = true;
					Damage = 21;
					Blockable = false;
				};
				["Lava Roar"] = {
					HyperArmour = true;
					Damage = 1;
					Range = 100;
					Blockable = true;
				};
			};
			ReturnAbility = "Leap Back";
		};
		CustomValues = {
			perfectBlockedAmount = {
				Type = "NumberValue";
				Value = 0;
			};
		};
		PoundMaxPerfectBlock = 4;
		Response = "No....Don't go....He never come back.....Don't.....No....Me Wait....No go....Back.....Go back....Don't....";
		Option1 = {
			Text = "Don't go in?";
			Type = "Info";
			Response = "...Don't.....Friend go in......Never come......Me wait.....Don't go......No go......Back go......Me wait.......Me wait.....";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "You're pretty fat aren't you?";
			Type = "Info";
			Response = "...Me?.....Fat?......No fat....You think funny?.......Hahaha.......Hit......You Dare?";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "Goodbye";
			Type = "Quit";
		};
	};
	["Barbarit The Rose"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 750;
		NPCType = "Combat";
		Idle = "BIGSittingLegsForward";
		RequiredSounds = {"BarbarianJump", "BarbarianLandSmash", "BarbarianRoar"};
		BigChar = true;
		AcumenReward = 14;
		LoadParticles = true;
		InstantDeath = false;
		DropItem = "Barbarit Wraps";
		Combat = {
			OriginSpeed = 17;
			OriginJump = 80;
			KnockbackResistance = true;
			PermenantHyperarmour = true;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			KilledChat = "Put these foolish ambitions to rest...";
			AlwaysAggro = false;
			Aggressive = true;
			AggroRange = 180;
			AttackRange = 22;
			CanBeCarried = false;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				["Club Swing Vertical"] = {
					Damage = 16;
					Blockable = false;
				};
				["Club Swing"] = {
					Damage = 16;
					Blockable = false;
				};
				["Club Spin"] = {
					Damage = 4;
					Blockable = true;
				};
				Strafe = {};
			};
			FarRangeAttacks = {
				Strafe = {};
				["Club Spin"] = {
					Damage = 4;
					Blockable = true;
				};
				["Kamui Club Slam"] = {
					Damage = 17;
					Blockable = true;
				};
			};
			ReturnAbility = "Leap Back";
		};
		CustomValues = {
			perfectBlockedAmount = {
				Type = "NumberValue";
				Value = 0;
			};
		};
		PoundMaxPerfectBlock = 3;
		Response = "Foul shinobi, emboldened by the will of fire.Someone must extinguish thy flame. Let it be Barbarit the Rose!";
		Option1 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Chakra Knight"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 800;
		NPCType = "Dialog";
		Idle = "DisassembledIdle";
		RequiredSounds = {"BarbarianJump", "BarbarianLandSmash", "BarbarianRoar"};
		AcumenReward = 14;
		BigChar = true;
		LoadParticles = true;
		InstantDeath = true;
		Combat = {
			OriginSpeed = 22;
			OriginJump = 80;
			KnockbackResistance = true;
			PermenantHyperarmour = true;
			AttackedChat = {"..."};
			AlwaysAggro = false;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 40;
			CanBeCarried = false;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			CloseRangeAttacks = {
				Swing = {
					Damage = 18;
					Blockable = false;
				};
				Stab = {
					Damage = 15;
					Blockable = false;
				};
				Stab1 = {
					Damage = 15;
					Blockable = false;
				};
				ChakraKnightSlam = {
					Damage = 18;
					Blockable = false;
				};
			};
			FarRangeAttacks = {
				Stab = {
					Damage = 15;
					Blockable = false;
				};
				ChakraKnightSlam = {
					Damage = 18;
					Blockable = false;
				};
			};
			ReturnAbility = "Leap Back";
		};
		CustomValues = {
			perfectBlockedAmount = {
				Type = "NumberValue";
				Value = 0;
			};
		};
		PoundMaxPerfectBlock = 4;
		Response = "<i>You sense an immense store of chakra within the suit of armor</i>";
		Option1 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["The Barbarian"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 450;
		NPCType = "Dialog";
		Idle = "BIGSittingLegsForward";
		RequiredSounds = {"BarbarianJump", "BarbarianLandSmash", "BarbarianRoar"};
		AcumenReward = 10;
		BigChar = true;
		LoadParticles = true;
		InstantDeath = false;
		DropItem = "Redsmith's Mold";
		Combat = {
			OriginSpeed = 21;
			OriginJump = 80;
			KnockbackResistance = true;
			PermenantHyperarmour = true;
			AttackedChat = {"STOP!", "WHY!", "NO HIT!", "STOP HURT!"};
			AlwaysAggro = false;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 20;
			CanBeCarried = false;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			StartingAttack = "Petrifying Roar";
			CloseRangeAttacks = {
				["Ground Pound"] = {
					Damage = 20;
					Blockable = false;
				};
				["Ground Pound1"] = {
					Damage = 20;
					Blockable = false;
				};
				["Ground Pound2"] = {
					Damage = 20;
					Blockable = false;
				};
				["Giant Leap"] = {
					Damage = 25;
					Blockable = false;
				};
			};
			FarRangeAttacks = {
				["Giant Leap"] = {
					Damage = 25;
					Blockable = false;
				};
				["Petrifying Roar"] = {
					Damage = 4;
					Range = 100;
					Blockable = true;
				};
			};
			ReturnAbility = "Leap Back";
		};
		CustomValues = {
			perfectBlockedAmount = {
				Type = "NumberValue";
				Value = 0;
			};
		};
		PoundMaxPerfectBlock = 3;
		Response = "No....Don't go....He never come back.....Don't.....No....Me Wait....No go....Back.....Go back....Don't....";
		Option1 = {
			Text = "Don't go in?";
			Type = "Info";
			Response = "...Don't.....Friend go in......Never come......Me wait.....Don't go......No go......Back go......Me wait.......Me wait.....";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "You're pretty fat aren't you?";
			Type = "Info";
			Response = "...Me?.....Fat?......No fat....You think funny?.......Hahaha.......Hit......You Dare?";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "Goodbye";
			Type = "Quit";
		};
	};
	["Earth Golem"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 60;
		NPCType = "Combat";
		RequiredSounds = {"BarbarianJump", "BarbarianLandSmash", "BarbarianRoar"};
		AcumenReward = 1;
		BigChar = true;
		LoadParticles = true;
		InstantDeath = true;
		Combat = {
			OriginSpeed = 21;
			OriginJump = 80;
			KnockbackResistance = true;
			PermenantHyperarmour = true;
			AttackedChat = {"..."};
			AlwaysAggro = false;
			Aggressive = true;
			AggroRange = 150;
			AttackRange = 20;
			CanBeCarried = false;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 500;
			StartingAttack = "Earth Roar";
			CloseRangeAttacks = {
				["Ground Pound"] = {
					Damage = 18;
					Blockable = false;
				};
				["Ground Pound1"] = {
					Damage = 18;
					Blockable = false;
				};
				["Ground Pound2"] = {
					Damage = 18;
					Blockable = false;
				};
				["Earth Roar"] = {
					Damage = 3;
					Range = 60;
					Blockable = true;
				};
			};
			FarRangeAttacks = {
				["Earth Roar"] = {
					Damage = 3;
					Range = 60;
					Blockable = true;
				};
			};
			ReturnAbility = "Leap Back";
		};
		CustomValues = {
			perfectBlockedAmount = {
				Type = "NumberValue";
				Value = 0;
			};
		};
		PoundMaxPerfectBlock = 3;
		Response = "No....Don't go....He never come back.....Don't.....No....Me Wait....No go....Back.....Go back....Don't....";
		Option1 = {
			Text = "Don't go in?";
			Type = "Info";
			Response = "...Don't.....Friend go in......Never come......Me wait.....Don't go......No go......Back go......Me wait.......Me wait.....";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "You're pretty fat aren't you?";
			Type = "Info";
			Response = "...Me?.....Fat?......No fat....You think funny?.......Hahaha.......Hit......You Dare?";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "Goodbye";
			Type = "Quit";
		};
	};
	Cratos = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		MaxHealth = 250;
		NPCType = "Dialog";
		Idle = "HidingCrate";
		RequiredSounds = {};
		AcumenReward = 8;
		DontAnnoyMe = true;
		CustomAnimationScript = "CratosAnimation";
		InstantDeath = true;
		DropItem = "Ghostly Bracelet";
		LoadParticles = "Partial";
		Combat = {
			OriginSpeed = 25;
			OriginJump = 80;
			KnockbackResistance = false;
			AttackedChat = {"....urgh....", "....what the....", "....what on....", "....who the....", "....who on....", "....argh....", "....leave me....", "....another one....", "....careful...."};
			AlwaysAggro = false;
			Aggressive = true;
			AggroRange = 120;
			AttackRange = 14;
			CanBeCarried = false;
			CanBeGripped = true;
			MaxDistanceFromSpawn = 300;
			StartingAttack = "";
			CloseRangeAttacks = {
				Spin = {
					HyperArmour = true;
					Damage = 7;
					Blockable = true;
				};
			};
			FarRangeAttacks = {
				LaserAttack = {
					HyperArmour = true;
					Damage = 16;
					Blockable = false;
				};
			};
			ReturnAbility = "";
		};
		Response = "...........zZZZZZZZZZZZZZ...............zZZZZZZZZZZZZZZZ...........";
		Option1 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Rogue Mello Guard"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Idle = "CoolLean";
		Quest = "Clones Debacle";
		Response = "Damn it! I should've been more careful...";
		Option1 = {
			Text = "What's wrong?";
			Type = "Info";
			Response = "Huh...Well...I was experimenting with the clone jutsu down at Fort Mello and things got out of hand...";
			Option1 = {
				Text = "The Clone Jutsu?";
				Type = "Info";
				Response = "Yep, that's the one. I was developing some new variations when I accidentally created clones that kept repeating and just wouldn't go out...";
				Option1 = {
					Text = "Anything I can do to help?";
					Type = "ClonesDebacleCheck";
					Response = "There's only one thing you can do. Finish what I started and put an end to them. Bring me three of their armor pieces to convince me you've completed the mission and put my heart at rest...";
					Option1 = {
						Text = "Ok, leave it with me.";
						Type = "Quest";
						QuestName = "Clones Debacle";
					};
					Option2 = {
						Text = "You're on your own...";
						Type = "Info";
						Response = "Oh great...";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
					Failed = {
						Response = "Without any proficiency with clones, you'll have a tough time defeating them. I can't set you out on a mission, ill-equipped.";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["The Earthly Explorer"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Idle = "HandsInfront";
		Quest = "Earth Retrieval";
		Response = "Hmm. After something?";
		Option1 = {
			Text = "What are you doing here?";
			Type = "Info";
			Response = "Well aren't you inquisitive...How about you answer me first. After something?";
			Option1 = {
				Text = "New Earth abilities.";
				Type = "Info";
				Response = "Interesting.";
				Option1 = {
					Text = "So...?";
					Type = "EarthCheck";
					Response = "I can help with that. But first, retrieve the scroll ahead.";
					Option1 = {
						Text = "Er...";
						Type = "Quest";
						QuestName = "Earth Retrieval";
					};
					Option2 = {
						Text = "Hell no...";
						Type = "Quit";
					};
					Failed = {
						Response = "Lacking talent is one thing. But not even practicing this elemental nature before coming to me? What a terrible work ethic.";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
					FailedV1 = {
						Response = "I'm currently putting someone else to the test. Come back later.";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["The Cunning Collector"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Idle = "SittingCrossLegged";
		Response = "Find yourself getting lost every now and then?";
		Option1 = {
			Text = "Yes...";
			Type = "Info";
			Response = "I'll sell you a special something so you won't ever get lost again...";
			Option1 = {
				Text = "Can I get one?";
				Type = "Info";
				Response = "That will cost you a juicy <font color=\"rgb(255, 233, 144)\">"..module_6_upvr.Items.Chakrabone.SalePrice.." Ryo.</font>";
				Option1 = {
					Text = "I'll pay.";
					Type = "Payment";
					Amount = module_6_upvr.Items.Chakrabone.SalePrice;
					Item = "Chakrabone";
					Response = "Have fun on your perilious adventures...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "Does I look like a charity? Pay up!";
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Can I get five?";
				Type = "Info";
				Response = "That will cost you a juicy <font color=\"rgb(255, 233, 144)\">"..(module_6_upvr.Items.Chakrabone.SalePrice * 5).." Ryo.</font>";
				Option1 = {
					Text = "I'll pay.";
					Type = "Payment";
					Amount = module_6_upvr.Items.Chakrabone.SalePrice * 5;
					Item = "Chakrabone";
					Quantity = 5;
					Response = "Have fun on your perilious adventures...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "Does I look like a charity? Pay up!";
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "I'm good...";
				Type = "Info";
				Response = "Good riddance with you and your attachment to your wealth....";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "No.";
			Type = "Info";
			Response = "Good riddance with you and your attachment to your wealth....";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I don't sell to the likes of you...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Bugs Specialist"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Idle = "SittingCrossLegged";
		Response = "...";
		Option1 = {
			Text = "Can I help you?";
			Type = "BugsCheck";
			Response = "Would you happen to have a tool for extraction by any chance? I need it to discover a new specific of bugs.";
			Option1 = {
				Text = "I have it here.";
				Type = "ExtractionSpoonCheck";
				Response = "Thanks a lot. I mean it.";
				Option1 = {
					Text = "Great.";
					Type = "Quit";
				};
				Failed = {
					Response = "No you don't...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Failed = {
				Response = "You don't have the bugs expertise for the job I'm afraid";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV1 = {
				Response = "I've already imparted all my knowledge to you.";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "Goodbye";
			Type = "Quit";
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">Revolting...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Undead Cook"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Idle = "SittingCrossLegged";
		Response = "Interested in some juicy chicken?";
		Option1 = {
			Text = "Can I get one leg?";
			Type = "PaymentCheck";
			Item = "Chicken";
			Quantity = 1;
			Response = "Hehe, that will cost you a sweet ";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Items.Chicken.SalePrice;
				Item = "Chicken";
				Response = "Enjoy the best undead chicken in town, lest you join me...hehe...";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "The chicken's got a price. Pay up!";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "Can I get five legs?";
			Type = "PaymentCheck";
			Item = "Chicken";
			Quantity = 5;
			Response = "Hehe, that will cost you a sweet ";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Items.Chicken.SalePrice * 5;
				Item = "Chicken";
				Quantity = 5;
				Response = "Enjoy the best undead chicken in town, lest you join me...hehe...";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "The chicken's got a price. Pay up!";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "What happened to you?";
			Type = "Info";
			Response = "A second chance at life after a fatal fall off the Moriko Bridge...And I'm spending it selling chicken...";
			Option1 = {
				Text = "Moriko Bridge?";
				Type = "Info";
				Response = "It's a thin bridge that connects our town to the mainland forest. It's not known to be the safest route though...I'm the living example of it...or should I say undead...hehe...";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Anything I can do to help?";
				Type = "Info";
				Response = "Not much, but if enough people buy my chicken maybe one day I'll have enough Ryo to travel and find the man who ressurected me so I can thank him...";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye";
				Type = "Quit";
			};
		};
		Option4 = {
			Text = "Goodbye";
			Type = "Quit";
		};
		SinsMax = 10;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I don't sell to the likes of you...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	Aki = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "SittingCrossLegged";
		Response = "Peace be upon you, how can I help?";
		Option1 = {
			Text = "I've forgotten my pin...";
			Type = "Info";
			Response = "I think I can help with that......Hmm let me see......";
			Option1 = {
				Text = "....So....what is it?";
				Type = "GivePin";
				Response = "Ah, I believe it was ";
				Option1 = {
					Text = "Ok, Thanks.";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Nevermind.";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "What's the image on the wall..";
			Type = "Info";
			Response = "Picture?....Oh, <i>that</i> picture.....I actually have....no idea...... <font color=\"rgb(255, 121, 150)\">***                    ***                    ***</font>.....Erm, what were we talking about again?";
			Option1 = {
				Text = "Nothing.";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "Bye";
			Type = "Quit";
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">You're stinking up the whole place! I won't tolerate sinful delinquents like you! Leave at once!</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The 1st Zetsu"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "ZetsuDeactivated";
		Response = "...Urgh...";
		Option1 = {
			Text = "You stuck or something?";
			Type = "ZetsuCheck";
			Response = "Yeah...You gonna do something about it?";
			Option1 = {
				Text = "Like what?";
				Type = "Info";
				Response = "Like bringing me a mashed up clump of cells from one of our brethren. And 50 Acumen as well while you're at it.";
				Option1 = {
					Text = "I got that right now.";
					Type = "ZetsuDonateCheck";
					Response = "Solid...Well at least we are, I can't speak for our mashed up friend here...";
					Option1 = {
						Text = "Cool...";
						Type = "Quit";
					};
					Failed = {
						Response = "Nah you don't...";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
			};
			Option2 = {
				Text = "Nevermind.";
				Type = "Quit";
			};
			Failed = {
				Response = "A Zetsu. That's all I asked for and I can't even get that but instead I get you...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV1 = {
				Response = "By choice now. I can't move just yet.";
				Type = "Info";
				Option1 = {
					Text = "Ok...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMin = 2;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">You don't have the heart for this...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The 2nd Zetsu"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "ZetsuDeactivated";
		Response = "...Urgh...";
		Option1 = {
			Text = "You stuck or something?";
			Type = "ZetsuCheck";
			Response = "Yeah...You gonna do something about it?";
			Option1 = {
				Text = "Like what?";
				Type = "Info";
				Response = "Like bringing me a mashed up clump of cells from one of our brethren. And 50 Acumen as well while you're at it.";
				Option1 = {
					Text = "I got that right now.";
					Type = "ZetsuDonateCheck";
					Response = "Solid...Well at least we are, I can't speak for our mashed up friend here...";
					Option1 = {
						Text = "Cool...";
						Type = "Quit";
					};
					Failed = {
						Response = "Nah you don't...";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
			};
			Option2 = {
				Text = "Nevermind.";
				Type = "Quit";
			};
			Failed = {
				Response = "A Zetsu. That's all I asked for and I can't even get that but instead I get you...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV1 = {
				Response = "By choice now. I can't move just yet.";
				Type = "Info";
				Option1 = {
					Text = "Ok...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		Option3 = {
			Condition = {
				Req1 = "AscendedZetsu";
				Req2 = "NotPoisonZetsu";
			};
			Text = "I'm looking for something extra...";
			Type = "Info";
			Response = "I hear you. <font color=\"rgb(255, 121, 150)\">Bring me 10 Poison Gems</font> to upgrade your mode";
			Option1 = {
				Text = "I got it.";
				Type = "ZetsuPoisonCheck";
				Response = "Perfect. A new passive poison utility has been added to your kit";
				Option1 = {
					Text = "Thanks.";
					Type = "Quit";
				};
				Failed = {
					Response = "No you don't...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "I'll go get it.";
				Type = "Quit";
			};
		};
		SinsMin = 2;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">You don't have the heart for this...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The 3rd Zetsu"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "ZetsuDeactivated";
		Response = "...Urgh...";
		Option1 = {
			Text = "You stuck or something?";
			Type = "ZetsuCheck";
			Response = "Yeah...You gonna do something about it?";
			Option1 = {
				Text = "Like what?";
				Type = "Info";
				Response = "Like bringing me a mashed up clump of cells from one of our brethren. And 50 Acumen as well while you're at it.";
				Option1 = {
					Text = "I got that right now.";
					Type = "ZetsuDonateCheck";
					Response = "Solid...Well at least we are, I can't speak for our mashed up friend here...";
					Option1 = {
						Text = "Cool...";
						Type = "Quit";
					};
					Failed = {
						Response = "Nah you don't...";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
			};
			Option2 = {
				Text = "Nevermind.";
				Type = "Quit";
			};
			Failed = {
				Response = "A Zetsu. That's all I asked for and I can't even get that but instead I get you...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV1 = {
				Response = "By choice now. I can't move just yet.";
				Type = "Info";
				Option1 = {
					Text = "Ok...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMin = 2;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">You don't have the heart for this...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The 4th Zetsu"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "ZetsuDeactivated";
		Response = "...Urgh...";
		Option1 = {
			Text = "You stuck or something?";
			Type = "ZetsuCheck";
			Response = "Yeah...You gonna do something about it?";
			Option1 = {
				Text = "Like what?";
				Type = "Info";
				Response = "Like bringing me a mashed up clump of cells from one of our brethren. And 50 Acumen as well while you're at it.";
				Option1 = {
					Text = "I got that right now.";
					Type = "ZetsuDonateCheck";
					Response = "Solid...Well at least we are, I can't speak for our mashed up friend here...";
					Option1 = {
						Text = "Cool...";
						Type = "Quit";
					};
					Failed = {
						Response = "Nah you don't...";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
			};
			Option2 = {
				Text = "Nevermind.";
				Type = "Quit";
			};
			Failed = {
				Response = "A Zetsu. That's all I asked for and I can't even get that but instead I get you...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV1 = {
				Response = "By choice now. I can't move just yet.";
				Type = "Info";
				Option1 = {
					Text = "Ok...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMin = 2;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">You don't have the heart for this...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Jobless Farmer"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "SittingCrossLegged";
		Quest = "Search For The Chakra Crops";
		Response = "Peace be upon you, what brings you this deep in the desert?";
		Option1 = {
			Text = "Just travelling...";
			Type = "Info";
			Response = "In that case, welcome and I hope you have a great time here!";
			Option1 = {
				Text = "I see...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "This place looks pretty barren...";
			Type = "Info";
			Response = "Indeed it is, I use to be a farmer in the Expanse but I had a calling and decided to move over here. I do recall seeing some chakra-infused crops somewhere though.....";
			Option1 = {
				Text = "I could get some for you...";
				Type = "Info";
				Response = "Really? That would be great and we could sustain our town for a while with it. <font color=\"rgb(255, 121, 150)\">I think 5 will be enough</font>";
				Option1 = {
					Text = "Ok, leave it with me.";
					Type = "Quest";
					QuestName = "Search For The Chakra Crops";
				};
				Option2 = {
					Text = "Bye.";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "Bye";
			Type = "Quit";
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">......What's that stench?!?.......-Oh.......Leave me at once with your sinful stinking self!!......</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Scarlet Slowcoach"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "AnxiousStanding";
		Quest = "A Run For Your Life";
		Response = "Hey! You there!";
		Option1 = {
			Text = "Me?";
			Type = "Info";
			Response = "Yes you! You look like a capable shinobi and I need your help! I'm on the run and I'm trying to get past the stream here but there's a dangerous shark in the waters. Can you create a distraction so I can pass through?";
			Option1 = {
				Text = "Ok, I'll help create a distraction";
				Type = "Quest";
				QuestName = "A Run For Your Life";
			};
			Option2 = {
				Text = "Sorry.";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">.....I may be on the run, but there's no way I'm relying on a two-faced delinquent like you for help.....</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	Crabuto = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "It is unbecoming of a sage like me to treat guests like you with anything less than the upmost hospitality, how may I help?";
		Option1 = {
			Text = "Implanting these eyes";
			Type = "CheckEyes";
			Response = "That's going to be a risky procedure. However if you are intent on going through with it, I can perform the operation at a price of "..module_6_upvr.Settings.ImplantPrice.." Ryo.";
			Option1 = {
				Text = "Do it.";
				Type = "ImplantEyes";
				Response = "Here we go...";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "I don't work for free...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Failed = {
				Response = "What eyes?";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV1 = {
				Response = "Your body is not strong enough to undergo an operation like this...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV2 = {
				Response = "You already have fine eyes...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		Busy = {
			Response = "A little bit busy here...";
			Type = "Info";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		SinsMin = 1;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">My my, you're far too clean to try and converse with me. Scurry back from whence you came.</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Slithering Sannin"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "BedLie";
		Response = "Who do I find standing at my bedside I wonder. Regardless of who you are, you might just discover something of value while you're here...";
		Option1 = {
			Text = "I wish for a new face...";
			Type = "Info";
			Response = "It's only human nature to always want to better ones self but I can't gurrantee you'll be satisfied with what you recieve. I will require a switch powder and "..module_6_upvr.Settings.SwitchFacePrice.." Ryo to perform this transformation...";
			Option1 = {
				Text = "Here it is.";
				Type = "NewFace";
				Response = "I'm done. Remember that irrespective of how you feel about your new face, take some solace in the fact that, in the grand scheme of time, you're nothing more than a trivial footnote...";
				Option1 = {
					Text = "...ok...";
					Type = "Quit";
				};
				Failed = {
					Response = "You don't seem to be gifted in the art of deception, I'll give you that...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "I'm not pleased...'";
			Type = "Info";
			Response = "With what?";
			Option1 = {
				Text = "My traits...";
				Type = "TraitCheck";
				Response = "I can reshuffle that for you if you happen to have "..module_6_upvr.Settings.TraitsAcumen.." acumen and 2 Switchpowder...";
				Option1 = {
					Text = "ok...";
					Type = "TraitReshuffle";
					Response = "Enjoy your new abilities...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "You don't seem to be gifted in the art of deception, I'll give you that...";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
				Failed = {
					Response = "What traits?";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "My flaws...";
				Type = "FlawCheck";
				Response = "I can reshuffle that for you if you happen to have "..module_6_upvr.Settings.FlawsAcumen.." acumen and 2 Switchpowder...";
				Option1 = {
					Text = "ok...";
					Type = "FlawReshuffle";
					Response = "Enjoy your new abilities...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "You don't seem to be gifted in the art of deception, I'll give you that...";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
				Failed = {
					Response = "What flaws?";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
		};
		Option3 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["The Redsmith"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "MoldingIdle";
		ArmorUpgradeCost = 300;
		Response = "Why, hello.";
		Option1 = {
			Text = "I need an armor upgrade.";
			Type = "ArmorUpgradeRequirements";
			Response = "Well, that will require 300 ryo and a smithing mold. Some beligerent oaf stole some of ours a while ago and I've heard he was seen crossing the Moriko bridge.";
			Option1 = {
				Text = "I have what you need.";
				Type = "ArmorUpgrade";
				Response = "Great, I've upgraded your armor for you. Whatever it was doing before, it will perform even better now.";
				Option1 = {
					Text = "Thanks.";
					Type = "Quit";
				};
				Failed = {
					Response = "No you don't...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
				FailedV1 = {
					Response = "I can't upgrade that...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "Well, that will require 300 Ryo, A smithing mold and 3 Black Flame gems";
				Option1 = {
					Text = "I have what you need.";
					Type = "ArmorUpgrade";
					Response = "Great, I've upgraded your armor for you. Whatever it was doing before, it will perform even better now.";
					Option1 = {
						Text = "Thanks.";
						Type = "Quit";
					};
					Failed = {
						Response = "No you don't...";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
					FailedV1 = {
						Response = "I can't upgrade that...";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 24;
		Sins = {
			Response = longstring5;
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Blacksmith"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "BlacksmithHit";
		Response = "...";
		Option1 = {
			Text = "I need a ring upgrade";
			Type = "Info";
			Response = "Present me with the ring you want upgraded and make sure you have a ring schematic then...";
			Option1 = {
				Text = "I have what you need.";
				Type = "RingUpgrade";
				Response = "Your ring should perform better now...";
				Option1 = {
					Text = "Thanks.";
					Type = "Quit";
				};
				Failed = {
					Response = "No you don't...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
				FailedV1 = {
					Response = "Where's the ring?";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
				FailedV2 = {
					Response = "I can't upgrade that";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 24;
		Sins = {
			Response = longstring5;
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Bedouin"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "SittingCrossLegged";
		Quest = "An Extravagant Dish";
		Response = "Peace be to you, traveller. How may I help you?";
		Option1 = {
			Text = "What's the desert like?";
			Type = "Info";
			Response = "It's a beautiful place to live, a bit dangerous in the dark and it's kind of annoying when sand gets in your eyes but I still love living here.";
			Option1 = {
				Text = "I see...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "What's that pearl on your turban?";
			Type = "Info";
			Response = "Oh this? I'm not quite sure, I found this in a gem-like form and decided to integrate a part of it into my clothing. The glow sure does attract attention.....";
			Option1 = {
				Text = "Could I get the other part?...";
				Type = "Info";
				Response = "I'll give you it if you help me out. On one of my travels, I tasted a beautiful dish with chickens and some...mangos? I don't recall too well. <font color=\"rgb(255, 121, 150)\">Think you could remake it and bring it to me?</font>";
				Option1 = {
					Text = "Ok, I'll get that for you.";
					Type = "Quest";
					QuestName = "An Extravagant Dish";
				};
				Option2 = {
					Text = "Bye.";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "Bye";
			Type = "Quit";
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">What's that smell? Have the camels defecated in the pond again.......Oh wait it's just you and your countless sins...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Food Merchant"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "SittingCrossLegged";
		Quest = "Fruit Cooker";
		Response = "Got any fresh food for sale? I'm buying!";
		Option1 = {
			Text = "Yes, I'll selling in bulk.";
			Type = "SellingBulk";
			Amount = "Fruit";
			Function = "Bulk";
			Response = "I'll buy that off you for ";
			Option1 = {
				Text = "I'll sell.";
				Type = "RyoReward";
				Amount = "Fruit";
				Amount2 = "Fish";
				Function = "Bulk";
				Response = "Thanks for the food! Arigato!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "You don't even have any food...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "You don't even have any food...";
				Text = "Bye";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "Yes, I'll sell you a specific food.";
			Type = "Selling";
			Amount = "Fruit";
			Function = "SelectedFood";
			Response = "I'll buy that off you for ";
			Option1 = {
				Text = "I'll sell.";
				Type = "RyoReward";
				Amount = "";
				Function = "SelectedFood";
				Response = "Thanks for the food! Arigato!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "You don't even have any food...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "You need to show me the item you want to sell...";
				Text = "Bye";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "I'm not interested in buying that";
				Type = "Info";
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option3 = {
			Text = "Bye";
			Type = "Quit";
		};
		Option4 = {
			Condition = {
				Req1 = "QuestNotStarted";
				Req2 = "Fruit Cooker";
			};
			Text = "Do you make fruit bowls?";
			Type = "Info";
			Response = longstring6;
			Option1 = {
				Text = "Alright!";
				Type = "Quest";
				QuestName = "Fruit Cooker";
			};
			Option2 = {
				Text = "I'll stick with my fruits...";
				Type = "Quit";
			};
		};
		SinsMax = 18;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">Why do I smell a strong odour of sinfulness......Oh.</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Rogue Food Merchant"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Quest = "Fruit Cooker";
		Response = "Got any fresh food for sale? I'm buying!";
		Option1 = {
			Text = "Yes, I'll selling in bulk.";
			Type = "SellingBulk";
			Amount = "Fruit";
			Function = "Bulk";
			Response = "I'll buy that off you for ";
			Option1 = {
				Text = "I'll sell.";
				Type = "RyoReward";
				Amount = "Fruit";
				Amount2 = "Fish";
				Function = "Bulk";
				Response = "Thanks for the food! Arigato!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "You don't even have any food...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "You don't even have any food...";
				Text = "Bye";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "Yes, I'll sell you a specific food.";
			Type = "Selling";
			Amount = "Fruit";
			Function = "SelectedFood";
			Response = "I'll buy that off you for ";
			Option1 = {
				Text = "I'll sell.";
				Type = "RyoReward";
				Amount = "";
				Function = "SelectedFood";
				Response = "Thanks for the food! Arigato!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "You don't even have any food...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "You need to show me the item you want to sell...";
				Text = "Bye";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "I'm not interested in buying that";
				Type = "Info";
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option3 = {
			Text = "Bye";
			Type = "Quit";
		};
		Option4 = {
			Condition = {
				Req1 = "QuestNotStarted";
				Req2 = "Fruit Cooker";
			};
			Text = "Do you make fruit bowls?";
			Type = "Info";
			Response = longstring6;
			Option1 = {
				Text = "Alright!";
				Type = "Quest";
				QuestName = "Fruit Cooker";
			};
			Option2 = {
				Text = "I'll stick with my fruits...";
				Type = "Quit";
			};
		};
	};
	Merchant = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "Got anything of value on you, mate?";
		Option1 = {
			Text = "A bulk sale";
			Response = "What would you like to sell in bulk?";
			Option1 = {
				Text = "Trinkets";
				Type = "SellingBulk";
				Amount = "Trinket";
				Function = "Bulk";
				Response = "I'll buy that off you for ";
				Option1 = {
					Text = "I'll sell.";
					Type = "RyoReward";
					Amount = "Trinket";
					Function = "Bulk";
					Response = "Appreciate the goods, mate!";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "None of what you have interests me...";
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
				Failed = {
					Response = "None of what you have interests me...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Gems";
				Type = "SellingBulk";
				Amount = "Gem";
				Function = "Bulk";
				Response = "I'll buy that off you for ";
				Option1 = {
					Text = "I'll sell.";
					Type = "RyoReward";
					Amount = "Gem";
					Function = "Bulk";
					Response = "Appreciate the goods, mate!";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "None of what you have interests me...";
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
				Failed = {
					Response = "None of what you have interests me...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "None of what you have interests me...";
				Text = "Bye";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "A specific item";
			Type = "Selling";
			Amount = "Trinket";
			Function = "SelectedTrinket";
			Response = "I'll buy that off you for ";
			Option1 = {
				Text = "I'll sell.";
				Type = "RyoReward";
				Amount = "";
				Function = "SelectedTrinket";
				Response = "Appreciate the goods, mate!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "None of what you have interests me...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "You need to show me the item you want to sell...";
				Text = "Bye";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "I'm not interested in buying that";
				Type = "Info";
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option3 = {
			Text = "A weapon";
			Type = "SellingWeapon";
			Response = "I'll buy that off you for ";
			Option1 = {
				Text = "I'll sell.";
				Type = "SellWeaponReward";
				Response = "Appreciate the goods, mate!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "None of what you have interests me...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "What weapon?";
				Text = "Bye";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "That's not a weapon...";
				Type = "Info";
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option4 = {
			Text = "Bye";
			Type = "Quit";
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">You reek of sins...Leave me be.</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Rogue Merchant"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "Got anything of value on you, mate?";
		Option1 = {
			Text = "A bulk sale";
			Response = "What would you like to sell in bulk?";
			Option1 = {
				Text = "Trinkets";
				Type = "SellingBulk";
				Amount = "Trinket";
				Function = "Bulk";
				Response = "I'll buy that off you for ";
				Option1 = {
					Text = "I'll sell.";
					Type = "RyoReward";
					Amount = "Trinket";
					Function = "Bulk";
					Response = "Appreciate the goods, mate!";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "None of what you have interests me...";
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
				Failed = {
					Response = "None of what you have interests me...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Gems";
				Type = "SellingBulk";
				Amount = "Gem";
				Function = "Bulk";
				Response = "I'll buy that off you for ";
				Option1 = {
					Text = "I'll sell.";
					Type = "RyoReward";
					Amount = "Gem";
					Function = "Bulk";
					Response = "Appreciate the goods, mate!";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "None of what you have interests me...";
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
				Failed = {
					Response = "None of what you have interests me...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "None of what you have interests me...";
				Text = "Bye";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "A specific item";
			Type = "Selling";
			Amount = "Trinket";
			Function = "SelectedTrinket";
			Response = "I'll buy that off you for ";
			Option1 = {
				Text = "I'll sell.";
				Type = "RyoReward";
				Amount = "";
				Function = "SelectedTrinket";
				Response = "Appreciate the goods, mate!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "None of what you have interests me...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "You need to show me the item you want to sell...";
				Text = "Bye";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "I'm not interested in buying that";
				Type = "Info";
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option3 = {
			Text = "A weapon";
			Type = "SellingWeapon";
			Response = "I'll buy that off you for ";
			Option1 = {
				Text = "I'll sell.";
				Type = "SellWeaponReward";
				Response = "Appreciate the goods, mate!";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "None of what you have interests me...";
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
			Failed = {
				Response = "What weapon?";
				Text = "Bye";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "That's not a weapon...";
				Type = "Info";
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option4 = {
			Text = "Bye";
			Type = "Quit";
		};
	};
	Arkoromo = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "Float";
		Response = "Seems you've reached the end of your life. But it's not over yet. How do you seek to continue?";
		Option1 = {
			Text = "Reincarnation.";
			Type = "Info";
			Response = "Reincarnation as a male or a female?";
			Option1 = {
				Text = "Male.";
				Type = "Reincarnation";
				Response = "May your new life be a better one...";
				Option1 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Female.";
				Type = "Reincarnation";
				Response = "May your new life be a better one...";
				Option1 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "New Bloodline";
			Type = "Info";
			Response = "Reincarnation as a male or female?";
			Option1 = {
				Text = "Male.";
				Type = "BloodlineReincarnation";
				Response = "May your new life be a better one...";
				Option1 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Female.";
				Type = "BloodlineReincarnation";
				Response = "May your new life be a better one...";
				Option1 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye.";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "Reanimation";
			Type = "Reanimation";
			Response = "A second chance has been granted...";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "I can't reanimate....a reanimation. It seems like you're done and it's time to move on from this vessel.";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option4 = {
			Text = "Bye";
			Type = "Quit";
		};
		Failed = {
			Response = "It's not your time to move on yet. Leave this place. [Reset or use Chakrabone]";
			Text = "...";
			Type = "Quit";
		};
	};
	["The Swordsman"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "Got a nice weapon on you? Planning to keep it? I can help with that";
		Option1 = {
			Text = "Yeah.";
			Type = "Info";
			Response = "I can bind your weapon to you if you bring me a chakra fragment.";
			Option1 = {
				Text = "I have it here.";
				Type = "WeaponBind";
				Response = "All done. Enjoy.";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "I can't bind it if you don't bring me the chakra fragment...Make sure you have a weapon as well.";
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "No thanks.";
			Type = "Quit";
		};
		Option3 = {
			Text = "Wings....";
			Type = "AkimichiCheck";
			Response = longstring7;
			Option1 = {
				Text = "I have it here.";
				Type = "AllStarCheck";
				Response = "Delicious. Put those wings to good use and I'm not talking about the succulent kind!";
				Option1 = {
					Text = "Thanks.";
					Type = "Quit";
				};
				Failed = {
					Response = "No you don't...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Failed = {
				Response = longstring8;
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		AlternativeDialog = {
			Response = "I hope that bound weapon of yours is working wonders for you.";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
			Option2 = {
				Text = "Wings....";
				Type = "AkimichiCheck";
				Response = longstring7;
				Option1 = {
					Text = "I have it here.";
					Type = "AllStarCheck";
					Response = "Delicious. Put those wings to good use and I'm not talking about the succulent kind!";
					Option1 = {
						Text = "Thanks.";
						Type = "Quit";
					};
					Failed = {
						Response = "No you don't...";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
				Failed = {
					Response = longstring8;
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
		};
		AlternativeCondition = "WeaponBound";
		SinsMax = 25;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I don't accomodate sin-ridden individuals...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	InnKeeper = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Quest = "InnKeeper's Reunion";
		Response = "Would you like to occupy a room in this town?";
		Option1 = {
			Text = "Yes.";
			Type = "SetSpawn";
			Response = "All done! Enjoy your stay!";
			Option1 = {
				Text = "Goodbye";
				Type = "Quit";
			};
			Failed = {
				Response = "You can't sleep here...";
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "No thanks.";
			Type = "Quit";
		};
		Option3 = {
			Condition = {
				Req1 = "QuestNotStarted";
				Req2 = "InnKeeper's Reunion";
			};
			Text = "Have I seen you before...?";
			Type = "Info";
			Response = longstring9;
			Option1 = {
				Text = "Ok, I'll do it.";
				Type = "Quest";
				QuestName = "InnKeeper's Reunion";
			};
			Option2 = {
				Text = "No thanks.";
				Type = "Quit";
			};
		};
	};
	["Rogue InnKeeper"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Quest = "InnKeeper's Reunion";
		Response = "Would you like to occupy a room in this town?";
		Option1 = {
			Text = "Yes.";
			Type = "SetSpawn";
			Response = "All done! Enjoy your stay!";
			Option1 = {
				Text = "Goodbye";
				Type = "Quit";
			};
			Failed = {
				Response = "You can't sleep here...";
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "No thanks.";
			Type = "Quit";
		};
		Option3 = {
			Condition = {
				Req1 = "QuestNotStarted";
				Req2 = "InnKeeper's Reunion";
			};
			Text = "Have I seen you before...?";
			Type = "Info";
			Response = longstring9;
			Option1 = {
				Text = "Ok, I'll do it.";
				Type = "Quest";
				QuestName = "InnKeeper's Reunion";
			};
			Option2 = {
				Text = "No thanks.";
				Type = "Quit";
			};
		};
	};
	["The Mysterious Man"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Quest = "Kamui Resistance Training";
		Response = "Not feeling too well?";
		Option1 = {
			Text = "Yeah...";
			Type = "Info";
			Response = "Kamui teleportation isn't an easy thing to build resistance for. But I'm afraid that ability only comes with repetition. Bring me "..module_6_upvr.Quests["Kamui Resistance Training"].AmountRequired.." Kamui essences and I'll see what I can do.";
			Option1 = {
				Text = "Alright.";
				Type = "Quest";
				QuestName = "Kamui Resistance Training";
			};
			Option2 = {
				Text = "I'm good.";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "I'm fine";
			Type = "Info";
			Response = "Very well. Not sure why you're still speaking to me if that's the case...";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		SinsMin = 5;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">You look suspicious...who are you trying to fool here?</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Training Instructor"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Quest = "Parkour Training";
		Response = "Are you interested in improving your skills as a shinobi";
		Option1 = {
			Text = "Yes.";
			Type = "Info";
			Response = "Very well. <font color=\"rgb(255, 121, 150)\">Retrieve the training bells that I've hidden somewhere in these training grounds.</font> Once you do that, I'll impart some knowledge to you.";
			Option1 = {
				Text = "Ok, I'll do it.";
				Type = "Quest";
				QuestName = "Parkour Training";
			};
			Option2 = {
				Text = "No thanks.";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "No.";
			Type = "Quit";
		};
		SinsMax = 30;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I don't converse with sin-ridden individuals like you...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Combat Instructor"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Quest = "Combat Training";
		Response = "Are you interested in improving your skills as a shinobi";
		Option1 = {
			Text = "Yes.";
			Type = "Info";
			Response = "See those logs down there? <font color=\"rgb(255, 121, 150)\">I'm going to need you to punch them a 1000 times, then you will be ready.</font> Remember, as a shinobi, you must always expect the unexpected.";
			Option1 = {
				Text = "Ok, I'll do it.";
				Type = "Quest";
				QuestName = "Combat Training";
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "No.";
			Type = "Quit";
		};
		SinsMax = 30;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I don't converse with sin-ridden individuals like you...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	Lavaroldy = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "LavaroldyIdle";
		Quest = "Humbling Lavarossa";
		Response = "<i>Stares into ceiling with a blank expression</i>";
		Option1 = {
			Text = "What's wrong?";
			Type = "Info";
			Response = "It's my son. He's lost his mind...";
			Option1 = {
				Text = "Your son?";
				Type = "Info";
				Response = "Yes. Even now I recall the sweet young boy he was back then... Now he's the reason, I'm sitting here dying. Unable to get up. At the end of the road.";
				Option1 = {
					Text = "That sounds terrible. Can I help?";
					Type = "Info";
					Response = "Well, our race cipher our energy from these horns of ours and as you can see, I've all used up mine. His horns however...";
					Option1 = {
						Text = "I understand. I'll take him out and bring back his horns.";
						Type = "Info";
						Response = "I'm not sure what caliber of a shinobi you are to speak with such confidence...But if you can back up your talk, please don't kill him. Just humble him a bit.";
						Option1 = {
							Text = "Got it.";
							Type = "Quest";
							QuestName = "Humbling Lavarossa";
						};
						Option2 = {
							Text = "I don't think I can do this.";
							Type = "Info";
							Response = "Then what was all that about...";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 40;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I don't mind dabbling with the sinful...But you're on a different level.</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Deprived Damsel"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "SittingExposed";
		Quest = "Bracelet Retrieval";
		Response = ".......<i>huff</i>........I need........your help..........<i>huff</i>............";
		Option1 = {
			Text = "What can I do?";
			Type = "Info";
			Response = "........This world.......is suffocating me......<i>huff</i>......I need my........bracelet.........to return to the moon......... <i>huff</i>.......";
			Option1 = {
				Text = "Your bracelet?";
				Type = "Info";
				Response = "......Yes.......Some primitive machine...........stole it.........I'm too weak..........to get it back.........<i>huff</i>..........";
				Option1 = {
					Text = "I'll get it back for you.";
					Type = "Quest";
					QuestName = "Bracelet Retrieval";
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		Option3 = {
			Condition = {
				Req1 = "Otsutsuki";
				Req2 = "NoBlood";
			};
			Text = "I want to do more with blood.";
			Type = "Info";
			Response = "You seem capable of achieving more with it. <font color=\"rgb(255, 121, 150)\">Bring me a Bloodbite Ring and I'll impart some knowledge to you</font>";
			Option1 = {
				Text = "I got it.";
				Type = "BloodbiteCheck";
				Response = "Perfect. Your weapons now run red with the blood of your enemies";
				Option1 = {
					Text = "Great.";
					Type = "Quit";
				};
				Failed = {
					Response = "No you don't...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "I'll go get it.";
				Type = "Quit";
			};
		};
		SinsMax = 24;
		Sins = {
			Response = longstring11;
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	Mizuli = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Quest = "A Fate Of Lightning";
		Response = "Greetings. What brings you to these heights?";
		Option1 = {
			Text = "I seek the ability to command lightning.";
			Type = "FateOfLightningCheck";
			Response = "Hmm, interesting. You seem somewhat familiar with it already. However one does not acquire an ability like that without feeling the lightning ripple through their very veins.";
			Option1 = {
				Text = "I'll try and get that experience";
				Type = "Quest";
				QuestName = "A Fate Of Lightning";
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "It's not right to seek an ability you have done no training for.";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 30;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I don't converse with sin-ridden individuals like you...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Sorythia Sensei"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Village = "Sorythia";
		InVillageResponse = {
			Response = "Good day. What can I help you with?";
			Type = "ExamCheck";
			Normal = {
				Response = "Good day. What can I help you with?";
				Option1 = {
					Response = "What type of information?";
					Text = "Information";
					Option1 = {
						Text = "Economy";
						Type = "VillageEconomy";
						ExtraInfo = "Sorythia";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option2 = {
						Text = "Politics";
						Type = "VillagePolitics";
						ExtraInfo = "Sorythia";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option3 = {
						Text = "Data";
						Type = "VillageData";
						ExtraInfo = "Sorythia";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option4 = {
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "I want to take an exam.";
					Response = "Which exam would you like to take?";
					Option1 = {
						Text = "Genin";
						Type = "GeninExam";
						Response = "Exam has started., please defeat The Barbarian.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have defeated The Barbarian!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option2 = {
						Text = "Chunin";
						Type = "ChuninExam";
						Response = "Exam has started. You must prove that you can defeat a Genin from another village.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have defeated a Genin from another village!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option3 = {
						Text = "Jonin";
						Type = "JoninExam";
						Response = "Exam has started. You must capture a notorious Rogue.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have successfully captured a notorious Rogue!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option4 = {
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Completed = {
				Response = "Congratulations, you have been promoted!";
				Option1 = {
					Text = "Thanks!";
					Type = "Quit";
				};
			};
		};
		NotInVillageResponse = {
			Response = "Good day. What can I help you with?";
			Option1 = {
				Text = "Can I become a member of this village?";
				Type = "JoinVillage";
				ExtraInfo = "Sorythia";
				Response = "You've been assigned as a member of Sorythia. Good luck";
				Option1 = {
					Text = "Ok";
					Type = "Quit";
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Response = "What type of information?";
				Text = "Information";
				Option1 = {
					Text = "Economy";
					Type = "VillageEconomy";
					ExtraInfo = "Sorythia";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Politics";
					Type = "VillagePolitics";
					ExtraInfo = "Sorythia";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye";
				Type = "Quit";
			};
		};
		SinsMax = 25;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">...Your sins are...embarassing to this village...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Durana Sensei"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Village = "Durana";
		InVillageResponse = {
			Response = "Good day. What can I help you with?";
			Type = "ExamCheck";
			Normal = {
				Response = "Good day. What can I help you with?";
				Option1 = {
					Response = "What type of information?";
					Text = "Information";
					Option1 = {
						Text = "Economy";
						Type = "VillageEconomy";
						ExtraInfo = "Durana";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option2 = {
						Text = "Politics";
						Type = "VillagePolitics";
						ExtraInfo = "Durana";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option3 = {
						Text = "Data";
						Type = "VillageData";
						ExtraInfo = "Durana";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option4 = {
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "I want to take an exam.";
					Response = "Which exam would you like to take?";
					Option1 = {
						Text = "Genin";
						Type = "GeninExam";
						Response = "Exam has started., please defeat The Barbarian.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have defeated The Barbarian!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option2 = {
						Text = "Chunin";
						Type = "ChuninExam";
						Response = "Exam has started. You must prove that you can defeat a Genin from another village.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have defeated a Genin from another village!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option3 = {
						Text = "Jonin";
						Type = "JoninExam";
						Response = "Exam has started. You must capture a notorious Rogue.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have successfully captured a notorious Rogue!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option4 = {
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Completed = {
				Response = "Congratulations, you have been promoted!";
				Option1 = {
					Text = "Thanks!";
					Type = "Quit";
				};
			};
		};
		NotInVillageResponse = {
			Response = "Good day. What can I help you with?";
			Option1 = {
				Text = "Can I become a member of this village?";
				Type = "JoinVillage";
				ExtraInfo = "Durana";
				Response = "You've been assigned as a member of Durana. Good luck";
				Option1 = {
					Text = "Ok";
					Type = "Quit";
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Response = "What type of information?";
				Text = "Information";
				Option1 = {
					Text = "Economy";
					Type = "VillageEconomy";
					ExtraInfo = "Durana";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Politics";
					Type = "VillagePolitics";
					ExtraInfo = "Durana";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye";
				Type = "Quit";
			};
		};
		SinsMax = 25;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">...Your sins are...embarassing to this village...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Rain Sensei"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Village = "Rain";
		InVillageResponse = {
			Response = "Good day. What can I help you with?";
			Type = "ExamCheck";
			Normal = {
				Response = "Good day. What can I help you with?";
				Option1 = {
					Response = "What type of information?";
					Text = "Information";
					Option1 = {
						Text = "Economy";
						Type = "VillageEconomy";
						ExtraInfo = "Rain";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option2 = {
						Text = "Politics";
						Type = "VillagePolitics";
						ExtraInfo = "Rain";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option3 = {
						Text = "Data";
						Type = "VillageData";
						ExtraInfo = "Rain";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option4 = {
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "I want to take an exam.";
					Response = "Which exam would you like to take?";
					Option1 = {
						Text = "Genin";
						Type = "GeninExam";
						Response = "Exam has started., please defeat The Barbarian.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have defeated The Barbarian!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option2 = {
						Text = "Chunin";
						Type = "ChuninExam";
						Response = "Exam has started. You must prove that you can defeat a Genin from another village.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have defeated a Genin from another village!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option3 = {
						Text = "Jonin";
						Type = "JoninExam";
						Response = "Exam has started. You must capture a notorious Rogue.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have successfully captured a notorious Rogue!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option4 = {
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Completed = {
				Response = "Congratulations, you have been promoted!";
				Option1 = {
					Text = "Thanks!";
					Type = "Quit";
				};
			};
		};
		NotInVillageResponse = {
			Response = "Good day. What can I help you with?";
			Option1 = {
				Text = "Can I become a member of this village?";
				Type = "JoinVillage";
				ExtraInfo = "Rain";
				Response = "You've been assigned as a member of Sorythia. Good luck";
				Option1 = {
					Text = "Ok";
					Type = "Quit";
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Response = "What type of information?";
				Text = "Information";
				Option1 = {
					Text = "Economy";
					Type = "VillageEconomy";
					ExtraInfo = "Sorythia";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Politics";
					Type = "VillagePolitics";
					ExtraInfo = "Sorythia";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye";
				Type = "Quit";
			};
		};
		SinsMax = 25;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">...Your sins are...embarassing to this village...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Snow Sensei"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Village = "Snow";
		InVillageResponse = {
			Response = "Good day. What can I help you with?";
			Type = "ExamCheck";
			Normal = {
				Response = "Good day. What can I help you with?";
				Option1 = {
					Response = "What type of information?";
					Text = "Information";
					Option1 = {
						Text = "Economy";
						Type = "VillageEconomy";
						ExtraInfo = "Snow";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option2 = {
						Text = "Politics";
						Type = "VillagePolitics";
						ExtraInfo = "Snow";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option3 = {
						Text = "Data";
						Type = "VillageData";
						ExtraInfo = "Snow";
						CustomResponse = true;
						Option1 = {
							Text = "I see. Thank you for the information.";
							Type = "Quit";
						};
					};
					Option4 = {
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "I want to take an exam.";
					Response = "Which exam would you like to take?";
					Option1 = {
						Text = "Genin";
						Type = "GeninExam";
						Response = "Exam has started., please defeat The Barbarian.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have defeated The Barbarian!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option2 = {
						Text = "Chunin";
						Type = "ChuninExam";
						Response = "Exam has started. You must prove that you can defeat a Genin from another village.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have defeated a Genin from another village!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option3 = {
						Text = "Jonin";
						Type = "JoninExam";
						Response = "Exam has started. You must capture a notorious Rogue.";
						Option1 = {
							Text = "Ok";
							Type = "Quit";
						};
						Failed = {
							Response = "You're not ready for this exam.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV1 = {
							Response = "Please return when you have successfully captured a notorious Rogue!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
						FailedV2 = {
							Response = "You have already completed this exam!";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option4 = {
						Text = "Bye";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Completed = {
				Response = "Congratulations, you have been promoted!";
				Option1 = {
					Text = "Thanks!";
					Type = "Quit";
				};
			};
		};
		NotInVillageResponse = {
			Response = "Good day. What can I help you with?";
			Option1 = {
				Text = "Can I become a member of this village?";
				Type = "JoinVillage";
				ExtraInfo = "Snow";
				Response = "You've been assigned as a member of Sorythia. Good luck";
				Option1 = {
					Text = "Ok";
					Type = "Quit";
				};
				Option2 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Response = "What type of information?";
				Text = "Information";
				Option1 = {
					Text = "Economy";
					Type = "VillageEconomy";
					ExtraInfo = "Sorythia";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Politics";
					Type = "VillagePolitics";
					ExtraInfo = "Sorythia";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option3 = {
				Text = "Bye";
				Type = "Quit";
			};
		};
		SinsMax = 25;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">...Your sins are...embarassing to this village...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Rogue Accountant"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Village = "Rogue";
		InVillageResponse = {
			Response = "Good day. What can I help you with?";
			Option1 = {
				Response = "What type of information?";
				Text = "Information";
				Option1 = {
					Text = "Economy";
					Type = "VillageEconomy";
					ExtraInfo = "Rogue";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "Politics";
					Type = "VillagePolitics";
					ExtraInfo = "Rogue";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option3 = {
					Text = "Data";
					Type = "VillageData";
					ExtraInfo = "Rogue";
					CustomResponse = true;
					Option1 = {
						Text = "I see. Thank you for the information.";
						Type = "Quit";
					};
				};
				Option4 = {
					Text = "Bye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Bye";
				Type = "Quit";
			};
		};
		NotInVillageResponse = {
			Response = "What are you doing here?";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Notorious Negotiator"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Quest = "Hostage Retrieval";
		Response = "Good day.";
		Option1 = {
			Text = "Got a job for me?";
			Type = "Info";
			Response = "Yes. The desert bandits have struck again and they've setup base ahead of the worm. <font color=\"rgb(255, 121, 150)\">Defeat them and retrieve the hostage and you'll be rewarded handsomely.</font>";
			Option1 = {
				Text = "Ok, I'll get it done";
				Type = "Quest";
				QuestName = "Hostage Retrieval";
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">......What's that stench......</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Judicious Jailor"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Response = "Good day.";
		Option1 = {
			Text = "...";
			Type = "Quit";
		};
		Option2 = {
			Condition = {
				Req1 = "CarryingCriminal";
				Req2 = "";
			};
			Text = "Got a criminal here.";
			Type = "CriminalLockUp";
			Response = "Good work. I'll see to it that they're dealt with. If you catch anymore of these scoundrels, be sure to bring them here too";
			Option1 = {
				Text = "Got it.";
				Type = "Quit";
			};
			Failed = {
				Response = "That's no criminal....What are you trying to do here?....Cash in on innocent people?";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Failed = {
			Response = "Requirement not met on surface";
			Type = "Info";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		SinsMax = 30;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I ought to lock you up right now...</font>";
			Option1 = {
				Text = "But you won't because you're just a weak-";
				Type = "SelfLockUp";
				Response = "<font color=\"rgb(255, 144, 110)\">Who do you think you are? Get inside!</font>";
				Option1 = {
					Text = "I didn't mean it, let me out!";
					Type = "Info";
					Response = "<font color=\"rgb(255, 144, 110)\">Sweet to my ears are the sounds of sin-stained savages screaming for the salvation they stole from others...</font>";
					Option1 = {
						Text = "I guess this is it...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Skills Specialist"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "FloatIdle";
		Response = "How can I help?";
		Option1 = {
			Text = "Jutsu Mastery";
			Type = "JutsuMasteryCheck";
			Response = "It seems you are most proficient with ";
			Option1 = {
				Text = "Alright";
				Type = "MasterJutsu";
				Response = "Congratulations on mastering ";
				Option1 = {
					Text = "Thanks";
					Type = "Quit";
				};
				Failed = {
					Response = "You do not have the required Acumen.";
					Type = "Info";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
				FailedV1 = {
					Response = "You are not proficient enough to master a new jutsu. ";
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "Your jutsu proficiency needs more training...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV1 = {
				Response = "You are already proficient with the ";
				Type = "Info";
				Option1 = {
					Text = "I'd like to switch";
					Type = "SwitchJutsuMastery";
					Response = "It seems you have become more proficient with ";
					Option1 = {
						Text = "Alright";
						Type = "MasterJutsu";
						Response = "Congratulations on mastering ";
						Option1 = {
							Text = "Thanks";
							Type = "Quit";
						};
						Failed = {
							Response = "You do not have the required Acumen.";
							Type = "Info";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option2 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "You're lacking in something...";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
					FailedV1 = {
						Response = "You need more training to become proficient with a new jutsu...";
						Type = "Info";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 26;
		Sins = {
			Response = longstring10;
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Summoner"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Response = "How can I help?";
		Option1 = {
			Text = "Improving my Awakening";
			Type = "AwakeningUpgradeDetails";
			Response = "Well that's going to require ";
			Option1 = {
				Text = "Alright";
				Type = "AwakeningUpgrade";
				Response = "Your awakening endurance has been improved. You should be able to stay in that state for longer now.";
				Option1 = {
					Text = "Thanks";
					Type = "Quit";
				};
				Failed = {
					Response = "You don't have the required Acumen...";
					Type = "Info";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "I cannot improve your awakening endurance any further.";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 26;
		Sins = {
			Response = longstring10;
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Exiled Kunoichi"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "CoolLean";
		Quest = "Relic Retrieval";
		Response = "Interested in doubling your money?";
		Option1 = {
			Text = "Sure.";
			Type = "DoublingCheck";
			Response = "Enjoy the fruits of your gamble.";
			Option1 = {
				Text = "Great.";
				Type = "Quit";
			};
			Failed = {
				Response = "Thanks a ton, fool!";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV1 = {
				Response = "You're too broke to have anything doubled...Come back when you can piece a few coins together...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FailedV2 = {
				Response = "You seem rich enough as it is...";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		Option3 = {
			Condition = {
				Req1 = "ScammedALot";
				Req2 = "";
			};
			Text = "My money...";
			Type = "Info";
			Response = "Downsides of being gullible I'm afraid and besides, I don't have your money anyways...";
			Option1 = {
				Text = "Dude...";
				Type = "Info";
				Response = "Well...I'm feeling some pity towards you...I guess I can teach you something about being a thief and you can go make your money back from others...";
				Option1 = {
					Text = "Really?";
					Type = "Info";
					Response = "Yeah...Wait...Hold your horses, I need to get something out of this too...";
					Option1 = {
						Text = "Are you being serious...";
						Type = "Info";
						Response = "Theres an ancient relic being guarded at Biyo Bay, bring that to me and I'll teach you in return. Take it or leave it.";
						Option1 = {
							Text = "Fine I'll get it...";
							Type = "Quest";
							QuestName = "Relic Retrieval";
						};
						Option2 = {
							Text = "That deal stinks!";
							Type = "Info";
							Response = "Your loss.";
							Option1 = {
								Text = "...";
								Type = "Quit";
							};
						};
					};
					Option2 = {
						Text = "I'm done with you!";
						Type = "Info";
						Response = "Your loss. I had a good time with your ryo by the way, splashed it well down at Durana, obtaining the drip. Thanks a lot for that.";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "That's no criminal....What are you trying to do here?....Cash in on innocent people?";
				Type = "Info";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		SinsMin = 10;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">You're too clean for this business...I don't trust you...</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Poorly Traveller"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "SittingExposed";
		Quest = "Bolive Retrieval";
		Response = "......Hey.....";
		Option1 = {
			Text = "Yes?";
			Type = "Info";
			Response = "I feel like.....my life is......passing away.....my insides are......burning up......please can you bring.......something to ease.......the pain....";
			Option1 = {
				Text = "I'll try and find something";
				Type = "Quest";
				QuestName = "Bolive Retrieval";
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 24;
		Sins = {
			Response = longstring11;
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Sword Of Mello"] = {
		BodyType = "Part";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Quest = "Wraps Retrieval";
		Response = "You there...";
		Option1 = {
			Text = "Yes?";
			Type = "Info";
			Response = "Lets make a trade, just me and you. Restore my wraps and I'll spare gems a few. You'll find them with Barbarit, the Rose that flew up Rose Road and through.";
			Option1 = {
				Text = "Ok...";
				Type = "Quest";
				QuestName = "Wraps Retrieval";
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 25;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">Urgh, disgusting</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Stranded Sharkman"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "SittingExposed";
		Quest = "Quenching Thirst";
		Response = "......Hey......You there......";
		Option1 = {
			Text = "Yes?";
			Type = "Info";
			Response = "Please...I'm thirsty...Some water.....Please....";
			Option1 = {
				Text = "I'll help you out";
				Type = "Quest";
				QuestName = "Quenching Thirst";
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMax = 24;
		Sins = {
			Response = longstring11;
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The True Sharkman"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "";
		Response = "...";
		Option1 = {
			Text = "I seek the power of the sharks.";
			Type = "SharkCheck";
			Response = "Awaken these sharks surrounding us...and the secret to that power will be yours...";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "With that fresh red blood of yours...They'd gobble you right up...";
				Text = "...";
				Type = "Quit";
			};
			FailedV1 = {
				Response = "Your blood seems to be...abnormal. Regardless a non-Hoshigaki is not capable of mastering this.";
				Text = "...";
				Type = "Quit";
			};
			FailedV2 = {
				Response = "I've already shown you the way...It's up to you to take the reins from there.";
				Text = "...";
				Type = "Quit";
			};
			FailedV3 = {
				Response = "I sense the viciousness required in you...";
				Type = "Info";
				Option1 = {
					Response = "You have become one with the sharks.";
					Text = "I'm ready.";
					Type = "SharkUnlock";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
	};
	Bob = {
		BodyType = "PartModel";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Quest = "Search For A Flaming Heart";
		Response = "Hello.";
		Option1 = {
			Text = "What's with your heart?";
			Type = "Info";
			Response = "Oh. My Heart.......Hmm.......It's stone cold........Perks of being a golem, I suppose. Would be nice to feel what it's like to have a beating heart again though. Better yet.....a Flaming Heart!";
			Option1 = {
				Text = "I'll try and find that for you";
				Type = "Quest";
				QuestName = "Search For A Flaming Heart";
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "What are you doing here?";
			Type = "Info";
			Response = "Waiting.";
			Option1 = {
				Text = "For what?";
				Type = "Info";
				Response = "A traveller. Any traveller.";
				Option1 = {
					Text = "Like me?";
					Type = "Info";
					Response = "Yes.";
					Option1 = {
						Text = "So what now?";
						Type = "Event";
						ExtraInfo = "FloorBreak";
						Response = "CLEAR GOLEMS";
						Option1 = {
							Text = "...";
							Type = "Quit";
						};
					};
					Option2 = {
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option3 = {
			Text = "...";
			Type = "Quit";
		};
	};
	Rinnekyou = {
		BodyType = "PartModel";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Response = "<font color=\"rgb(216, 96, 255)\">Bring me <i>those</i> eyes, <i>his</i> cells and an <i>impaired</i> morality beyond repair and I shall grant you the power you seek.</font>";
		Option1 = {
			Text = "I have attained this.";
			Type = "RinneganCheck";
			Response = "Indeed you have.";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "You lie.";
				Text = "...";
				Type = "Quit";
			};
			FailedV1 = {
				Response = "You're after more power than I can give. Seek it elsewhere, at your own peril.";
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		SinsMin = 30;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">Putrid weakness. This power would crush you.</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Basalt Prisoner"] = {
		BodyType = "PartModel";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Response = "Chained and stripped of my dignity, what will become of me...?";
		Option1 = {
			Text = "How can I help";
			Type = "Info";
			Response = "Spare anything you can and I'll try and use it to buy my freedom.";
			Option1 = {
				Text = "Is 35 Ryo ok?";
				Type = "Info";
				Response = "That would be a great starting point...";
				Option1 = {
					Text = "Here you go.";
					Type = "BuyBasalt";
					Response = "I'll be ever grateful to the charity you've shown me here today.";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
					Failed = {
						Response = "You seek to give away that which you do not have...";
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Arena Totem"] = {
		BodyType = "PartModel";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Response = "I don't sense the vigor required in you...";
		Option1 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Lady Chef"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "TableWonderingSit";
		Response = "Welcome to Zen's Residence! How can I help?";
		Option1 = {
			Text = "What is this place?";
			Type = "Info";
			Response = "A hub of knowledge on all things cooking setup by the legendary conniseur, Zen Zucko himself!";
			Option1 = {
				Text = "Zen Zucko?";
				Type = "Info";
				Response = "Yeah.....Wait you mean you don't know him?.....He's only the greatest cook to ever exist! Just by being in his prescence, you can feel his aura of knowledge radiating from those oval eyes of his!";
				Option1 = {
					Text = "Where can I find this...Zen Zucko?";
					Type = "Info";
					Response = "Well, he's not around at the moment. Probably travelling the lands in search of new exotic fruits and exquisite combinations. I can't wait for him to return!";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		Option3 = {
			Condition = {
				Req1 = "Cookbook";
				Req2 = "Fruit Cooker";
			};
			Text = "You look familiar...";
			Type = "Info";
			Response = "Ah, you've probably met my sister down in Sorythia, don't worry I get that a lot. As Zen's favorite student, she's really put everything she learnt from him to good use, cashing out on his lessons...";
			Option1 = {
				Text = "I want to learn more about cooking.";
				Type = "GiveCookbook";
				Response = "Well there isn't much learning to be done without a cookbook! What good are all the recipes you discover if you can't remember them? <font color=\"rgb(255, 121, 150)\">Here's a spare one you can use. Make sure you don't lose it!</font>";
				Option1 = {
					Text = "Thanks";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		SinsMax = 18;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">Why do I smell a strong odour of sinfulness......Oh.</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Stunning Stylist"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "TableWonderingSit";
		Response = "Looking to shake up your hairstyle?";
		Option1 = {
			Text = "Yeah, something new.";
			Type = "Info";
			Response = "Alrighty, a new hairstyle will cost you <font color=\"rgb(255, 233, 144)\">"..module_6_upvr.Settings.NewHairPrice.." Ryo.</font>";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Settings.NewHairPrice;
				Item = "NewHair";
				Response = "Enjoy your new look and stay dazzling!";
				Option1 = {
					Text = "Thanks.";
					Type = "Quit";
				};
				Failed = {
					Response = "I don't work for free ya know, a man's gotta live...";
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "I've changed my mind.";
				Type = "Info";
				Response = "Ok, your loss...";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			FreeOption = {
				Response = "I like your style mate, you've clearly got a taste for looking good. <font color=\"rgb(255, 233, 144)\">Tell you what, how about a free style up?</font>";
				Option1 = {
					Text = "That would be great.";
					Type = "FreeHair";
					Response = "Enjoy your new look and stay dazzling!";
					Option1 = {
						Text = "Thanks.";
						Type = "Quit";
					};
					Failed = {
						Response = "I don't work for free ya know, a man's gotta live...";
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "I've changed my mind.";
					Type = "Info";
					Response = "Ok, your loss...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
		};
		Option2 = {
			Text = "I want to go bald.";
			Type = "Info";
			Response = "I can get that head of yours shining for a measly price of <font color=\"rgb(255, 233, 144)\">"..module_6_upvr.Settings.BaldPrice.." Ryo.</font>";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Settings.BaldPrice;
				Item = "Bald";
				Response = "Enjoy your new look and stay dazzling!";
				Option1 = {
					Text = "Thanks.";
					Type = "Quit";
				};
				Failed = {
					Response = "I don't work for free ya know, a man's gotta live...";
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "I've changed my mind.";
				Type = "Info";
				Response = "Ok, your loss...";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option3 = {
			Text = "I'm good.";
			Type = "Info";
			Response = "Ok, your loss...";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		SinsMax = 24;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I have a reputation to uphold.....I can't be seen attending to sinful freaks like you.....</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["The Fashioneer"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "Want to style yourself up with some fashionable gear?";
		Option1 = {
			Text = "Yes.";
			Type = "AccessoryCheck";
			Response = "Alrighty, I'll need <font color=\"rgb(255, 233, 144)\">"..module_6_upvr.Settings.AccessoryPrice.." Ryo to get you looking good!</font>";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Settings.AccessoryPrice;
				Item = "NewAccessory";
				Response = "Hope you enjoy the gear!";
				Option1 = {
					Text = "Thanks and goodbye.";
					Type = "Quit";
				};
				Failed = {
					Response = "This isn't a charity mate...";
					Text = "Goodbye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
			Option3 = {
				Condition = {
					Req1 = "HasTrait";
					Req2 = "Exalted";
				};
				Text = "My discount?";
				Type = "Info";
				Response = "Why yes of course sir, I'll sell this to you at a reduced price of <font color=\"rgb(255, 233, 144)\">"..math.floor(module_6_upvr.Settings.AccessoryPrice * module_6_upvr.Traits.Exalted.PriceModifier).." Ryo.</font>";
				Option1 = {
					Text = "I'll pay.";
					Type = "Payment";
					Amount = math.floor(module_6_upvr.Settings.AccessoryPrice * module_6_upvr.Traits.Exalted.PriceModifier);
					Item = "NewAccessoryDiscount";
					Response = "Hope you enjoy the gear, sir!";
					Option1 = {
						Text = "Thanks and goodbye.";
						Type = "Quit";
					};
					Failed = {
						Response = "This isn't a charity, my good sir...";
						Text = "Goodbye";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Failed = {
				Response = "Seems like we are currently out of stock.....Do come back later!";
				Text = "Goodbye";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "No Thanks.";
			Type = "Quit";
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I didn't spill blood, sweat and tears over this store to sell to the likes of you.....</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	Chef = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "Want to buy some Ramen?";
		Option1 = {
			Text = "Yes, I'd like one bowl";
			Type = "PaymentCheck";
			Item = "Ramen";
			Quantity = 1;
			Response = "Well, that will cost you ";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Items.Ramen.SalePrice;
				Item = "Ramen";
				Response = "One hot steaming bowl of Ramen, ready for you!";
				Option1 = {
					Text = "Thanks and goodbye.";
					Type = "Quit";
				};
				Failed = {
					Response = "The food I cook isn't free...";
					Text = "Goodbye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Goodbye";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "Yes, I'd like five bowls";
			Type = "PaymentCheck";
			Item = "Ramen";
			Quantity = 5;
			Response = "Well, that will cost you ";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Items.Ramen.SalePrice * 5;
				Item = "Ramen";
				Quantity = 5;
				Response = "Five hot steaming bowls of Ramen, ready for you!";
				Option1 = {
					Text = "Thanks and goodbye.";
					Type = "Quit";
				};
				Failed = {
					Response = "The food I cook isn't free...";
					Text = "Goodbye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Goodbye";
				Type = "Quit";
			};
			Option3 = {
				Condition = {
					Req1 = "Chef's Kiss";
					Req2 = "";
				};
				Text = "Teach me the way of Ramen";
				Type = "Info";
				Response = "This is a highly classified technique.....A small transfer of "..module_6_upvr.Items["Chef's Kiss"].SalePrice.." Ryo and I may be able to share it with you...";
				Option1 = {
					Text = "I'll pay.";
					Type = "Payment";
					Amount = module_6_upvr.Items["Chef's Kiss"].SalePrice;
					Item = "Chef's Kiss";
					Quantity = 1;
					Response = "No here <i>you</i> go!";
					Option1 = {
						Text = "Thanks.";
						Type = "Quit";
					};
					Failed = {
						Response = "The food I cook isn't free...";
						Text = "Goodbye";
						Type = "Quit";
					};
				};
			};
		};
		Option3 = {
			Text = "Goodbye";
			Type = "Quit";
		};
		SinsMax = 10;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I didn't spill blood, sweat and tears over this shop to sell to the likes of you.....</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Rogue Chef"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "Want to buy some Ramen?";
		Option1 = {
			Text = "Yes, I'd like one bowl";
			Type = "PaymentCheck";
			Item = "Ramen";
			Quantity = 1;
			Response = "Well, that will cost you ";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Items.Ramen.SalePrice;
				Item = "Ramen";
				Response = "One hot steaming bowl of Ramen, ready for you!";
				Option1 = {
					Text = "Thanks and goodbye.";
					Type = "Quit";
				};
				Failed = {
					Response = "The food I cook isn't free...";
					Text = "Goodbye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Goodbye";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "Yes, I'd like five bowls";
			Type = "PaymentCheck";
			Item = "Ramen";
			Quantity = 5;
			Response = "Well, that will cost you ";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Items.Ramen.SalePrice * 5;
				Item = "Ramen";
				Quantity = 5;
				Response = "Five hot steaming bowls of Ramen, ready for you!";
				Option1 = {
					Text = "Thanks and goodbye.";
					Type = "Quit";
				};
				Failed = {
					Response = "The food I cook isn't free...";
					Text = "Goodbye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Goodbye";
				Type = "Quit";
			};
			Option3 = {
				Condition = {
					Req1 = "Chef's Kiss";
					Req2 = "";
				};
				Text = "Teach me the way of Ramen";
				Type = "Info";
				Response = "This is a highly classified technique.....A small transfer of "..module_6_upvr.Items["Chef's Kiss"].SalePrice.." Ryo and I may be able to share it with you...";
				Option1 = {
					Text = "I'll pay.";
					Type = "Payment";
					Amount = module_6_upvr.Items["Chef's Kiss"].SalePrice;
					Item = "Chef's Kiss";
					Quantity = 1;
					Response = "No here <i>you</i> go!";
					Option1 = {
						Text = "Thanks.";
						Type = "Quit";
					};
					Failed = {
						Response = "The food I cook isn't free...";
						Text = "Goodbye";
						Type = "Quit";
					};
				};
			};
		};
		Option3 = {
			Text = "Goodbye";
			Type = "Quit";
		};
	};
	["Hallowed Elder"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "DeadOnFloor";
		Response = "...<i>struggles to breathe</i>...";
		Option1 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Hyuga Elder"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "This training area is for those who wish to hone their visual abilities. Do you have any such prowess?";
		Option1 = {
			Text = "These eyes of mine...";
			Type = "CheckByakuganUpgrade";
			Response = "Those eyes of yours are showing promise. <font color=\"rgb(255, 233, 144)\">Would you like me to help you unlock your potential?</font>";
			Option1 = {
				Text = "Yes";
				Type = "UpgradeByakugan";
				Response = "Your eyes have proven to be receptive...";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Goodbye";
				Type = "Quit";
			};
			Failed = {
				Response = "I don't see any potential in your eyes thus far...";
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
		Progressed = {
			Response = "I've honed your visual prowess all that I could. Venture out into the world if you still desire more power.";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		ProgressRejected = {
			Response = "There's nothing special about your eyes. Find somewhere else to train.";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		SinsMax = 20;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">I didn't even need to activate my visual prowess to see through you and your sins.....</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Uzumaki Heirloom"] = {
		BodyType = "Part";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Response = "...";
		Option1 = {
			Text = "I seek the power of the adamantine chains.";
			Type = "ChainCheck";
			Response = "To obtain such a power, activate each of these chains and then return once more...";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "As someone who lacks the Uzumaki life energy, these chains would rip you apart in seconds...";
				Text = "...";
				Type = "Quit";
			};
			FailedV1 = {
				Response = "You've already been granted with the affinity to master your bloodline abilities...";
				Text = "...";
				Type = "Quit";
			};
			FailedV2 = {
				Response = "You've activated the chains...";
				Type = "Info";
				Option1 = {
					Response = "Adamantine now pulses through you and these chains will soon do your bidding...";
					Text = "I have indeed.";
					Type = "ChainUnlock";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
				Option2 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Stone Tablet"] = {
		BodyType = "Part";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Response = "............<i> A strange power eminates from the tablet </i>........";
		Option1 = {
			Text = "...";
			Type = "Info";
			Response = ".......What is your desire?......";
			Option1 = {
				Text = "I wish to create a clan.";
				Type = "CreateClan";
				Response = ".......Very well.......Forming the bond.......";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				Failed = {
					Response = "......You're not ready for that kind of responsibility......";
					Type = "Info";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option2 = {
				Text = "I wish to leave my clan";
				Type = "LeaveClan";
				Response = ".......Very well.......The bond has been severed.......";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
				RequirementFail = {
					Response = "......You don't have a clan to leave in the first place......";
					Type = "Info";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
			Option3 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "These eyes of mine...";
			Type = "CheckSharinganUpgrade";
			Response = "<font color=\"rgb(255, 233, 144)\"><i>The tablet senses potential in your visual prowess...</i></font>";
			Option1 = {
				Text = "Unlock Potential.";
				Type = "UpgradeSharingan";
				Response = "<i>Your eyes begin to burn with immense power...</i>";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "<i>The tablet doesn't sense any potential in your eyes...</i>";
				Text = "...";
				Type = "Quit";
			};
			Progressed = {
				Response = "<i>Your visual prowess has become so advanced, you've read everything the tablet had to say...</i>";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			ProgressRejected = {
				Response = "<i>The tablet does not respond to your eyes...</i>";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option3 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Lightning Tablet"] = {
		BodyType = "Part";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Response = "............<i> A strange power eminates from the tablet </i>........";
		Option1 = {
			Text = "My lightning...";
			Type = "CheckAyruiLightning";
			Response = "<font color=\"rgb(255, 233, 144)\"><i>The tablet affirms your lightning abilities</i></font>";
			Option1 = {
				Text = "Unlock Potential.";
				Type = "UnlockAyruiAffinity";
				Response = "<i>A new form of lightning ripples through your body...</i>";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
			Failed = {
				Response = "<i>The tablet doesn't sense lightning potential in you...</i>";
				Text = "...";
				Type = "Quit";
			};
			Progressed = {
				Response = "<i>Your affinity for your bloodline has already been established</i>";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
			ProgressRejected = {
				Response = "<i>The tablet does not respond to your invocation...</i>";
				Option1 = {
					Text = "...";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "...";
			Type = "Quit";
		};
	};
	["Kamui Exit"] = {
		BodyType = "Part";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Response = "......Stuck?.......";
		Option1 = {
			Text = "A way out please...";
			Type = "KamuiDangerCheck";
			Response = "Very well...";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
			Option2 = {
				Text = "I'm good...";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "Not whilst your in the midst of battle like that...";
				Type = "Info";
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
				Option2 = {
					Condition = {
						Req1 = "Kamui Essence";
						Req2 = "";
					};
					Text = "What about with this?";
					Type = "SuperKamuiDangerCheck";
					Response = "Very well...";
					Option1 = {
						Text = "...";
						Type = "Quit";
					};
				};
			};
		};
		Option2 = {
			Text = "Bye.";
			Type = "Quit";
		};
	};
	Gamastuck = {
		BodyType = "Part";
		RandomName = false;
		Clothing = "";
		NPCType = "Dialog";
		Aggro = false;
		Response = "What brings you to these depths?.....";
		Option1 = {
			Text = "What happened to you?";
			Type = "Info";
			Response = "My sins got the better of me and I messed around with powers I had no understanding over. Now I've been turned into a rock, doomed to remain stuck here for eternity.....";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
		Option2 = {
			Text = "I'd like to remove my sins.";
			Type = "SinRemovalCheck";
			Response = "Very well, that will cost you ";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = "Sins";
				Response = "Your sinless nature has been restored.";
				Option1 = {
					Text = "Bye.";
					Type = "Quit";
				};
				Failed = {
					Response = "I'd love to operate for free but this world is too cruel for that kind of kindness...";
					Text = "Goodbye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "I'll keep my sins...";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "I don't sense any sins within you...";
				Type = "Info";
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option3 = {
			Text = "I'd like to redeem myself.";
			Type = "RedeemSelf";
			Response = "Good luck on your journey!";
			Option1 = {
				Text = "Thanks";
				Type = "Quit";
			};
		};
		Option4 = {
			Text = "Bye.";
			Type = "Quit";
		};
	};
	Medic = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "Medic";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "Come to heal your wounds?";
		Option1 = {
			Text = "Yes please, I need to be looked at. [1 Ryo]";
			Type = "Payment";
			Amount = 1;
			Response = "Well, a full treatment will cost you ";
			Option1 = {
				Text = "I'll pay for the treatment";
				Type = "Payment";
				Amount = "Injuries";
				Response = "All done! You're as good as new!";
				Option1 = {
					Text = "Thanks and goodbye.";
					Type = "Quit";
				};
				Failed = {
					Response = "I don't work for free...";
					Text = "Goodbye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Goodbye";
				Type = "Quit";
			};
			Failed = {
				Response = "I don't work for free...";
				Text = "Goodbye";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "There doesn't appear to be anything wrong with you.";
				Type = "Payment";
				Amount = 1;
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "Goodbye";
			Type = "Quit";
		};
		Option3 = {
			Condition = {
				Req1 = "QuestOngoing";
				Req2 = "Search For A Flaming Heart";
			};
			Text = "I need a Flaming Heart";
			Type = "Info";
			Response = "Well those are pretty hard to find. <font color=\"rgb(255, 121, 150)\">I'd be willing to sell you one for 120 Ryo though.</font>";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Items["Flaming Heart"].SalePrice;
				Item = "Flaming Heart";
				Response = longstring12;
				Option1 = {
					Text = "...Erm...";
					Type = "Quit";
				};
				Failed = {
					Response = "The Heart's got a price. And this isn't just any heart. You need to pay up.";
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
		SinsMax = 25;
		Sins = {
			Response = "<font color=\"rgb(255, 144, 110)\">What kind of doctor would I be.....If I tended to devils like you.....</font>";
			Option1 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
	["Rogue Medic"] = {
		BodyType = "Humanoid";
		RandomName = false;
		Clothing = "Medic";
		NPCType = "Dialog";
		Aggro = false;
		Idle = "HandsInfront";
		Response = "Come to heal your wounds?";
		Option1 = {
			Text = "Yes please, I need to be looked at. [1 Ryo]";
			Type = "Payment";
			Amount = 1;
			Response = "Well, a full treatment will cost you ";
			Option1 = {
				Text = "I'll pay for the treatment";
				Type = "Payment";
				Amount = "Injuries";
				Response = "All done! You're as good as new!";
				Option1 = {
					Text = "Thanks and goodbye.";
					Type = "Quit";
				};
				Failed = {
					Response = "I don't work for free...";
					Text = "Goodbye";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "Goodbye";
				Type = "Quit";
			};
			Failed = {
				Response = "I don't work for free...";
				Text = "Goodbye";
				Type = "Quit";
			};
			RequirementFail = {
				Response = "There doesn't appear to be anything wrong with you.";
				Type = "Payment";
				Amount = 1;
				Option1 = {
					Text = "Goodbye";
					Type = "Quit";
				};
			};
		};
		Option2 = {
			Text = "Goodbye";
			Type = "Quit";
		};
		Option3 = {
			Condition = {
				Req1 = "QuestOngoing";
				Req2 = "Search For A Flaming Heart";
			};
			Text = "I need a Flaming Heart";
			Type = "Info";
			Response = "Well those are pretty hard to find. <font color=\"rgb(255, 121, 150)\">I'd be willing to sell you one for 120 Ryo though.</font>";
			Option1 = {
				Text = "I'll pay.";
				Type = "Payment";
				Amount = module_6_upvr.Items["Flaming Heart"].SalePrice;
				Item = "Flaming Heart";
				Response = longstring12;
				Option1 = {
					Text = "...Erm...";
					Type = "Quit";
				};
				Failed = {
					Response = "The Heart's got a price. And this isn't just any heart. You need to pay up.";
					Text = "...";
					Type = "Quit";
				};
			};
			Option2 = {
				Text = "...";
				Type = "Quit";
			};
		};
	};
}
module_6_upvr.Bloodlines = {
	Otsutsuki = {
		Rarity = 1;
		Icon = "8083898502";
		Eyebrows = "OtsutsukiEyebrows";
		PupilColor = {
			R = 0.9215686274509803;
			G = 0.8588235294117647;
			B = 0.9176470588235294;
		};
		SkinColor = {
			R = 0.9803921568627451;
			G = 0.9803921568627451;
			B = 0.9803921568627451;
		};
		HairColor = {
			R = 0.8705882352941177;
			G = 0.8509803921568627;
			B = 0.9254901960784314;
		};
		HairMaterial = "Sand";
		ChakraBoost = 1.1;
		JumpCounters = 0;
		FoodCounters = 0;
		StarterClothing = "Moon Rags";
	};
	Uchiha = {
		Rarity = 2;
		Icon = "6501429678";
		PupilColor = {
			R = 0.09803921568627451;
			G = 0.09803921568627451;
			B = 0.09803921568627451;
		};
		HairColor = {
			R = 0.09803921568627451;
			G = 0.09803921568627451;
			B = 0.09803921568627451;
		};
		SkinColor = {
			R = 0.8901960784313725;
			G = 0.6509803921568628;
			B = 0.47843137254901963;
		};
		ChakraBoost = 1.1;
		FireBoost = 1.12;
		JumpCounters = 1;
		FoodCounters = 0;
		StarterClothing = "Rags";
	};
	Hyuga = {
		Rarity = 2;
		Icon = "6501438653";
		PupilColor = {
			R = 1;
			G = 1;
			B = 1;
		};
		SkinColor = {
			R = 1;
			G = 0.8;
			B = 0.6;
		};
		ChakraBoost = 1.1;
		ChakraDrain = 3;
		JumpCounters = 0;
		FoodCounters = 0;
		StarterClothing = "Rags";
	};
	Uzumaki = {
		Rarity = 5;
		Icon = "6501429846";
		FacePaint = {
			["Three Whiskers"] = 1;
			["Two Whiskers"] = 3;
		};
		SkinColor = {
			R = 0.8901960784313725;
			G = 0.6509803921568628;
			B = 0.47843137254901963;
		};
		ChakraBoost = 1.3;
		JumpCounters = 0;
		FoodCounters = 2;
		StarterClothing = "Rags";
	};
	Aburame = {
		Rarity = 5;
		Icon = "11200682396";
		PupilColor = {
			R = 0.09803921568627451;
			G = 0.09803921568627451;
			B = 0.09803921568627451;
		};
		HairColor = {
			R = 0.09803921568627451;
			G = 0.09803921568627451;
			B = 0.09803921568627451;
		};
		SkinColor = {
			R = 0.8901960784313725;
			G = 0.6509803921568628;
			B = 0.47843137254901963;
		};
		ChakraBoost = 1.1;
		JumpCounters = 1;
		FoodCounters = 0;
		StarterClothing = "Rags";
	};
	Zetsu = {
		Rarity = 8;
		Icon = "8660010628";
		SkinColor = {
			R = 0.9137254901960784;
			G = 0.9137254901960784;
			B = 0.9137254901960784;
		};
		LowerChanceSkinColor = {
			R = 0.21176470588235294;
			G = 0.21176470588235294;
			B = 0.21176470588235294;
		};
		HairColor = {
			R = 0.396078431372549;
			G = 0.5215686274509804;
			B = 0.3568627450980392;
		};
		PupilColor = {
			R = 0.8117647058823529;
			G = 0.6705882352941176;
			B = 0.3137254901960784;
		};
		JumpCounters = 0;
		FoodCounters = 0;
		ChakraBoost = 1;
		FistDamageBuff = 1;
		StarterClothing = "Zetsu Rags";
	};
	Hoshigaki = {
		Rarity = 8;
		Icon = "6501438822";
		Eyes = "Eyes12";
		SkinColor = {
			R = 0.7254901960784313;
			G = 0.9647058823529412;
			B = 1;
		};
		LowerChanceSkinColor = {
			R = 0.4549019607843137;
			G = 0.5254901960784314;
			B = 0.615686274509804;
		};
		HairColor = {
			R = 0.12941176470588237;
			G = 0.24313725490196078;
			B = 0.36470588235294116;
		};
		WaterBoost = 1.2;
		JumpCounters = 0;
		FoodCounters = 0;
		ChakraBoost = 1;
		StarterClothing = "Rags";
	};
	Akimichi = {
		Rarity = 12;
		Icon = "6501439009";
		FacePaint = {
			Swirls = true;
		};
		SkinColor = {
			R = 1;
			G = 0.8;
			B = 0.6;
		};
		ChakraBoost = 1;
		JumpCounters = 0;
		FoodCounters = 3;
		StarterClothing = "Rags";
	};
	Ayrui = {
		Rarity = 14;
		Icon = "7053486311";
		SkinColor = {
			R = 0.5882352941176471;
			G = 0.34509803921568627;
			B = 0.17254901960784313;
		};
		HairColor = {
			R = 0.8;
			G = 0.7647058823529411;
			B = 0.49411764705882355;
		};
		JumpCounters = 0;
		FoodCounters = 0;
		ChakraBoost = 1;
		FistDamageBuff = 1.1;
		StarterClothing = "Rags";
	};
	Lee = {
		Rarity = 21;
		Icon = "10222987259";
		SkinColor = {
			R = 0.8901960784313725;
			G = 0.6509803921568628;
			B = 0.47843137254901963;
		};
		ChakraBoost = 0.8;
		MeleeAttackBoost = 1.4;
		JumpCounters = 1;
		FoodCounters = 0;
		StarterClothing = "Rags";
	};
	Senju = {
		Rarity = 22;
		Icon = "6501429479";
		SkinColor = {
			R = 0.6666666666666666;
			G = 0.4745098039215686;
			B = 0.3411764705882353;
		};
		EarthBoost = 1.12;
		ChakraBoost = 1.5;
		JumpCounters = 0;
		FoodCounters = 2;
		StarterClothing = "Rags";
	};
}
module_6_upvr.MaleNames = {"Aang", "Amon", "Alfred", "Alex", "Arata", "Anthony", "Atsushi", "Alvin", "Andres", "Aki", "Ali", "Arthur", "Adam", "Ayoub", "Benjamin", "Barry", "Bilal", "Boruto", "Baki", "Butsuma", "Bruce", "Bashar", "Balor", "Choji", "Chojuro", "Choza", "Charlie", "Connor", "Chad", "Charles", "Clark", "David", "Dan", "Darius", "Daichi", "Dawud", "Daisuke", "Danzo", "Deidara", "Darui", "Diego", "Don", "Dex", "Diamond", "Denki", "Dosu", "Daiki", "Eric", "Edgar", "Edward", "Ebisu", "Elias", "Emmanuel", "Enra", "Etoro", "Flynn", "Farah", "Fabian", "Fernando", "Frank", "Fang", "Fugaku", "Fu", "Futsu", "Futami", "Felix", "Kai", "Liam", "Noah", "Oliver", "Elijah", "William", "James", "Benjamin", "Lucas", "Henry", "Alexander", "Mason", "Michael", "Ethan", "Daniel", "Ahmed", "Logan", "Jackson", "Jorge", "Sebastian", "Mateo", "Jack", "Owen", "Theodore", "Aiden", "Tony", "Joseph", "John", "David", "Wyatt", "Matthew", "Luke", "Asher", "Carter", "Julian", "Grayson", "Leo", "Jayden", "Gabriel", "Mohammed", "Lincoln", "Anthony", "Hudson", "Dylan", "Ezra", "Thomas", "Charles", "Christopher", "Jaxon", "Maverick", "Josiah", "Isaiah", "Andrew", "Elias", "Joshua", "Nathan", "Caleb", "Ryan", "Adrian", "Miles", "Eli", "Nolan", "Christian", "Aaron", "Cameron", "Ezekiel", "Colton", "Luka", "Landon", "Hunter", "Jonathan", "Santiago", "Axel", "Easton", "Cooper", "Jeremiah", "Roman", "Connor", "Jameson", "Robert", "Greyson", "Jordan", "Ian", "Carson", "Jaxson", "Leonardo", "Nicholas", "Dominic", "Austin", "Everett", "Prospero", "Brooks", "Xavier", "Kai", "Jose", "Parker"}
module_6_upvr.FemaleNames = {"Aaliyah", "Ashley", "Akira", "Anya", "Ayako", "Amaya", "Ayesha", "Amanda", "Bella", "Beatriz", "Barbara", "Bianca", "Blossom", "Blue", "Balqis", "Bo", "Chino", "Chiyo", "Chocho", "Chloe", "Clara", "Cora", "Crystal", "Cantara", "Caitlyn", "Dominika", "Dana", "Daphne", "Delta", "Daleela", "Destiny", "Diana", "Divine", "Dixie", "Dawn", "Emily", "Eva", "Emma", "Elenor", "Erity", "Eri", "Etsuko", "Evelina", "Faith", "Fiona", "Farhan", "Fatima", "Felicia", "Fajr", "Florence", "Fumiko", "Fuyu", "Fujita", "Sasha", "Samira", "Hanabi", "Ino", "Konan", "Karui", "Karin", "Mei", "Rin", "Temari"}
module_6_upvr.OtsutsukiMaleNames = {"Kinshiki", "Momoshiki", "Ishiki", "Zoroshiki", "Berishiki", "Urashiki"}
module_6_upvr.OtsutsukiFemaleNames = {"Kaguya", "Evaguya", "Rosaguya", "Shikuya", "Tonuya"}
return module_6_upvr
