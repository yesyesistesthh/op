--[[
By Alexander.dev , Ronaldo.dev
]]



if not game:IsLoaded() then
	game.Loaded:Wait()
end

if _G.Opened then
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "System VR7",
		Text = "تم تفعيل السكربت مسبقا، اعد الدخول لتشغيله مجددا",
		Duration = 5,
	})

	local sound = Instance.new("Sound", game.Workspace)
	sound.SoundId = "rbxassetid://17692186249"
	sound.Volume = getgenv().NotifcationVloume

	sound.Ended:Connect(function()
		sound:Destroy()
	end)

	sound:Play()
	return
end

_G.Opened = true
local ver
ver = "32.1"

spawn(function()
	local obj1 = game
	local func16 = tostring
	local userId = game.Players.LocalPlayer.UserId

	if table.find(loadstring(obj1:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Blacklist"))(), func16(userId)) then
		local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
		screenGui.ResetOnSpawn = false
		screenGui.IgnoreGuiInset = true

		for _, descendant in pairs(game.CoreGui:GetDescendants()) do
			if descendant:IsA("ScreenGui") and descendant ~= screenGui and descendant.Enabled then
				descendant.Enabled = false
			end
		end

		for _, descendant in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
			if descendant:IsA("ScreenGui") and descendant ~= screenGui and descendant.Enabled then
				descendant.Enabled = false
			end
		end

		local frame = Instance.new("Frame", screenGui)
		frame.Size = UDim2.new(1, 0, 1, 0)
		frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		frame.BorderSizePixel = 0
		frame.ZIndex = 10
		local textLabel = Instance.new("TextLabel", frame)
		textLabel.Size = UDim2.new(0.8, 0, 0.6, 0)
		textLabel.Position = UDim2.new(0.1, 0, 0.2, 0)
		textLabel.Text = "تم حظرك من هذا السكربت بواسطة المالك نتيجة سوء الاستخدام. لطلب فك الحظر، يرجى فتح تكت على سيرفر VR7."
		textLabel.TextColor3 = Color3.fromRGB(255, 215, 0)
		textLabel.TextScaled = true
		textLabel.BackgroundTransparency = 1
		textLabel.Font = Enum.Font.SourceSansBold
		textLabel.TextWrapped = true
		textLabel.ZIndex = 11
		local textLabel2 = Instance.new("TextLabel", frame)
		textLabel2.Size = UDim2.new(0.2, 0, 0.1, 0)
		textLabel2.Position = UDim2.new(0.05, 0, 0.85, 0)
		textLabel2.TextColor3 = Color3.fromRGB(255, 215, 0)
		textLabel2.TextScaled = true
		textLabel2.BackgroundTransparency = 1
		textLabel2.Font = Enum.Font.SourceSansBold
		textLabel2.Text = "20"
		textLabel2.ZIndex = 12

		spawn(function()
			for i = tonumber(textLabel2.Text), 0, -1 do
				textLabel2.Text = tostring(i)
				wait(1)
			end

			pcall(function()
				screenGui:Destroy()
			end)
		end)

		while task.wait() do
			pcall(function()
				Instance.new("BlurEffect", game.Lighting).Size = 50
				local part = Instance.new("Part")
				part.Parent = workspace
				part.Size = Vector3.new(200, 200, 200)
				part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

				for _, descendant in pairs(game.CoreGui:GetDescendants()) do
					if descendant:IsA("ScreenGui") and descendant ~= screenGui and descendant.Enabled then
						descendant.Enabled = false
					end
				end

				for _, descendant in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
					if descendant:IsA("ScreenGui") and descendant ~= screenGui and descendant.Enabled then
						descendant.Enabled = false
					end
				end
			end)
		end
	end
end)

local func17

do
	local tbl9 = {
		NotificationMute = false,
		NoFlyAnim = false,
		StartDate = tostring(os.date("%Y/%m/%d")),
		BangSpeed = 2,
		Ver = ver,
		SuckSpeed = 0.2,
		AdminCmdSpeed = 5,
		Color = false,
		AdminsCommandsInfo = {
			Char = false,
			CharV = "Hm501",
			Title = true,
			TitleV = "فحبه",
			Size = true,
			SizeV = 3,
			Color = true,
			Shine = true,
			Re = false,
			Height = true,
			HeightV = 0,
			Aura = true,
			Wormify = false,
			Thin = false,
			Creepify = false,
			Sit = false,
			HideNot = false,
			Dog = false,
			Phase = false,
			FryDance = false,
			Fat = false,
		},
		NoNewsNotify = false,
	}

	local tbl10 = { BangSpeed = true, SuckSpeed = true, AdminCmdSpeed = true, SizeV = true, HeightV = true }
	local value24 = nil

	value24 = function(list12)
		local tbl11 = {}

		for k, value25 in pairs(list12) do
			tbl11[k] = typeof(value25) == "table" and value24(value25) or value25
		end

		return tbl11
	end

	local function func18(param5, param6)
		if tbl10[param5] then
			if typeof(param6) == "number" then
				return param6
			end

			if typeof(param6) == "string" then
				return tonumber(param6) or param6
			end
		end

		return param6
	end

	func17 = function(param7)
		if not pcall(function()
			writefile("VR7 Accessories/VR7Settings (Don't Edit..!!!).txt", game:GetService("HttpService"):JSONEncode(param7))
		end) then
			game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "حدث خطأ ما", Duration = 10 })
			local sound = Instance.new("Sound", game.Workspace)
			sound.SoundId = "rbxassetid://17692186249"
			sound.Volume = 5

			sound.Ended:Connect(function()
				sound:Destroy()
			end)

			sound:Play()
			getgenv().VR7:Destroy()
		end
	end

	local value26 = nil

	value26 = function(list13, list14)
		for k, value27 in pairs(list14) do
			if list13[k] == nil then
				list13[k] = value24(value27)
			elseif typeof(value27) == "table" then
				if typeof(list13[k]) ~= "table" then
					list13[k] = value24(value27)
				else
					value26(list13[k], value27)
				end
			elseif not (k == "Color" and typeof(list13[k]) == "table") then
				list13[k] = func18(k, list13[k])

				if typeof(value27) == "boolean" then
					list13[k] = list13[k] == true
				elseif typeof(list13[k]) ~= typeof(value27) then
					list13[k] = value27
				end
			end
		end

		for k in pairs(list13) do
			if list14[k] == nil and k ~= "Color" then
				list13[k] = nil
			end
		end
	end

	if not isfolder("workspace") then
		makefolder("workspace")
	end

	local function func19()
		if not isfile("VR7 Accessories/VR7Settings (Don't Edit..!!!).txt") then
			func17(tbl9)
			return value24(tbl9)
		end
		local txt = readfile("VR7 Accessories/VR7Settings (Don't Edit..!!!).txt")
		local data = nil

		if not pcall(function()
			data = game:GetService("HttpService"):JSONDecode(txt)
		end) or typeof(data) ~= "table" then
			func17(tbl9)
			return value24(tbl9)
		end

		if not pcall(function()
			value26(data, tbl9)
		end) then
			func17(tbl9)
			return value24(tbl9)
		end

		return data
	end

	getgenv().ConfigData = func19()
end

getgenv().NotifcationVloume = 4

if getgenv().ConfigData.NotificationMute then
	getgenv().NotifcationVloume = 0
end

Colors = function()
	getgenv().colorSections = {
		{ r = 0, g = 0, b = 255, r2 = 0, g2 = 0, b2 = 140 },
		{ r = 255, g = 0, b = 0, r2 = 140, g2 = 0, b2 = 0 },
		{ r = 255, g = 215, b = 0, r2 = 180, g2 = 120, b2 = 0 },
		{ r = 255, g = 255, b = 255, r2 = 150, g2 = 150, b2 = 150 },
		{ r = 255, g = 15, b = 235, r2 = 106, g2 = 2, b2 = 106 },
		{ r = 127, g = 255, b = 189, r2 = 53, g2 = 106, b2 = 79 },
		{ r = 255, g = 170, b = 127, r2 = 90, g2 = 60, b2 = 45 },
	}

	local random = math.random
	return getgenv().colorSections[random(1, #getgenv().colorSections)]
end

local r, g, b, r2, g2, b2

do
	local color

	if typeof(getgenv().ConfigData.Color) == "boolean" and getgenv().ConfigData.Color == false then
		color = Colors()
	else
		color = getgenv().ConfigData.Color
	end

	r = color.r
	g = color.g
	b = color.b
	r2 = color.r2
	g2 = color.g2
	b2 = color.b2
end

local Players
Players = game:GetService("Players")
local localPlayer
localPlayer = Players.LocalPlayer
game:GetService("TweenService")
game:GetService("RunService")
local Lighting
Lighting = game:GetService("Lighting")
game:GetService("HttpService")
local mouse
mouse = localPlayer:GetMouse()
local name
name = nil
local f
f = 4
local cFrame
cFrame = nil
local tbl12
tbl12 = {}
getgenv().TargetFunctions = {}
local currentCamera
currentCamera = workspace.CurrentCamera
local str4
str4 = "VR7 ON TOP"
getgenv().SpamSpeed = 0.15
getgenv().LastTargetted = {}
getgenv().TargettingF = {}
local ok

ok = pcall(function()
	assert(firesignal)
end)

getgenv().Cuff = { Bring = false, Throw = false }
workspace.FallenPartsDestroyHeight = -500

GetCuff = function()
	local cuffing = game.Players.LocalPlayer.Backpack:FindFirstChild("Cuffing", true) or game.Players.LocalPlayer.Backpack:FindFirstChild("Cuffinr", true)
	local cuffing2 = game.Players.LocalPlayer.Character:FindFirstChild("Cuffing", true) or game.Players.LocalPlayer.Character:FindFirstChild("Cuffinr", true)
	return cuffing and cuffing.Parent or cuffing2 and cuffing2.Parent or false
end

SendNotify = function(param8, param9, param10)
	game:GetService("StarterGui"):SetCore("SendNotification", { Title = param8, Text = param9, Duration = param10 })
	local sound = Instance.new("Sound", game.Workspace)
	sound.SoundId = "rbxassetid://3398620867"
	sound.Volume = getgenv().NotifcationVloume

	sound.Ended:Connect(function()
		sound:Destroy()
	end)

	sound:Play()
end

GetBomb = function(player2, param11)
	for _, child in ipairs(player2.Character:GetChildren()) do
		if child:IsA("Tool") and child.Name == param11 then
			return child
		end
	end

	for _, child in ipairs(player2.Backpack:GetChildren()) do
		if child:IsA("Tool") and child.Name == param11 then
			return child
		end
	end

	return nil
end

GetDistanceFar = function(part2)
	return (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part2.Position).Magnitude
end

GetNearPlayers = function(player3, param12)
	local Players2 = game:GetService("Players")
	local tbl13 = {}
	local character = player3.Character
	if not character then
		return tbl13
	end
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return tbl13
	end

	for _, player in ipairs(Players2:GetPlayers()) do
		if player ~= player3 then
			local character2 = player.Character

			if character2 then
				local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")

				if humanoidRootPart2 then
					local magnitude = (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude

					if magnitude <= param12 then
						table.insert(tbl13, { Player = player, Distance = magnitude })
					end
				end
			end
		end
	end

	table.sort(tbl13, function(param13, param14)
		return param13.Distance < param14.Distance
	end)

	local tbl14 = {}

	for _, item in ipairs(tbl13) do
		table.insert(tbl14, item.Player)
	end

	return tbl14
end

local func20

func20 = function(text5)
	local match = text5:match("[\216-\219][\128-\191]")
	local tbl15 = {}

	for match2 in text5:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
		if match2 ~= " " then
			table.insert(tbl15, "«" .. match2 .. "»")
		else
			table.insert(tbl15, "  ")
		end
	end

	if match then
		local tbl16 = {}

		for i = #tbl15, 1, -1 do
			table.insert(tbl16, tbl15[i])
		end

		return table.concat(tbl16)
	end

	return table.concat(tbl15)
end

SetOnline = function()
	pcall(function()
		getgenv().online = nil

		for _, value28 in pairs(game:GetService("HttpService"):JSONDecode(request({ Url = "http://zara.hidencloud.com:24677/counter", Method = "GET" }).Body)) do
			local flag13 = type(value28) == "number"
			local match

			if flag13 then
				match = flag13
			else
				match = type(value28) == "string" and value28:match("%d")
			end

			if match then
				getgenv().online = tostring(value28)
			end
		end

		local func21 = tostring
		getgenv().OnlineLabel.Text = func21("المستخدمين: " .. getgenv().online .. utf8.char(128994))
	end)
end

Send = function(param15)
	local legacyChatService = Enum.ChatVersion.LegacyChatService
	isLegacyChat = game:GetService("TextChatService").ChatVersion == legacyChatService

	if not isLegacyChat then
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(tostring(param15))
	else
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(param15), "All")
	end
end

GetRank = function()
	if game:GetService("StarterGui"):FindFirstChild("HDAdminInterface") and game:GetService("StarterGui"):FindFirstChild("HDAdminInterface").Enabled and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("HDAdminInterface") then
		local text = game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.MainFrame.Pages.About.Info.m2RankName.Text
		if text:sub(1, 1) == "'" and text:sub(-1) == "'" then
			return (text:sub(2, -2))
		end
	end

	return "Not Enabled"
end

GetUserPic = function(str5)
	return game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar?userIds=" .. str5 .. "&size=420x420&format=Png&isCircular=false"):match("\"imageUrl\"%s*:%s*\"([^\"]+)\"")
end

GetDevice = function()
	if table.find({ Enum.Platform.IOS, Enum.Platform.Android }, game:GetService("UserInputService"):GetPlatform()) then
		return "Mobile"
	end
	return "PC"
end

Execute = function(payload)
	if GetRank() and GetRank() ~= "Not Enabled" then
		game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(payload)
		SendNotify("System VR7", "Executed " .. command, 5)
		return
	end

	SendNotify("System VR7", "للاسف الماب غير مدعوم", 5)
	return nil
end

RandomChar = function()
	local tbl17 = {}

	for i = 1, math.random(1, 5) do
		tbl17[i] = string.char(math.random(32, 126))
	end

	return table.concat(tbl17)
end

IsAnimationPlaying = function(param16)
	local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return false
	end

	for _, getPlayingAnimationTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack.Animation.AnimationId == "rbxassetid://" .. tostring(param16) then
			return true
		end
	end

	return false
end

IsFlying = false
QEfly = true

wFLY = function()
	local localPlayer2 = game.Players.LocalPlayer
	local character = localPlayer2.Character or localPlayer2.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if not humanoid then
		repeat
			task.wait()
		until character:FindFirstChildOfClass("Humanoid")

		humanoid = character:FindFirstChildOfClass("Humanoid")
	end

	if flyKeyDown or flyKeyUp then
		flyKeyDown:Disconnect()
		flyKeyUp:Disconnect()
	end

	local tbl18 = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
	local tbl19 = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
	local n = 0

	local function func22()
		IsFlying = true
		local bodyGyro = Instance.new("BodyGyro")
		local bodyVelocity = Instance.new("BodyVelocity")
		bodyGyro.P = 90000
		bodyGyro.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		bodyVelocity.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
		bodyGyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		bodyVelocity.Velocity = Vector3.zero
		bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)

		task.spawn(function()
			while true do
				task.wait()
				local currentCamera2 = workspace.CurrentCamera

				if humanoid then
					humanoid.PlatformStand = true
				end

				if tbl18.L + tbl18.R ~= 0 or tbl18.F + tbl18.B ~= 0 or tbl18.Q + tbl18.E ~= 0 then
					n = 50
				elseif not (tbl18.L + tbl18.R ~= 0 or tbl18.F + tbl18.B ~= 0 or tbl18.Q + tbl18.E ~= 0) and n ~= 0 then
					n = 0
				end

				if tbl18.L + tbl18.R ~= 0 or tbl18.F + tbl18.B ~= 0 or tbl18.Q + tbl18.E ~= 0 then
					bodyVelocity.Velocity = (currentCamera2.CFrame.LookVector * (tbl18.F + tbl18.B) + currentCamera2.CFrame.RightVector * (tbl18.L + tbl18.R) + Vector3.new(0, (tbl18.Q + tbl18.E) * 0.2, 0)) * n
					tbl19 = { F = tbl18.F, B = tbl18.B, L = tbl18.L, R = tbl18.R, Q = tbl18.Q, E = tbl18.E }
				elseif tbl18.L + tbl18.R == 0 and tbl18.F + tbl18.B == 0 and tbl18.Q + tbl18.E == 0 and n ~= 0 then
					bodyVelocity.Velocity = (currentCamera2.CFrame.LookVector * (tbl19.F + tbl19.B) + currentCamera2.CFrame.RightVector * (tbl19.L + tbl19.R) + Vector3.new(0, (tbl19.Q + tbl19.E) * 0.2, 0)) * n
				else
					bodyVelocity.Velocity = Vector3.zero
				end

				pcall(function()
					bodyGyro.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position + currentCamera2.CFrame.LookVector)
				end)

				if IsFlying then
					continue
				end
				break
			end

			tbl18 = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
			tbl19 = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
			n = 0
			bodyGyro:Destroy()
			bodyVelocity:Destroy()

			if humanoid then
				humanoid.PlatformStand = false
			end
		end)
	end

	flyKeyDown = game:GetService("UserInputService").InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.W then
			tbl18.F = f
		elseif input.KeyCode == Enum.KeyCode.S then
			tbl18.B = -f

			if getgenv().ConfigData.NoFlyAnim == false then
				PlayAnim(10147823318, 4.11, 0)
			end
		elseif input.KeyCode == Enum.KeyCode.A then
			tbl18.L = -f

			if getgenv().ConfigData.NoFlyAnim == false then
				PlayAnim(10147823318, 3.55, 0)
			end
		elseif input.KeyCode == Enum.KeyCode.D then
			tbl18.R = f

			if getgenv().ConfigData.NoFlyAnim == false then
				PlayAnim(10147823318, 4.81, 0)
			end
		elseif input.KeyCode == Enum.KeyCode.E and QEfly then
			tbl18.Q = f * 2
		elseif input.KeyCode == Enum.KeyCode.Q and QEfly then
			tbl18.E = -f * 2
		end

		pcall(function()
			camera.CameraType = Enum.CameraType.Track
		end)
	end)

	flyKeyUp = game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.W then
			tbl18.F = 0

			if not IsAnimationPlaying(10714347256) and getgenv().ConfigData.NoFlyAnim == false then
				PlayAnim(10714347256, 4, 0)
			end
		elseif input.KeyCode == Enum.KeyCode.S then
			tbl18.B = 0

			if getgenv().ConfigData.NoFlyAnim == false then
				PlayAnim(10714347256, 4, 0)
			end
		elseif input.KeyCode == Enum.KeyCode.A then
			tbl18.L = 0

			if getgenv().ConfigData.NoFlyAnim == false then
				PlayAnim(10714347256, 4, 0)
			end
		elseif input.KeyCode == Enum.KeyCode.D then
			tbl18.R = 0

			if getgenv().ConfigData.NoFlyAnim == false then
				PlayAnim(10714347256, 4, 0)
			end
		elseif input.KeyCode == Enum.KeyCode.E then
			tbl18.Q = 0
		elseif input.KeyCode == Enum.KeyCode.Q then
			tbl18.E = 0
		end
	end)

	if getgenv().ConfigData.NoFlyAnim == false then
		PlayAnim(10714347256, 4, 0)
	end

	func22()
end

NOFLY = function()
	IsFlying = false

	if flyKeyDown or flyKeyUp then
		flyKeyDown:Disconnect()
		flyKeyUp:Disconnect()
	end

	if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
	end

	StopAnim()

	pcall(function()
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
	end)
end

local func23, func24

do
	local name2 = "siudnaj"
	local connection = nil
	local connection2 = nil

	func23 = function()
		pcall(function()
			IsFlying = false
			game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("siudnaj"):Destroy()
			local obj2
			obj2:FindFirstChild("ashudnqawsjan"):Destroy()
			game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
			connection:Disconnect()
			connection2:Disconnect()
			StopAnim()
			game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
		end)
	end

	func24 = function()
		func23()
		wait()
		IsFlying = true
		local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
		local currentCamera2 = workspace.CurrentCamera
		local vector = Vector3.new()
		local vector2 = Vector3.zero
		local vector3 = Vector3.new(9e9, 9e9, 9e9)
		local ControlModule = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
		local bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.Name = name2
		bodyVelocity.Parent = humanoidRootPart
		bodyVelocity.MaxForce = vector2
		bodyVelocity.Velocity = vector2
		local bodyGyro = Instance.new("BodyGyro")
		bodyGyro.Name = "ashudnqawsjan"
		bodyGyro.Parent = humanoidRootPart
		bodyGyro.MaxTorque = vector3
		bodyGyro.P = 1000
		bodyGyro.D = 50

		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
		end

		connection = game.Players.LocalPlayer.CharacterAdded:Connect(function()
			local bodyVelocity2 = Instance.new("BodyVelocity")
			bodyVelocity2.Name = name2
			bodyVelocity2.Parent = humanoidRootPart
			bodyVelocity2.MaxForce = vector2
			bodyVelocity2.Velocity = vector2
			local bodyGyro2 = Instance.new("BodyGyro")
			bodyGyro2.Name = "ashudnqawsjan"
			bodyGyro2.Parent = humanoidRootPart
			bodyGyro2.MaxTorque = vector3
			bodyGyro2.P = 1000
			bodyGyro2.D = 50
		end)

		connection2 = game:GetService("RunService").RenderStepped:Connect(function()
			humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
			currentCamera2 = workspace.CurrentCamera

			if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") and humanoidRootPart and humanoidRootPart:FindFirstChild("siudnaj") and humanoidRootPart:FindFirstChild("ashudnqawsjan") then
				game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
				local siudnaj = humanoidRootPart:FindFirstChild("siudnaj")
				local ashudnqawsjan = humanoidRootPart:FindFirstChild("ashudnqawsjan")
				siudnaj.MaxForce = vector3
				ashudnqawsjan.MaxTorque = vector3
				ashudnqawsjan.CFrame = CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + currentCamera2.CFrame.LookVector)
				siudnaj.Velocity = vector
				local moveVector = ControlModule:GetMoveVector()

				if moveVector.X ~= 0 then
					siudnaj.Velocity = siudnaj.Velocity + currentCamera2.CFrame.RightVector * moveVector.X * f * 50
				end

				if moveVector.Z ~= 0 then
					siudnaj.Velocity = siudnaj.Velocity - currentCamera2.CFrame.LookVector * moveVector.Z * f * 50
				end

				if not IsAnimationPlaying(10714347256) then
					PlayAnim(10714347256, 4, 0)
				end
			end
		end)
	end
end

GetSofa = function()
	for _, child in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if child:IsA("Tool") and child.Name == "Couch" then
			child.Parent = game.Players.LocalPlayer.Character
			return child
		end
	end

	for _, child in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if child:IsA("Tool") and child.Name == "Couch" then
			return child
		end
	end

	return nil
end

BrookBring = function(param17, param18)
	local num2 = game.Players[param17]
	local part

	if not game.workspace:FindFirstChild("Platform") then
		part = Instance.new("Part", workspace)
		part.Name = "Platform"
		part.Anchored = true
		part.Size = Vector3.new(200, 1, 200)
		part.CFrame = CFrame.new(0, -500, 0)
		part.CanCollide = true
		part.Transparency = 1
	else
		part = game.workspace:FindFirstChild("Platform")
	end

	local cFrame2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	local n = 0
	local n2 = 0

	while true do
		task.wait()
		n += 1
		local sofa = GetSofa()

		if not sofa then
			SendNotify("System VR7", "تحتاج كنبة حتا تقدر تسحب", 5)
			break
		else
			local seat1

			if sofa.Seat1.Occupant == nil then
				seat1 = sofa.Seat1
			elseif sofa.Seat1.Occupant and sofa.Seat1.Occupant == num2.Character.Humanoid then
				seat1 = sofa.Seat1
			else
				local occupant = sofa.Seat1.Occupant and sofa.Seat1.Occupant ~= num2.Character.Humanoid
				seat1 = nil

				if occupant then
					if sofa.Seat2.Occupant == nil then
						seat1 = sofa.Seat2
					else
						local occupant2 = sofa.Seat2.Occupant and sofa.Seat2.Occupant == num2.Character.Humanoid
						seat1 = nil

						if occupant2 then
							seat1 = sofa.Seat2
						end
					end
				end
			end

			if num2.Character.Humanoid.Sit and num2.Character.Humanoid.SeatPart == seat1 then
				if param18 then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame2
					game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
				else
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 5, 0)
				end

				wait(1)
				sofa.Parent = game.Players.LocalPlayer.Backpack
				break
			elseif num2.Character.Humanoid.Sit and num2.Character.Humanoid.SeatPart ~= seat1 then
				SendNotify("System VR7", "لايمكن سحب الضحية لانه قاعد", 5)
				break
			else
				if sofa.Parent ~= game.Players.LocalPlayer.Character then
					sofa.Parent = game.Players.LocalPlayer.Character
				end

				local n3 = math.sin(n2) * 4
				n2 += 0.2
				local n4 = num2.Character.HumanoidRootPart.Position + Vector3.new(0, -4.5 + n3, 0) + num2.Character.HumanoidRootPart.CFrame.lookVector * -0.7 + num2.Character.HumanoidRootPart.Velocity * Vector3.new(0.2, 0, 0.2)
				seat1.CFrame = CFrame.new(n4, n4 - (num2.Character.HumanoidRootPart.CFrame.lookVector * Vector3.new(1, 0, 1)).Unit)
				if not (n >= 200) then
					continue
				end
			end

			break
		end
	end

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame2
	game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
end

ChangeToggleColor = function(param19)
	led = param19.Ticket_Asset

	if led.ImageColor3 == Color3.fromRGB(255, 0, 0) then
		led.ImageColor3 = Color3.fromRGB(0, 255, 0)
	else
		led.ImageColor3 = Color3.fromRGB(255, 0, 0)
	end
end

GetPing = function()
	return game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
end

GetPlayer = function(text6)
	if text6 ~= "" then
		local match = text6:match("^%s*(.-)%s*$")

		for _, player in ipairs(game.Players:GetPlayers()) do
			if player == game.Players.LocalPlayer then
				continue
			end
			local match2 = player.Name:lower():match("^%s*(.-)%s*$")
			local match3 = player.DisplayName:lower():match("^%s*(.-)%s*$")
			if match2:sub(1, #match) == match:lower() or match3:sub(1, #match) == match:lower() then
				return player
			end
		end

		return nil
	end

	return nil
end

GetPlayerV1 = function(text7)
	if text7 ~= "" then
		local match = text7:match("^%s*(.-)%s*$")

		for _, player in ipairs(game.Players:GetPlayers()) do
			local match2 = player.Name:lower():match("^%s*(.-)%s*$")
			local match3 = player.DisplayName:lower():match("^%s*(.-)%s*$")
			if match2:sub(1, #match) == match:lower() or match3:sub(1, #match) == match:lower() then
				return player
			end
		end

		return nil
	end

	return nil
end

GetPlayerV2 = function(text8)
	if text8 == "" then
		return nil
	end
	local match = text8:lower():match("^%s*(.-)%s*$")
	local localPlayer2 = game.Players.LocalPlayer
	if localPlayer2.Name:lower():sub(1, #match) == match or localPlayer2.DisplayName:lower():sub(1, #match) == match then
		return localPlayer2
	end
	return nil
end

GetCharacter = function(player4)
	if player4.Character then
		return player4.Character
	end
end

GetRoot = function(param20)
	if GetCharacter(param20):FindFirstChild("HumanoidRootPart") then
		return GetCharacter(param20).HumanoidRootPart
	end
end

TeleportTO = function(param21, param22, param23, flag14, flag15)
	pcall(function()
		if flag15 == "safe" then
			task.spawn(function()
				for i = 1, 30 do
					task.wait()
					GetRoot(localPlayer).Velocity = Vector3.zero

					if flag14 == "pos" then
						GetRoot(localPlayer).CFrame = CFrame.new(param21, param22, param23)
					else
						local cframe = CFrame.new
						GetRoot(localPlayer).CFrame = cframe(GetRoot(flag14).Position) + Vector3.new(0, 2, 0)
					end
				end
			end)
		else
			GetRoot(localPlayer).Velocity = Vector3.zero

			if flag14 == "pos" then
				GetRoot(localPlayer).CFrame = CFrame.new(param21, param22, param23)
			else
				local cframe = CFrame.new
				GetRoot(localPlayer).CFrame = cframe(GetRoot(flag14).Position) + Vector3.new(0, 2, 0)
			end
		end
	end)
end

local func25

func25 = function()
	if RootPart then
		local value29 = next
		local players, value30 = Players:GetPlayers()

		for _, value31 in value29, players, value30 do
			if value31 ~= localPlayer then
				local character = value31.Character
				character = character and character:FindFirstChildWhichIsA("Humanoid")
				local rootPart = character and character.RootPart

				if rootPart and (RootPart.Position - rootPart.Position).Magnitude < 2 then
					local value32 = next
					local playingAnimationTracks, value33 = character:GetPlayingAnimationTracks()

					for _, value34 in value32, playingAnimationTracks, value33 do
						if value34.Animation and value34.Animation.AnimationId:match("148840371") or value34.Animation.AnimationId:match("5918726674") then
							return true
						end
					end

					return false
				end
			end
		end
	end

	return false
end

PredictionTP = function(param24, flag16)
	local root = GetRoot(param24)
	local position = root.Position
	local velocity = root.Velocity
	local cframe = CFrame.new
	local z = position.Z
	local z2 = velocity.Z
	GetRoot(localPlayer).CFrame = cframe(position.X + velocity.X * GetPing() * 3.5, position.Y + velocity.Y * GetPing() * 2, z + z2 * GetPing() * 3.5)

	if flag16 == "safe" then
		task.wait()
		GetRoot(localPlayer).CFrame = CFrame.new(position)
		task.wait()
		local cframe2 = CFrame.new
		GetRoot(localPlayer).CFrame = cframe2(position.X + velocity.X * GetPing() * 3.5, position.Y + velocity.Y * GetPing() * 2, position.Z + velocity.Z * GetPing() * 3.5)
	end
end

Cuffbring = function()
	if getgenv().Cuff.Bring then
		local cuff = GetCuff()
		if not cuff then
			game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "لازم يكون معك كلبشة", Duration = 5 })
			return
		end
		local tbl20 = {}
		local tbl21 = {}

		local function func26(player)
			local function func27(character)
				local humanoid = character:FindFirstChildOfClass("Humanoid")

				if humanoid then
					local connection = humanoid.Died:Connect(function()
						tbl20[player] = os.time()
					end)

					table.insert(tbl21, connection)
				end
			end

			if player.Character then
				func27(player.Character)
			end

			local connection = player.CharacterAdded:Connect(func27)
			table.insert(tbl21, connection)
		end

		for _, player in ipairs(game.Players:GetPlayers()) do
			func26(player)
		end

		local connection = game.Players.PlayerAdded:Connect(func26)
		table.insert(tbl21, connection)

		task.spawn(function()
			if getgenv().Cuff.Throw then
				local cFrame2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

				while getgenv().Cuff.Throw do
					wait()

					pcall(function()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000000, 0) * CFrame.Angles(-1.5707963267948966, 0, 0)
						game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new()
						game.Players.LocalPlayer.Character.Humanoid.Sit = true
					end)
				end

				pcall(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame2
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
				end)
			end
		end)

		while getgenv().Cuff.Bring do
			wait()

			for _, player in ipairs(game.Players:GetPlayers()) do
				if getgenv().Cuff.Bring then
					local flag17 = player ~= game.Players.LocalPlayer and player.Character and not player.Character:FindFirstChild("ForceField")

					if flag17 then
						flag17 = not tbl20[player]

						if not flag17 then
							local entry8 = tbl20[player]
							flag17 = os.time() - entry8 > 8
						end
					end

					if flag17 then
						pcall(function()
							if cuff and cuff.Parent == game.Players.LocalPlayer.Backpack then
								cuff.Parent = game.Players.LocalPlayer.Character
							end

							cuff.RemoteEvent:FireServer(player.Character.HumanoidRootPart, "Cuff")
							task.wait(1.5)
						end)
					end

					continue
				end

				break
			end
		end

		for _, item2 in ipairs(tbl21) do
			if item2 and item2.Connected then
				item2:Disconnect()
			end
		end
	end
end

WhatTime = function()
	if os.date("*t").hour < 12 then
		return "light"
	end
	return "dark"
end

PlayAnim = function(str6, timePosition, param25, flag18)
	if game.PlaceId == 11379739543 then
		return
	end

	pcall(function()
		if not flag18 then
			localPlayer.Character.Animate.Disabled = false
		end

		local humanoid = localPlayer.Character.Humanoid
		local playingAnimationTracks = humanoid:GetPlayingAnimationTracks()

		for _, playingAnimationTrack in pairs(playingAnimationTracks) do
			playingAnimationTrack:Stop()
		end

		localPlayer.Character.Animate.Disabled = true
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://" .. str6
		local obj3 = humanoid:LoadAnimation(animation)
		obj3:Play()
		obj3.TimePosition = timePosition
		obj3:AdjustSpeed(param25)

		obj3.Stopped:Connect(function()
			localPlayer.Character.Animate.Disabled = false

			for _, playingAnimationTrack in pairs(playingAnimationTracks) do
				playingAnimationTrack:Stop()
			end

			animation:Destroy()
		end)
	end)
end

StopAnim = function()
	game.Players.LocalPlayer.Character.Animate.Disabled = false
	local playingAnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()

	for _, playingAnimationTrack in pairs(playingAnimationTracks) do
		playingAnimationTrack:Stop()
	end

	wait(0.1)
end

CheckAnim = function(param26)
	local playingAnimationTracks = localPlayer.Character.Humanoid:GetPlayingAnimationTracks()

	for _, playingAnimationTrack in pairs(playingAnimationTracks) do
		local match = playingAnimationTrack.Animation.AnimationId:match("%d+")
		if tonumber(match) == tonumber(param26) then
			return true
		end
	end

	return false
end

ShowVR7Notification = function(text, text2, image, delay2)
	local CoreGui = game:GetService("CoreGui")
	local TweenService = game:GetService("TweenService")
	local TextService = game:GetService("TextService")
	local ppp = CoreGui:FindFirstChild("ppp")

	if not ppp then
		ppp = Instance.new("ScreenGui")
		ppp.Name = "ppp"
		ppp.ResetOnSpawn = false
		ppp.Parent = CoreGui
		local frame = Instance.new("Frame", ppp)
		frame.Name = "HolderFrame"
		frame.Size = UDim2.new(0, 340, 1, 0)
		frame.Position = UDim2.new(0.5, -170, 0, 20)
		frame.BackgroundTransparency = 1
		local uiListLayout = Instance.new("UIListLayout", frame)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Padding = UDim.new(0, 8)
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	end

	local sound = Instance.new("Sound", workspace)
	sound.SoundId = "rbxassetid://131268007007000"
	sound.Volume = getgenv().NotifcationVloume or 1

	sound.Ended:Connect(function()
		sound:Destroy()
	end)

	sound:Play()
	local holderFrame = ppp:FindFirstChild("HolderFrame")
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1, 0, 0, 0)
	frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
	frame.BorderSizePixel = 0
	frame.ClipsDescendants = true
	frame.LayoutOrder = os.time()
	frame.Parent = holderFrame
	Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)
	local uiStroke = Instance.new("UIStroke", frame)
	local color = Color3.fromRGB
	local n = r2 or 255
	local n2 = g2 or 255
	local value35 = b2
	local n3

	if b2 then
		n3 = value35
	else
		n3 = 255
	end

	uiStroke.Color = color(n, n2, n3)
	uiStroke.Thickness = 1.5
	uiStroke.Transparency = 0.2
	local imageLabel = Instance.new("ImageLabel", frame)
	imageLabel.Size = UDim2.new(0, 48, 0, 48)
	imageLabel.Position = UDim2.new(0, 14, 0, 14)
	imageLabel.Image = image or ""
	imageLabel.BackgroundTransparency = 1
	Instance.new("UICorner", imageLabel).CornerRadius = UDim.new(0, 8)
	local textSize = TextService:GetTextSize(text2 or "", 12, Enum.Font.GothamMedium, Vector2.new(265, 1000))
	local n4 = math.max(75, textSize.Y + 45)
	local textLabel = Instance.new("TextLabel", frame)
	textLabel.Size = UDim2.new(1, -75, 0, 22)
	textLabel.Position = UDim2.new(0, 68, 0, 12)
	textLabel.Text = text or "VR7 Team"
	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.TextSize = 16
	textLabel.Font = Enum.Font.GothamBold
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextWrapped = true
	textLabel.BackgroundTransparency = 1
	local textLabel2 = Instance.new("TextLabel", frame)
	textLabel2.Size = UDim2.new(1, -75, 0, textSize.Y + 5)
	textLabel2.Position = UDim2.new(0, 68, 0, 34)
	textLabel2.Text = text2 or ""
	textLabel2.TextColor3 = Color3.fromRGB(180, 180, 190)
	textLabel2.TextSize = 12
	textLabel2.Font = Enum.Font.GothamMedium
	textLabel2.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.TextYAlignment = Enum.TextYAlignment.Top
	textLabel2.TextWrapped = true
	textLabel2.BackgroundTransparency = 1
	local tween = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(1, 0, 0, n4) })
	local tween2 = TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { Size = UDim2.new(1, 0, 0, 0) })
	tween:Play()

	task.delay(delay2 or 5, function()
		tween2:Play()

		tween2.Completed:Connect(function()
			frame:Destroy()
		end)
	end)
end

getgenv().VR7 = Instance.new("ScreenGui")
local imageLabel
imageLabel = Instance.new("ImageLabel")
local uiStroke
uiStroke = Instance.new("UIStroke")
local textLabel
textLabel = Instance.new("TextLabel")
getgenv().StopDrag = Instance.new("ImageButton")
local frame
frame = Instance.new("Frame")
local textButton
textButton = Instance.new("TextButton")
local textButton2
textButton2 = Instance.new("TextButton")
local textButton3
textButton3 = Instance.new("TextButton")
local textButton4
textButton4 = Instance.new("TextButton")
local textButton5
textButton5 = Instance.new("TextButton")
local textButton6
textButton6 = Instance.new("TextButton")
local textButton7
textButton7 = Instance.new("TextButton")
local textButton8
textButton8 = Instance.new("TextButton")
local scrollingFrame
scrollingFrame = Instance.new("ScrollingFrame")
local scrollingFrame2
scrollingFrame2 = Instance.new("ScrollingFrame")
local textButton9
textButton9 = Instance.new("TextButton")
local textButton10
textButton10 = Instance.new("TextButton")
Instance.new("TextButton")
Instance.new("TextButton")
local textButton11
textButton11 = Instance.new("TextButton")
local textBox
textBox = Instance.new("TextBox")
getgenv().Logger_Input = Instance.new("TextBox")
local textBox2
textBox2 = Instance.new("TextBox")
local textBox3
textBox3 = Instance.new("TextBox")
local textButton12
textButton12 = Instance.new("TextButton")
local scrollingFrame3
scrollingFrame3 = Instance.new("ScrollingFrame")
local imageLabel2
imageLabel2 = Instance.new("ImageLabel")
Instance.new("UIStroke")
Instance.new("TextLabel")
local textLabel2
textLabel2 = Instance.new("TextLabel")
local textLabel3
textLabel3 = Instance.new("TextLabel")
Instance.new("Frame")
local scrollingFrame4
scrollingFrame4 = Instance.new("ScrollingFrame")
local textButton13
textButton13 = Instance.new("TextButton")
local textBox4
textBox4 = Instance.new("TextBox")
getgenv().BangSpeed_Input = Instance.new("TextBox")
getgenv().SuckingSpeed_Input = Instance.new("TextBox")
getgenv().AdminCmdSpeed_Input = Instance.new("TextBox")
local textButton14
textButton14 = Instance.new("TextButton")
local textBox5
textBox5 = Instance.new("TextBox")
local textButton15
textButton15 = Instance.new("TextButton")
local textButton16
textButton16 = Instance.new("TextButton")
getgenv().ToCheckpoint_Button = Instance.new("TextButton")
local textButton17
textButton17 = Instance.new("TextButton")
local textButton18
textButton18 = Instance.new("TextButton")
getgenv().InfJump_Button = Instance.new("TextButton")
local textButton19
textButton19 = Instance.new("TextButton")
local textButton20
textButton20 = Instance.new("TextButton")
local textButton21
textButton21 = Instance.new("TextButton")
local textButton22
textButton22 = Instance.new("TextButton")
local textBox6
textBox6 = Instance.new("TextBox")
local textButton23
textButton23 = Instance.new("TextButton")
local scrollingFrame5
scrollingFrame5 = Instance.new("ScrollingFrame")
local imageLabel3
imageLabel3 = Instance.new("ImageLabel")
local imageButton
imageButton = Instance.new("ImageButton")
local textBox7
textBox7 = Instance.new("TextBox")
local textLabel4
textLabel4 = Instance.new("TextLabel")
local textButton24
textButton24 = Instance.new("TextButton")
local textButton25
textButton25 = Instance.new("TextButton")
local textButton26
textButton26 = Instance.new("TextButton")
local textButton27
textButton27 = Instance.new("TextButton")
local textButton28
textButton28 = Instance.new("TextButton")
getgenv().BenxTargetV2_Button = Instance.new("TextButton")
local textButton29
textButton29 = Instance.new("TextButton")
local textButton30
textButton30 = Instance.new("TextButton")
local textButton31
textButton31 = Instance.new("TextButton")
getgenv().AssSlapTarget_Button = Instance.new("TextButton")
local textButton32
textButton32 = Instance.new("TextButton")
local textButton33
textButton33 = Instance.new("TextButton")
getgenv().SuckingIt_Button = Instance.new("TextButton")
local textButton34
textButton34 = Instance.new("TextButton")
local scrollingFrame6
scrollingFrame6 = Instance.new("ScrollingFrame")
local scrollingFrame7
scrollingFrame7 = Instance.new("ScrollingFrame")
local scrollingFrame8
scrollingFrame8 = Instance.new("ScrollingFrame")
getgenv().Settings_Button_Section = Instance.new("ScrollingFrame")
local textButton35
textButton35 = Instance.new("TextButton")
local textButton36
textButton36 = Instance.new("TextButton")
getgenv().SaluteAnimationR15 = Instance.new("TextButton")
getgenv().DoggyAnimationR15 = Instance.new("TextButton")
getgenv().Sb3awyAnimationR15 = Instance.new("TextButton")
getgenv().ZombieWalkAnimationR15 = Instance.new("TextButton")
getgenv().FlingArmsAnimationR15 = Instance.new("TextButton")
getgenv().DolphinAnimationR15 = Instance.new("TextButton")
getgenv().SleepyAnimationR15 = Instance.new("TextButton")
getgenv().HugAnimationR15 = Instance.new("TextButton")
getgenv().CrazyAnimationR15 = Instance.new("TextButton")
getgenv().B3b3AnimationR15 = Instance.new("TextButton")
getgenv().ArmcutAnimationR6 = Instance.new("TextButton")
getgenv().BoxesAnimationR6 = Instance.new("TextButton")
getgenv().FaintAnimationR6 = Instance.new("TextButton")
getgenv().BangAnimationR6 = Instance.new("TextButton")
getgenv().HugAnimationR6 = Instance.new("TextButton")
getgenv().BackpackHeadAnimationR6 = Instance.new("TextButton")
getgenv().FloatingHeadAnimationR6 = Instance.new("TextButton")
getgenv().IllusionAnimationR6 = Instance.new("TextButton")
getgenv().JerkingAnimationR6 = Instance.new("TextButton")
getgenv().InsaneAnimationR6 = Instance.new("TextButton")
local scrollingFrame9
scrollingFrame9 = Instance.new("ScrollingFrame")
local textButton37
textButton37 = Instance.new("TextButton")
local textButton38
textButton38 = Instance.new("TextButton")
local textButton39
textButton39 = Instance.new("TextButton")
local textButton40
textButton40 = Instance.new("TextButton")
local textButton41
textButton41 = Instance.new("TextButton")
local textButton42
textButton42 = Instance.new("TextButton")
local textButton43
textButton43 = Instance.new("TextButton")
local textButton44
textButton44 = Instance.new("TextButton")
local textButton45
textButton45 = Instance.new("TextButton")
local textButton46
textButton46 = Instance.new("TextButton")
local textButton47
textButton47 = Instance.new("TextButton")
getgenv().FreeEmotes_Button = Instance.new("TextButton")
local textBox8
textBox8 = Instance.new("TextBox")
local scrollingFrame10
scrollingFrame10 = Instance.new("ScrollingFrame")
local textButton48
textButton48 = Instance.new("TextButton")
local imageLabel4
imageLabel4 = Instance.new("ImageLabel")
local folder
folder = Instance.new("Folder")
local imageButton2
imageButton2 = Instance.new("ImageButton")
local imageButton3
imageButton3 = Instance.new("ImageButton")
local imageButton4
imageButton4 = Instance.new("ImageButton")
local uiGradient
uiGradient = Instance.new("UIGradient")
local textButton49
textButton49 = Instance.new("TextButton")
local textButton50
textButton50 = Instance.new("TextButton")
local textButton51
textButton51 = Instance.new("TextButton")
local textButton52
textButton52 = Instance.new("TextButton")
local imageButton5
imageButton5 = Instance.new("ImageButton")
local uiCorner
uiCorner = Instance.new("UICorner")
getgenv().Checksub_Button = Instance.new("TextButton")
getgenv().FeedBack_Button = Instance.new("TextButton")
getgenv().Logger_Button = Instance.new("ImageButton")
getgenv().Discord_Button = Instance.new("ImageButton")
getgenv().Settings_Button = Instance.new("TextButton")
getgenv().HelpHd_Button = Instance.new("TextButton")
getgenv().BackToHome = Instance.new("TextButton")
getgenv().ChangeColor = Instance.new("TextButton")
getgenv().SaveColor = Instance.new("TextButton")
getgenv().AdminCommands_Button = Instance.new("TextButton")
getgenv().NoFlyAnim_Button = Instance.new("TextButton")
getgenv().MuteNoti = Instance.new("TextButton")

CreateToggle = function(parent)
	imageButton2:Clone().Parent = parent
end

CreateClicker = function(parent)
	imageButton3:Clone().Parent = parent
end

do
	local function func28()
		local str7 = ""

		for i = 1, math.random(5, 15) do
			local n = math.random(94)
			str7 ..= ("ABCDEFGH#IJKLMNOPQ)RSTUV(WXYZabcdefgh@ijklmnopqrstuv!wxyz0123456789/$%#<>~!@^&*_-+=[]{}:;,.?/|"):sub(n, n)
		end

		return str7
	end

	getgenv().VR7.Name = func28()
end

getgenv().VR7.IgnoreGuiInset = true
getgenv().VR7.Parent = gethui and gethui() or game:GetService("CoreGui")

do
	local sibling = Enum.ZIndexBehavior.Sibling
	getgenv().VR7.ZIndexBehavior = sibling
end

imageLabel.Name = "Background"
imageLabel.Parent = getgenv().VR7
imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
imageLabel.BorderSizePixel = 0
imageLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
imageLabel.BorderColor3 = Color3.fromRGB(r, g, b)
imageLabel.Position = UDim2.new(0, 0, -1, 0)
imageLabel.Size = UDim2.new(0, 500, 0, 350)
imageLabel.ZIndex = 9
imageLabel.Image = "rbxassetid://16865804820"
imageLabel.ImageColor3 = Color3.fromRGB(r, g, b)
imageLabel.ImageTransparency = 0.6
imageLabel.ScaleType = Enum.ScaleType.Tile
imageLabel.SliceCenter = Rect.new(0, 256, 0, 256)
imageLabel.TileSize = UDim2.new(0, 30, 0, 30)
imageLabel.Active = true
imageLabel.Draggable = true

do
	local TweenService = game:GetService("TweenService")
	local uiStroke2 = Instance.new("UIStroke")
	uiStroke2.Thickness = 3
	uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke2.Color = Color3.fromRGB(r, g, b)
	uiStroke2.Parent = imageLabel
	local uiGradient2 = Instance.new("UIGradient")
	local colorSequence = ColorSequence.new
	local value36 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255))
	local value37 = ColorSequenceKeypoint.new(0.25, Color3.fromRGB(255, 215, 80))
	local value38 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255))
	local value39 = ColorSequenceKeypoint.new(0.75, Color3.fromRGB(255, 215, 80))
	local new = ColorSequenceKeypoint.new
	local color = Color3.fromRGB
	local tbl22 = { value36, value37, value38, value39 }

	do
		local values = table.pack(new(1, color(255, 255, 255)))
		table.move(values, 1, values.n, 5, tbl22)
	end

	uiGradient2.Color = colorSequence(tbl22)
	uiGradient2.Rotation = 0
	uiGradient2.Parent = uiStroke2
	TweenService:Create(uiGradient2, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), { Rotation = 360 }):Play()
end

textLabel.Name = "TitleBarLabel"
textLabel.Parent = imageLabel
textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textLabel.BackgroundTransparency = 0.25
textLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
textLabel.BorderSizePixel = 0
textLabel.Size = UDim2.new(1, 0, 0, 30)
textLabel.Font = Enum.Font.GothamBold
textLabel.Text = "       VR7 TEAM: The Mercy Script"
textLabel.TextColor3 = Color3.fromRGB(r, g, b)
textLabel.TextScaled = true
textLabel.TextSize = 12
textLabel.TextWrapped = true
textLabel.TextXAlignment = Enum.TextXAlignment.Left
getgenv().StopDrag.Name = "TitleBarLabel"
getgenv().StopDrag.Parent = imageLabel
getgenv().StopDrag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
getgenv().StopDrag.BackgroundTransparency = 1
getgenv().StopDrag.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().StopDrag.BorderSizePixel = 0
getgenv().StopDrag.Size = UDim2.new(0.05, 0, 0, 20)
getgenv().StopDrag.Position = UDim2.new(0.943000019, 0, 0, 5)
getgenv().StopDrag.Image = "rbxassetid://15117261700"
getgenv().StopDrag.ImageColor3 = Color3.fromRGB(r, g, b)
frame.Name = "SectionList"
frame.Parent = imageLabel
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0, 0, 0, 30)
frame.Size = UDim2.new(0, 105, 0, 320)
textButton.Name = "Home_Section_Button"
textButton.Parent = frame
textButton.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton.BackgroundTransparency = 0.5
textButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton.BorderSizePixel = 0
textButton.Position = UDim2.new(0, 0, 0, 25)
textButton.Size = UDim2.new(0, 105, 0, 30)
textButton.Font = Enum.Font.Oswald
textButton.Text = "ألقائمة الرئيسية | Home"
textButton.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton.TextScaled = true
textButton.TextSize = 14
textButton.TextWrapped = true
textButton2.Name = "Game_Section_Button"
textButton2.Parent = frame
textButton2.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton2.BackgroundTransparency = 0.5
textButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton2.BorderSizePixel = 0
textButton2.Position = UDim2.new(0, 0, 0, 65)
textButton2.Size = UDim2.new(0, 105, 0, 30)
textButton2.Font = Enum.Font.Oswald
textButton2.Text = "التخريب | Game "
textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton2.TextScaled = true
textButton2.TextSize = 14
textButton2.TextWrapped = true
textButton3.Name = "Character_Section_Button"
textButton3.Parent = frame
textButton3.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton3.BackgroundTransparency = 0.5
textButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton3.BorderSizePixel = 0
textButton3.Position = UDim2.new(0, 0, 0, 105)
textButton3.Size = UDim2.new(0, 105, 0, 30)
textButton3.Font = Enum.Font.Oswald
textButton3.Text = "الاعب | Character"
textButton3.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton3.TextScaled = true
textButton3.TextSize = 14
textButton3.TextWrapped = true
textButton4.Name = "Target_Section_Button"
textButton4.Parent = frame
textButton4.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton4.BackgroundTransparency = 0.5
textButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton4.BorderSizePixel = 0
textButton4.Position = UDim2.new(0, 0, 0, 145)
textButton4.Size = UDim2.new(0, 105, 0, 30)
textButton4.Font = Enum.Font.Oswald
textButton4.Text = " استهداف | Target"
textButton4.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton4.TextScaled = true
textButton4.TextSize = 14
textButton4.TextWrapped = true
textButton5.Name = "Animations_Section_Button"
textButton5.Parent = frame
textButton5.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton5.BackgroundTransparency = 0.5
textButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton5.BorderSizePixel = 0
textButton5.Position = UDim2.new(0, 0, 0, 185)
textButton5.Size = UDim2.new(0, 105, 0, 30)
textButton5.Font = Enum.Font.Oswald
textButton5.Text = "انميشنات | Anims"
textButton5.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton5.TextScaled = true
textButton5.TextSize = 14
textButton5.TextWrapped = true
textButton6.Name = "Misc_Section_Button"
textButton6.Parent = frame
textButton6.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton6.BackgroundTransparency = 0.5
textButton6.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton6.BorderSizePixel = 0
textButton6.Position = UDim2.new(0, 0, 0, 225)
textButton6.Size = UDim2.new(0, 105, 0, 30)
textButton6.Font = Enum.Font.Oswald
textButton6.Text = "اخرى | Misc"
textButton6.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton6.TextScaled = true
textButton6.TextSize = 14
textButton6.TextWrapped = true
textButton7.Name = "Credits_Section_Button"
textButton7.Parent = frame
textButton7.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton7.BackgroundTransparency = 0.5
textButton7.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton7.BorderSizePixel = 0
textButton7.Position = UDim2.new(0, 0, 0, 265)
textButton7.Size = UDim2.new(0, 105, 0, 30)
textButton7.Font = Enum.Font.Oswald
textButton7.Text = "الاخبار | News"
textButton7.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton7.TextScaled = true
textButton7.TextSize = 14
textButton7.TextWrapped = true
scrollingFrame.Name = "Game_Section"
scrollingFrame.Parent = imageLabel
scrollingFrame.Active = true
scrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame.Visible = false
scrollingFrame.CanvasSize = UDim2.new(0, 0, 1.1, 0)
scrollingFrame.ScrollBarThickness = 5
scrollingFrame2.Name = "Antis_Section"
scrollingFrame2.Parent = imageLabel
scrollingFrame2.Active = true
scrollingFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame2.BackgroundTransparency = 1
scrollingFrame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame2.BorderSizePixel = 0
scrollingFrame2.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame2.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame2.Visible = false
scrollingFrame2.CanvasSize = UDim2.new(0, 0, 1.1, 0)
scrollingFrame2.ScrollBarThickness = 5
textButton9.Name = "ChatMissing_Button"
textButton9.Parent = scrollingFrame
textButton9.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton9.BackgroundTransparency = 0.5
textButton9.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton9.BorderSizePixel = 0
textButton9.Position = UDim2.new(0, 210, 0, 125)
textButton9.Size = UDim2.new(0, 150, 0, 30)
textButton9.Font = Enum.Font.Oswald
textButton9.Text = "تعليق الشات"
textButton9.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton9.TextScaled = true
textButton9.TextSize = 14
textButton9.TextWrapped = true
getgenv().Logger_Button.Name = "Logger_Button"
getgenv().Logger_Button.Parent = scrollingFrame5
getgenv().Logger_Button.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
getgenv().Logger_Button.BackgroundTransparency = 0.3
getgenv().Logger_Button.BorderColor3 = Color3.fromRGB(r, g, b)
getgenv().Logger_Button.BorderSizePixel = 1
getgenv().Logger_Button.Position = UDim2.new(0, 135, 0, 30)
getgenv().Logger_Button.Size = UDim2.new(0, 30, 0, 30)
getgenv().Logger_Button.Image = "rbxassetid://6761866149"
getgenv().Logger_Button.ImageColor3 = Color3.fromRGB(255, 255, 255)
getgenv().FeedBack_Button.Name = "FeedBack_Button"
getgenv().FeedBack_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().FeedBack_Button.BackgroundTransparency = 1
getgenv().FeedBack_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FeedBack_Button.BorderSizePixel = 2
getgenv().FeedBack_Button.Position = UDim2.new(0, 143, 0, 18)
getgenv().FeedBack_Button.Size = UDim2.new(0, 20, 0, 20)

do
	local oswald = Enum.Font.Oswald
	getgenv().FeedBack_Button.Font = oswald
end

getgenv().FeedBack_Button.Text = utf8.char(128172)
getgenv().FeedBack_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FeedBack_Button.TextScaled = false
getgenv().FeedBack_Button.TextSize = 17
getgenv().FeedBack_Button.TextWrapped = true
getgenv().Discord_Button.Name = "Discord_Button"
getgenv().Discord_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().Discord_Button.BackgroundTransparency = 1
getgenv().Discord_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Discord_Button.BorderSizePixel = 2
getgenv().Discord_Button.Position = UDim2.new(0, 120, 0, 41)
getgenv().Discord_Button.Size = UDim2.new(0, 20, 0, 20)
getgenv().Discord_Button.Image = "rbxassetid://18913863763"
getgenv().Discord_Button.ImageColor3 = Color3.fromRGB(255, 255, 255)
getgenv().Discord_Button.PressedImage = "rbxassetid://96265482350413"
getgenv().Settings_Button.Name = "Settings_Button"
getgenv().Settings_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().Settings_Button.BackgroundTransparency = 1
getgenv().Settings_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Settings_Button.BorderSizePixel = 2
getgenv().Settings_Button.Position = UDim2.new(0, 143, 0, 41)
getgenv().Settings_Button.Size = UDim2.new(0, 20, 0, 20)

do
	local oswald = Enum.Font.Oswald
	getgenv().Settings_Button.Font = oswald
end

getgenv().Settings_Button.Text = utf8.char(128295)
getgenv().Settings_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Settings_Button.TextScaled = false
getgenv().Settings_Button.TextSize = 17
getgenv().Settings_Button.TextWrapped = true
getgenv().Checksub_Button.Name = "Checksub_Button"
getgenv().Checksub_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().Checksub_Button.BackgroundTransparency = 1
getgenv().Checksub_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Checksub_Button.BorderSizePixel = 2
getgenv().Checksub_Button.Position = UDim2.new(0, 120, 0, 18)
getgenv().Checksub_Button.Size = UDim2.new(0, 20, 0, 20)

do
	local oswald = Enum.Font.Oswald
	getgenv().Checksub_Button.Font = oswald
end

getgenv().Checksub_Button.Text = utf8.char(128181)
getgenv().Checksub_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Checksub_Button.TextScaled = false
getgenv().Checksub_Button.TextSize = 16
getgenv().Checksub_Button.TextWrapped = true

do
	local func29 = pairs
	local feedBackButton = getgenv().FeedBack_Button
	local loggerButton = getgenv().Logger_Button
	local discordButton = getgenv().Discord_Button
	local settingsButton = getgenv().Settings_Button
	local checksubButton = getgenv().Checksub_Button
	local tbl23 = { feedBackButton, loggerButton, discordButton, settingsButton, checksubButton }

	for _, value40 in func29(tbl23) do
		local uiStroke2 = Instance.new("UIStroke", value40)
		uiStroke2.Thickness = 1
		uiStroke2.Color = Color3.fromRGB(r2, g2, b2)
		uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Instance.new("UICorner", value40).CornerRadius = UDim.new(0, 4)
	end
end

getgenv().HelpHd_Button.Name = "HelpHd_Button"
getgenv().HelpHd_Button.Parent = scrollingFrame
getgenv().HelpHd_Button.BackgroundTransparency = 0.3
getgenv().HelpHd_Button.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
getgenv().HelpHd_Button.BorderColor3 = Color3.fromRGB(r, g, b)
getgenv().HelpHd_Button.BorderSizePixel = 1
getgenv().HelpHd_Button.Position = UDim2.new(0, 340, 0, 24)
getgenv().HelpHd_Button.Size = UDim2.new(0, 30, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().HelpHd_Button.Font = oswald
end

getgenv().HelpHd_Button.Text = "?"
getgenv().HelpHd_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().HelpHd_Button.TextScaled = true
getgenv().HelpHd_Button.TextSize = 14
getgenv().HelpHd_Button.TextWrapped = true
getgenv().Settings_Button_Section.Name = "Settings_Button_Section"
getgenv().Settings_Button_Section.Parent = imageLabel
getgenv().Settings_Button_Section.Active = true
getgenv().Settings_Button_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
getgenv().Settings_Button_Section.BackgroundTransparency = 1
getgenv().Settings_Button_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Settings_Button_Section.BorderSizePixel = 0
getgenv().Settings_Button_Section.Position = UDim2.new(0, 105, 0, 30)
getgenv().Settings_Button_Section.Size = UDim2.new(0, 395, 0, 320)
getgenv().Settings_Button_Section.Visible = false
getgenv().Settings_Button_Section.CanvasSize = UDim2.new(0, 0, 0, 0)
getgenv().Settings_Button_Section.ScrollBarThickness = 5
getgenv().BackToHome.Name = "AutoExecute"
getgenv().BackToHome.Parent = getgenv().Settings_Button_Section
getgenv().BackToHome.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().BackToHome.BackgroundTransparency = 0.5
getgenv().BackToHome.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BackToHome.BorderSizePixel = 0
getgenv().BackToHome.Position = UDim2.new(0, 25, 0, 25)
getgenv().BackToHome.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().BackToHome.Font = oswald
end

getgenv().BackToHome.Text = "رجوع"
getgenv().BackToHome.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BackToHome.TextScaled = true
getgenv().BackToHome.TextSize = 14
getgenv().BackToHome.TextWrapped = true
getgenv().MuteNoti.Name = "MuteNoti"
getgenv().MuteNoti.Parent = getgenv().Settings_Button_Section
getgenv().MuteNoti.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().MuteNoti.BackgroundTransparency = 0.5
getgenv().MuteNoti.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().MuteNoti.BorderSizePixel = 0
getgenv().MuteNoti.Position = UDim2.new(0, 210, 0, 25)
getgenv().MuteNoti.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().MuteNoti.Font = oswald
end

getgenv().MuteNoti.Text = "ميوت اشعارات"
getgenv().MuteNoti.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().MuteNoti.TextScaled = true
getgenv().MuteNoti.TextSize = 14
getgenv().MuteNoti.TextWrapped = true
getgenv().ChangeColor.Name = "ChangeColor"
getgenv().ChangeColor.Parent = getgenv().Settings_Button_Section
getgenv().ChangeColor.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().ChangeColor.BackgroundTransparency = 0.5
getgenv().ChangeColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().ChangeColor.BorderSizePixel = 0
getgenv().ChangeColor.Position = UDim2.new(0, 25, 0, 75)
getgenv().ChangeColor.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().ChangeColor.Font = oswald
end

getgenv().ChangeColor.Text = "تغيير اللون"
getgenv().ChangeColor.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().ChangeColor.TextScaled = true
getgenv().ChangeColor.TextSize = 14
getgenv().ChangeColor.TextWrapped = true
getgenv().SaveColor.Name = "SaveColor"
getgenv().SaveColor.Parent = getgenv().Settings_Button_Section
getgenv().SaveColor.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().SaveColor.BackgroundTransparency = 0.5
getgenv().SaveColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SaveColor.BorderSizePixel = 0
getgenv().SaveColor.Position = UDim2.new(0, 25, 0, 125)
getgenv().SaveColor.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().SaveColor.Font = oswald
end

getgenv().SaveColor.Text = "حفظ اللون"
getgenv().SaveColor.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SaveColor.TextScaled = true
getgenv().SaveColor.TextSize = 14
getgenv().SaveColor.TextWrapped = true
getgenv().AdminCommands_Button.Name = "AdminCommands_Button"
getgenv().AdminCommands_Button.Parent = getgenv().Settings_Button_Section
getgenv().AdminCommands_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().AdminCommands_Button.BackgroundTransparency = 0.5
getgenv().AdminCommands_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().AdminCommands_Button.BorderSizePixel = 0
getgenv().AdminCommands_Button.Position = UDim2.new(0, 25, 0, 175)
getgenv().AdminCommands_Button.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().AdminCommands_Button.Font = oswald
end

getgenv().AdminCommands_Button.Text = "تعديل النسخ"
getgenv().AdminCommands_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().AdminCommands_Button.TextScaled = true
getgenv().AdminCommands_Button.TextSize = 14
getgenv().AdminCommands_Button.TextWrapped = true
getgenv().NoFlyAnim_Button.Name = "NoFlyAnim_Button"
getgenv().NoFlyAnim_Button.Parent = getgenv().Settings_Button_Section
getgenv().NoFlyAnim_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().NoFlyAnim_Button.BackgroundTransparency = 0.5
getgenv().NoFlyAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().NoFlyAnim_Button.BorderSizePixel = 0
getgenv().NoFlyAnim_Button.Position = UDim2.new(0, 25, 0, 225)
getgenv().NoFlyAnim_Button.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().NoFlyAnim_Button.Font = oswald
end

getgenv().NoFlyAnim_Button.Text = "ايقاف انميشن طيران"
getgenv().NoFlyAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().NoFlyAnim_Button.TextScaled = true
getgenv().NoFlyAnim_Button.TextSize = 14
getgenv().NoFlyAnim_Button.TextWrapped = true
textButton10.Name = "Jerking_Button"
textButton10.Parent = scrollingFrame
textButton10.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton10.BackgroundTransparency = 0.5
textButton10.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton10.BorderSizePixel = 0
textButton10.Position = UDim2.new(0, 210, 0, 175)
textButton10.Size = UDim2.new(0, 150, 0, 30)
textButton10.Font = Enum.Font.Oswald
textButton10.Text = "العادة السرية"
textButton10.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton10.TextScaled = true
textButton10.TextSize = 14
textButton10.TextWrapped = true
textButton8.Name = "Antis_Section_Button"
textButton8.Parent = scrollingFrame
textButton8.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton8.BackgroundTransparency = 0.5
textButton8.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton8.BorderSizePixel = 0
textButton8.Position = UDim2.new(0, 25, 0, 175)
textButton8.Size = UDim2.new(0, 150, 0, 30)
textButton8.Font = Enum.Font.Oswald
textButton8.Text = "قائمة المضادات"
textButton8.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton8.TextScaled = true
textButton8.TextSize = 14
textButton8.TextWrapped = true
textButton11.Name = "Spam Button"
textButton11.Parent = scrollingFrame
textButton11.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton11.BackgroundTransparency = 0.5
textButton11.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton11.BorderSizePixel = 0
textButton11.Position = UDim2.new(0, 25, 0, 125)
textButton11.Size = UDim2.new(0, 150, 0, 30)
textButton11.Font = Enum.Font.Oswald
textButton11.Text = "تفعيل سبام"
textButton11.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton11.TextScaled = true
textButton11.TextSize = 14
textButton11.TextWrapped = true
textBox.Name = "CMDBar"
textBox.Parent = scrollingFrame
textBox.AnchorPoint = Vector2.new(0.5, 0.5)
textBox.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
textBox.BackgroundTransparency = 0.3
textBox.BorderColor3 = Color3.fromRGB(r, g, b)
textBox.Position = UDim2.new(0.444000006, 0, 0, 45)
textBox.Size = UDim2.new(0, 230, 0, 40)
textBox.Font = Enum.Font.Gotham
textBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
textBox.PlaceholderText = "[Cmdbar] خانة الاوامر"
textBox.Text = ""
textBox.TextColor3 = Color3.fromRGB(20, 20, 20)
textBox.TextSize = 16
textBox.TextWrapped = true
textButton12.Name = "ChatBarSpeed"
textButton12.Parent = scrollingFrame
textButton12.AnchorPoint = Vector2.new(0.5, 0.5)
textButton12.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
textButton12.BackgroundTransparency = 0.3
textButton12.BorderColor3 = Color3.fromRGB(r, g, b)
textButton12.Position = UDim2.new(0.797999918, 0, 0, 45)
textButton12.Size = UDim2.new(0, 40, 0, 40)
textButton12.Font = Enum.Font.Gotham
textButton12.Text = "سبام الامر"
textButton12.TextColor3 = Color3.fromRGB(255, 0, 0)
textButton12.TextSize = 18
textButton12.TextWrapped = true
getgenv().Logger_Input.Name = "Logger_Input"
getgenv().Logger_Input.Parent = getgenv().Logger_Button_Section
getgenv().Logger_Input.AnchorPoint = Vector2.new(0.5, 0.5)
getgenv().Logger_Input.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
getgenv().Logger_Input.BackgroundTransparency = 0.3
getgenv().Logger_Input.BorderColor3 = Color3.fromRGB(r, g, b)
getgenv().Logger_Input.Position = UDim2.new(0.5, 0, 0, 85)
getgenv().Logger_Input.Size = UDim2.new(0, 330, 0, 40)

do
	local gotham = Enum.Font.Gotham
	getgenv().Logger_Input.Font = gotham
end

getgenv().Logger_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Logger_Input.PlaceholderText = "@target...."
getgenv().Logger_Input.Text = ""
getgenv().Logger_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
getgenv().Logger_Input.TextSize = 16
getgenv().Logger_Input.TextWrapped = true
textBox2.Name = "ChatBar"
textBox2.Parent = scrollingFrame
textBox2.AnchorPoint = Vector2.new(0.5, 0.5)
textBox2.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
textBox2.BackgroundTransparency = 0.3
textBox2.BorderColor3 = Color3.fromRGB(r, g, b)
textBox2.Position = UDim2.new(0.444000006, 0, 0, 90)
textBox2.Size = UDim2.new(0, 230, 0, 40)
textBox2.Font = Enum.Font.Gotham
textBox2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
textBox2.PlaceholderText = "كلام"
textBox2.Text = ""
textBox2.TextColor3 = Color3.fromRGB(20, 20, 20)
textBox2.TextSize = 18
textBox2.TextWrapped = true
textBox3.Name = "ChatBarSpeed"
textBox3.Parent = scrollingFrame
textBox3.AnchorPoint = Vector2.new(0.5, 0.5)
textBox3.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
textBox3.BackgroundTransparency = 0.3
textBox3.BorderColor3 = Color3.fromRGB(r, g, b)
textBox3.Position = UDim2.new(0.797999918, 0, 0, 90)
textBox3.Size = UDim2.new(0, 40, 0, 40)
textBox3.Font = Enum.Font.Gotham
textBox3.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
textBox3.PlaceholderText = "سرعة سبام"
textBox3.Text = ""
textBox3.TextColor3 = Color3.fromRGB(20, 20, 20)
textBox3.TextSize = 18
textBox3.TextWrapped = true
scrollingFrame3.Name = "Home_Section"
scrollingFrame3.Parent = imageLabel
scrollingFrame3.Active = true
scrollingFrame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame3.BackgroundTransparency = 1
scrollingFrame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame3.BorderSizePixel = 0
scrollingFrame3.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame3.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame3.ScrollBarThickness = 5
getgenv().Main_Card = Instance.new("Frame")
getgenv().Main_Card.Name = "Main_Card"
getgenv().Main_Card.Parent = scrollingFrame3
getgenv().Main_Card.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
getgenv().Main_Card.BackgroundTransparency = 0.15
getgenv().Main_Card.BorderSizePixel = 0
getgenv().Main_Card.Position = UDim2.new(0, 15, 0, 10)
getgenv().Main_Card.Size = UDim2.new(0, 365, 0, 305)
getgenv().Discord_Button.Parent = getgenv().Main_Card
getgenv().Settings_Button.Parent = getgenv().Main_Card
getgenv().Checksub_Button.Parent = getgenv().Main_Card
getgenv().FeedBack_Button.Parent = getgenv().Main_Card
getgenv().MainCorner = Instance.new("UICorner")
getgenv().MainCorner.CornerRadius = UDim.new(0, 12)
getgenv().MainCorner.Parent = getgenv().Main_Card
getgenv().MainStroke = Instance.new("UIStroke")
getgenv().MainStroke.Color = Color3.fromRGB(r, g, b)
getgenv().MainStroke.Thickness = 1.5
getgenv().MainStroke.Transparency = 0.2
getgenv().MainStroke.Parent = getgenv().Main_Card
imageLabel2.Name = "Profile_Image"
imageLabel2.Parent = getgenv().Main_Card
imageLabel2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
imageLabel2.BorderSizePixel = 0
imageLabel2.Position = UDim2.new(0, 15, 0, 15)
imageLabel2.Size = UDim2.new(0, 80, 0, 80)
imageLabel2.Image = Players:GetUserThumbnailAsync(localPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
getgenv().ImgCorner = Instance.new("UICorner")
getgenv().ImgCorner.CornerRadius = UDim.new(0, 10)
getgenv().ImgCorner.Parent = imageLabel2
getgenv().Profile_ImageStroke = Instance.new("UIStroke")
getgenv().Profile_ImageStroke.Color = Color3.fromRGB(r, g, b)
getgenv().Profile_ImageStroke.Thickness = 1
getgenv().Profile_ImageStroke.Parent = imageLabel2
getgenv().NameToUse = #localPlayer.Name < #localPlayer.DisplayName and localPlayer.Name or localPlayer.DisplayName
getgenv().NameToUse = getgenv().NameToUse:sub(1, 9):lower()
getgenv().NameToUse = getgenv().NameToUse:sub(1, 1):upper() .. getgenv().NameToUse:sub(2)
getgenv().GreetingContainer = Instance.new("Frame")
getgenv().GreetingContainer.Name = "GreetingContainer"
getgenv().GreetingContainer.Parent = getgenv().Main_Card
getgenv().GreetingContainer.BackgroundTransparency = 1
getgenv().GreetingContainer.Position = UDim2.new(0, 105, 0, 15)
getgenv().GreetingContainer.Size = UDim2.new(0, 245, 0, 20)
getgenv().GreetingList = Instance.new("UIListLayout")
getgenv().GreetingList.Parent = getgenv().GreetingContainer

do
	local horizontal = Enum.FillDirection.Horizontal
	getgenv().GreetingList.FillDirection = horizontal
end

do
	local right = Enum.HorizontalAlignment.Right
	getgenv().GreetingList.HorizontalAlignment = right
end

do
	local layoutOrder = Enum.SortOrder.LayoutOrder
	getgenv().GreetingList.SortOrder = layoutOrder
end

getgenv().GreetingList.Padding = UDim.new(0, 4)
getgenv().UserText = Instance.new("TextLabel")
getgenv().UserText.Parent = getgenv().GreetingContainer
getgenv().UserText.LayoutOrder = 1
getgenv().UserText.BackgroundTransparency = 1
getgenv().UserText.Size = UDim2.new(0, 0, 1, 0)

do
	local x = Enum.AutomaticSize.X
	getgenv().UserText.AutomaticSize = x
end

do
	local gothamBold = Enum.Font.GothamBold
	getgenv().UserText.Font = gothamBold
end

getgenv().UserText.Text = "@" .. getgenv().NameToUse
getgenv().UserText.TextColor3 = Color3.fromRGB(r, g, b)
getgenv().UserText.TextSize = 14
getgenv().ArabicGreeting = Instance.new("TextLabel")
getgenv().ArabicGreeting.Parent = getgenv().GreetingContainer
getgenv().ArabicGreeting.LayoutOrder = 2
getgenv().ArabicGreeting.BackgroundTransparency = 1
getgenv().ArabicGreeting.Size = UDim2.new(0, 0, 1, 0)

do
	local x = Enum.AutomaticSize.X
	getgenv().ArabicGreeting.AutomaticSize = x
end

do
	local gothamBold = Enum.Font.GothamBold
	getgenv().ArabicGreeting.Font = gothamBold
end

getgenv().ArabicGreeting.Text = WhatTime() == "dark" and "مساء النور �?" or "صباح النور �?"
getgenv().ArabicGreeting.TextColor3 = Color3.fromRGB(255, 255, 255)
getgenv().ArabicGreeting.TextSize = 14
getgenv().KeyLabel = Instance.new("TextLabel")
getgenv().KeyLabel.Name = "KeyLabel"
getgenv().KeyLabel.Parent = getgenv().Main_Card
getgenv().KeyLabel.BackgroundTransparency = 1
getgenv().KeyLabel.Position = UDim2.new(0, 105, 0, 38)
getgenv().KeyLabel.Size = UDim2.new(0, 245, 0, 18)

do
	local gothamMedium = Enum.Font.GothamMedium
	getgenv().KeyLabel.Font = gothamMedium
end

getgenv().KeyLabel.Text = "اضغط [B] لاخفاء الواجهة"
getgenv().KeyLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
getgenv().KeyLabel.TextSize = 12

do
	local right = Enum.TextXAlignment.Right
	getgenv().KeyLabel.TextXAlignment = right
end

getgenv().SubBadge = Instance.new("Frame")
getgenv().SubBadge.Name = "SubBadge"
getgenv().SubBadge.Parent = getgenv().Main_Card
getgenv().SubBadge.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().SubBadge.BackgroundTransparency = 0.85
getgenv().SubBadge.Position = UDim2.new(0, 225, 0, 62)
getgenv().SubBadge.Size = UDim2.new(0, 125, 0, 22)
getgenv().BadgeCorner = Instance.new("UICorner")
getgenv().BadgeCorner.CornerRadius = UDim.new(0, 6)
getgenv().BadgeCorner.Parent = getgenv().SubBadge
getgenv().BadgeStroke = Instance.new("UIStroke")
getgenv().BadgeStroke.Color = Color3.fromRGB(r, g, b)
getgenv().BadgeStroke.Thickness = 1
getgenv().BadgeStroke.Transparency = 0.5
getgenv().BadgeStroke.Parent = getgenv().SubBadge
getgenv().SubLabel = Instance.new("TextButton")
getgenv().SubLabel.Name = "SubLabel"
getgenv().SubLabel.Parent = getgenv().SubBadge
getgenv().SubLabel.BackgroundTransparency = 1
getgenv().SubLabel.Size = UDim2.new(1, 0, 1, 0)

do
	local gothamBold = Enum.Font.GothamBold
	getgenv().SubLabel.Font = gothamBold
end

getgenv().SubLabel.Text = "الاشتراك : ~~~"
getgenv().SubLabel.TextColor3 = Color3.fromRGB(r, g, b)
getgenv().SubLabel.TextSize = 11

do
	local center = Enum.TextXAlignment.Center
	getgenv().SubLabel.TextXAlignment = center
end

getgenv().InfoFrame = Instance.new("Frame")
getgenv().InfoFrame.Name = "InfoFrame"
getgenv().InfoFrame.Parent = getgenv().Main_Card
getgenv().InfoFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
getgenv().InfoFrame.BackgroundTransparency = 0.5
getgenv().InfoFrame.Position = UDim2.new(0, 15, 0, 100)
getgenv().InfoFrame.Size = UDim2.new(1, -30, 0, 32)
getgenv().InfoCorner = Instance.new("UICorner")
getgenv().InfoCorner.CornerRadius = UDim.new(0, 6)
getgenv().InfoCorner.Parent = getgenv().InfoFrame
getgenv().InfoLayout = Instance.new("UIListLayout")
getgenv().InfoLayout.Parent = getgenv().InfoFrame

do
	local horizontal = Enum.FillDirection.Horizontal
	getgenv().InfoLayout.FillDirection = horizontal
end

do
	local center = Enum.HorizontalAlignment.Center
	getgenv().InfoLayout.HorizontalAlignment = center
end

do
	local center = Enum.VerticalAlignment.Center
	getgenv().InfoLayout.VerticalAlignment = center
end

getgenv().InfoLayout.Padding = UDim.new(0, 15)
getgenv().PlayersLabel = Instance.new("TextLabel")
getgenv().PlayersLabel.Name = "PlayersLabel"
getgenv().PlayersLabel.BackgroundTransparency = 1
getgenv().PlayersLabel.Size = UDim2.new(0, 100, 1, 0)

do
	local gothamMedium = Enum.Font.GothamMedium
	getgenv().PlayersLabel.Font = gothamMedium
end

getgenv().PlayersLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
getgenv().PlayersLabel.TextSize = 10

do
	local center = Enum.TextXAlignment.Center
	getgenv().PlayersLabel.TextXAlignment = center
end

getgenv().PlayersLabel.Parent = getgenv().InfoFrame
getgenv().IdsCount = 0

for match in string.gmatch(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Hehehe"), "%[%s*\"%d+\"%s*%]") do
	getgenv().IdsCount = getgenv().IdsCount + 1
end

getgenv().InfoSubLabel = Instance.new("TextLabel")
getgenv().InfoSubLabel.Name = "InfoSubLabel"
getgenv().InfoSubLabel.BackgroundTransparency = 1
getgenv().InfoSubLabel.Size = UDim2.new(0, 90, 1, 0)

do
	local gothamMedium = Enum.Font.GothamMedium
	getgenv().InfoSubLabel.Font = gothamMedium
end

getgenv().InfoSubLabel.Text = "المشتركين: " .. getgenv().IdsCount .. utf8.char(128993)
getgenv().InfoSubLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
getgenv().InfoSubLabel.TextSize = 10

do
	local center = Enum.TextXAlignment.Center
	getgenv().InfoSubLabel.TextXAlignment = center
end

getgenv().InfoSubLabel.Parent = getgenv().InfoFrame
getgenv().OnlineLabel = Instance.new("TextLabel")
getgenv().OnlineLabel.Name = "OnlineLabel"
getgenv().OnlineLabel.BackgroundTransparency = 1
getgenv().OnlineLabel.Size = UDim2.new(0, 80, 1, 0)

do
	local gothamMedium = Enum.Font.GothamMedium
	getgenv().OnlineLabel.Font = gothamMedium
end

getgenv().OnlineLabel.Text = "المستخدمين: ~~~"
getgenv().OnlineLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
getgenv().OnlineLabel.TextSize = 10

do
	local center = Enum.TextXAlignment.Center
	getgenv().OnlineLabel.TextXAlignment = center
end

getgenv().OnlineLabel.Parent = getgenv().InfoFrame

getgenv().UpdatePlayerCount = function()
	getgenv().PlayersLabel.Text = "اللاعبين: " .. #game.Players:GetPlayers() .. "/" .. game.Players.MaxPlayers
end

getgenv().UpdatePlayerCount()
game.Players.PlayerAdded:Connect(getgenv().UpdatePlayerCount)
game.Players.PlayerRemoving:Connect(getgenv().UpdatePlayerCount)
getgenv().Separator = Instance.new("Frame")
getgenv().Separator.Name = "Separator"
getgenv().Separator.Parent = getgenv().Main_Card
getgenv().Separator.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().Separator.BackgroundTransparency = 0.7
getgenv().Separator.BorderSizePixel = 0
getgenv().Separator.Position = UDim2.new(0, 15, 0, 140)
getgenv().Separator.Size = UDim2.new(1, -30, 0, 1)
getgenv().Title1 = Instance.new("TextLabel")
getgenv().Title1.Name = "Title1"
getgenv().Title1.Parent = getgenv().Main_Card
getgenv().Title1.Size = UDim2.new(1, -30, 0, 20)
getgenv().Title1.Position = UDim2.new(0, 15, 0, 147)
getgenv().Title1.BackgroundTransparency = 1
getgenv().Title1.Text = "مطورين السكربت"
getgenv().Title1.TextColor3 = Color3.fromRGB(r, g, b)

do
	local gothamBold = Enum.Font.GothamBold
	getgenv().Title1.Font = gothamBold
end

getgenv().Title1.TextSize = 14

do
	local right = Enum.TextXAlignment.Right
	getgenv().Title1.TextXAlignment = right
end

getgenv().DevsFrame = Instance.new("Frame")
getgenv().DevsFrame.Parent = getgenv().Main_Card
getgenv().DevsFrame.Size = UDim2.new(1, -30, 0, 105)
getgenv().DevsFrame.Position = UDim2.new(0, 15, 0, 170)
getgenv().DevsFrame.BackgroundTransparency = 1
getgenv().Grid = Instance.new("UIGridLayout")
getgenv().Grid.Parent = getgenv().DevsFrame
getgenv().Grid.CellSize = UDim2.new(0, 75, 0, 75)
getgenv().Grid.CellPadding = UDim2.new(0, 25, 0, 0)

do
	local center = Enum.HorizontalAlignment.Center
	getgenv().Grid.HorizontalAlignment = center
end

do
	local center = Enum.VerticalAlignment.Center
	getgenv().Grid.VerticalAlignment = center
end

getgenv().RightsLabel = Instance.new("TextLabel")
getgenv().RightsLabel.Parent = getgenv().Main_Card
getgenv().RightsLabel.Size = UDim2.new(0.5, -15, 0, 15)
getgenv().RightsLabel.Position = UDim2.new(0, 15, 1, -18)
getgenv().RightsLabel.BackgroundTransparency = 1
getgenv().RightsLabel.Text = "© All rights reserved VR7"
getgenv().RightsLabel.TextSize = 9

do
	local gotham = Enum.Font.Gotham
	getgenv().RightsLabel.Font = gotham
end

getgenv().RightsLabel.TextColor3 = Color3.fromRGB(130, 130, 130)

do
	local left = Enum.TextXAlignment.Left
	getgenv().RightsLabel.TextXAlignment = left
end

getgenv().VersionLabel = Instance.new("TextLabel")
getgenv().VersionLabel.Parent = getgenv().Main_Card
getgenv().VersionLabel.Size = UDim2.new(0.5, -15, 0, 15)
getgenv().VersionLabel.Position = UDim2.new(0.5, 0, 1, -18)
getgenv().VersionLabel.BackgroundTransparency = 1
getgenv().VersionLabel.Text = tostring("v" .. ver)
getgenv().VersionLabel.TextSize = 9

do
	local gotham = Enum.Font.Gotham
	getgenv().VersionLabel.Font = gotham
end

getgenv().VersionLabel.TextColor3 = Color3.fromRGB(130, 130, 130)

do
	local right = Enum.TextXAlignment.Right
	getgenv().VersionLabel.TextXAlignment = right
end

getgenv().AddDeveloper = function(text, param27, text9, text2, param28)
	getgenv().ImageId = "rbxassetid://" .. tostring(param27)
	getgenv().Holder = Instance.new("Frame")
	getgenv().Holder.Name = text .. "_Holder"
	getgenv().Holder.BackgroundTransparency = 1
	getgenv().Holder.Parent = getgenv().DevsFrame
	getgenv().NameLabel = Instance.new("TextLabel")
	getgenv().NameLabel.Parent = getgenv().Holder
	getgenv().NameLabel.Size = UDim2.new(1, 0, 0, 14)
	getgenv().NameLabel.Position = UDim2.new(0, 0, 0, -14)
	getgenv().NameLabel.BackgroundTransparency = 1
	getgenv().NameLabel.Text = text
	getgenv().NameLabel.TextSize = 11
	local gothamBold = Enum.Font.GothamBold
	getgenv().NameLabel.Font = gothamBold
	getgenv().NameLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
	getgenv().Img = Instance.new("ImageLabel")
	getgenv().Img.Name = "Developer"
	getgenv().Img.Parent = getgenv().Holder
	getgenv().Img.Size = UDim2.new(0.75, 0, 0.75, 0)
	getgenv().Img.BackgroundTransparency = 1
	local crop = Enum.ScaleType.Crop
	getgenv().Img.ScaleType = crop
	getgenv().Img.Position = UDim2.new(0.5, 0, 0.45, 0)
	getgenv().Img.AnchorPoint = Vector2.new(0.5, 0.5)
	getgenv().Img.Image = getgenv().ImageId
	getgenv().DevImgCorner = Instance.new("UICorner")
	getgenv().DevImgCorner.CornerRadius = UDim.new(1, 0)
	getgenv().DevImgCorner.Parent = getgenv().Img
	getgenv().DevStroke = Instance.new("UIStroke")
	getgenv().DevStroke.Transparency = 0.2
	getgenv().DevStroke.Color = Color3.fromRGB(r, g, b)
	getgenv().DevStroke.Parent = getgenv().Img
	getgenv().DiscordLabel = Instance.new("TextButton")
	getgenv().DiscordLabel.Parent = getgenv().Holder
	getgenv().DiscordLabel.Size = UDim2.new(1, 0, 0, 12)
	getgenv().DiscordLabel.Position = UDim2.new(0, 0, 1, -8)
	getgenv().DiscordLabel.BackgroundTransparency = 1
	getgenv().DiscordLabel.Text = "@" .. text9
	getgenv().DiscordLabel.TextSize = 10
	local gothamMedium = Enum.Font.GothamMedium
	getgenv().DiscordLabel.Font = gothamMedium
	getgenv().DiscordLabel.TextColor3 = Color3.fromRGB(114, 137, 218)
	getgenv().DiscordLabel.AutoButtonColor = false

	if text2 then
		getgenv().RoleLabel = Instance.new("TextLabel")
		getgenv().RoleLabel.Parent = getgenv().Holder
		getgenv().RoleLabel.Size = UDim2.new(1, 0, 0, 12)
		getgenv().RoleLabel.Position = UDim2.new(0, 0, 1, 4)
		getgenv().RoleLabel.BackgroundTransparency = 1
		getgenv().RoleLabel.Text = text2
		getgenv().RoleLabel.TextSize = 9
		local gotham = Enum.Font.Gotham
		getgenv().RoleLabel.Font = gotham
		getgenv().RoleLabel.TextColor3 = Color3.fromRGB(170, 170, 170)
		local center = Enum.TextXAlignment.Center
		getgenv().RoleLabel.TextXAlignment = center
	end

	if param28 then
		getgenv().DiscordLabel.MouseButton1Click:Connect(function()
			setclipboard(text9)
			SendNotify("System VR7", "تم نسخ يوزر دسكورد المطور", 2)
		end)
	end
end

getgenv().AddDeveloper("Al-Haji 🇸🇦", 113070532722834, "_dryfd", "مساعد السكربتر", true)
getgenv().AddDeveloper("Hussein 🇮🇶", 136740029957424, "7suin", "مطور السكربت", true)
getgenv().AddDeveloper("VR7 🇰🇼", 127687973967253, "i.vr7", "اونر السيرفر", true)
task.wait(0.1)

spawn(function()
	getgenv().NewsAnnounce = getgenv().Main_Card:Clone()
	getgenv().NewsAnnounce.Parent = scrollingFrame10

	for _, child in ipairs(getgenv().NewsAnnounce:GetChildren()) do
		if not child:IsA("UIStroke") and not child:IsA("UICorner") then
			child:Destroy()
		end
	end

	getgenv().NewsAnnounce.Name = "What's New"
	getgenv().NewsAnnounce.Size = UDim2.new(0, 350, 0, 220)
	getgenv().NewsAnnounce.Position = UDim2.new(0, 25, 0, 10)
	local newsAnnounce = getgenv().NewsAnnounce

	if not newsAnnounce:IsA("ScrollingFrame") then
		local scrollingFrame11 = Instance.new("ScrollingFrame")
		scrollingFrame11.Name = "NewsScroll"
		scrollingFrame11.Size = newsAnnounce.Size
		scrollingFrame11.Position = UDim2.new(0, 0, 0, 0)
		scrollingFrame11.BackgroundTransparency = 1
		scrollingFrame11.ScrollBarThickness = 0
		scrollingFrame11.Parent = newsAnnounce

		for _, child in ipairs(newsAnnounce:GetChildren()) do
			if child ~= scrollingFrame11 then
				child.Parent = scrollingFrame11
			end
		end

		newsAnnounce = scrollingFrame11
	end

	AddNewsLabel = function(param29, param30, flag19)
		local str8 = flag19 or "[=]"

		local color = ({
			["[+]"] = Color3.fromRGB(102, 255, 178),
			["[-]"] = Color3.fromRGB(255, 153, 153),
			["[=]"] = Color3.fromRGB(255, 255, 153),
		})[str8] or Color3.fromRGB(200, 200, 200)

		local textLabel5 = Instance.new("TextLabel")
		textLabel5.BackgroundTransparency = 1
		textLabel5.Size = UDim2.new(1, -10, 0, 30)
		textLabel5.Font = Enum.Font.SourceSans
		textLabel5.TextSize = 18
		textLabel5.TextXAlignment = Enum.TextXAlignment.Right
		textLabel5.TextDirection = Enum.TextDirection.RightToLeft
		textLabel5.RichText = true
		textLabel5.Text = string.format("<font color=\"#%02x%02x%02x\">%s</font> <font color=\"#%02x%02x%02x\">%s</font>", math.floor(param30.R * 255), math.floor(param30.G * 255), math.floor(param30.B * 255), param29, math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255), str8)
		textLabel5.Parent = newsAnnounce
		return textLabel5
	end

	if not newsAnnounce:FindFirstChildOfClass("UIListLayout") then
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, -3)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = newsAnnounce
	end

	local function func30()
		local uiListLayout = newsAnnounce:FindFirstChildOfClass("UIListLayout")

		if uiListLayout then
			newsAnnounce.CanvasSize = UDim2.new(0, 0, 0, uiListLayout.AbsoluteContentSize.Y + 23)
		end
	end

	newsAnnounce.ChildAdded:Connect(func30)
	newsAnnounce.ChildRemoved:Connect(func30)
	AddNewsLabel("VR7 ON TOP " .. utf8.char(9876, 65039), Color3.fromRGB(180, 20, 20), "[+]")
	AddNewsLabel("تم تحديث النسخة " .. "v" .. ver, Color3.fromRGB(150, 150, 150), "[+]")
	AddNewsLabel("بيع الاشتراك مفتوح وترقية اشتراك دايموند للبريميوم متوفرة", Color3.fromRGB(180, 20, 20), "[=]")
	AddNewsLabel("هذا التحديث لتصحيح بعض المشاكل", Color3.fromRGB(150, 150, 150), "[=]")
	AddNewsLabel("رجاءا اذا فيه مشكله ارسل لي بل بسيرفر دسكورد", Color3.fromRGB(150, 150, 150), "[=]")
	AddNewsLabel("حماية السكربت صارت اقوى", Color3.fromRGB(150, 150, 150), "[=]")
	AddNewsLabel("تاريخ اخر تحديث: 2026/9/27", Color3.fromRGB(150, 150, 150), "[=]")
end)

scrollingFrame4.Name = "Character_Section"
scrollingFrame4.Parent = imageLabel
scrollingFrame4.Active = true
scrollingFrame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame4.BackgroundTransparency = 1
scrollingFrame4.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame4.BorderSizePixel = 0
scrollingFrame4.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame4.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame4.Visible = false
scrollingFrame4.CanvasSize = UDim2.new(0, 0, 1.2, 0)
scrollingFrame4.ScrollBarThickness = 5
textButton13.Name = "WalkSpeed_Button"
textButton13.Parent = scrollingFrame4
textButton13.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton13.BackgroundTransparency = 0.5
textButton13.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton13.BorderSizePixel = 0
textButton13.Position = UDim2.new(0, 25, 0, 25)
textButton13.Size = UDim2.new(0, 150, 0, 30)
textButton13.Font = Enum.Font.Oswald
textButton13.Text = "Ws |السرعه"
textButton13.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton13.TextScaled = true
textButton13.TextSize = 14
textButton13.TextWrapped = true
textBox4.Name = "WalkSpeed_Input"
textBox4.Parent = scrollingFrame4
textBox4.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
textBox4.BackgroundTransparency = 0.3
textBox4.BorderColor3 = Color3.fromRGB(r, g, b)
textBox4.Position = UDim2.new(0, 210, 0, 25)
textBox4.Size = UDim2.new(0, 175, 0, 30)
textBox4.Font = Enum.Font.Gotham
textBox4.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)

if game.PlaceId == 11379739543 then
	textBox4.PlaceholderText = "Number [1-10]"
else
	textBox4.PlaceholderText = "Number [1-99999]"
end

textBox4.Text = ""
textBox4.TextColor3 = Color3.fromRGB(20, 20, 20)
textBox4.TextSize = 14
textBox4.TextWrapped = true
textButton14.Name = "ClearCheckpoint_Button"
textButton14.Parent = scrollingFrame4
textButton14.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton14.BackgroundTransparency = 0.5
textButton14.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton14.BorderSizePixel = 0
textButton14.Position = UDim2.new(0, 210, 0, 275)
textButton14.Size = UDim2.new(0, 150, 0, 30)
textButton14.Font = Enum.Font.Oswald
textButton14.Text = "ازاله الشيك بوينت"
textButton14.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton14.TextScaled = true
textButton14.TextSize = 14
textButton14.TextWrapped = true
textBox5.Name = "JumpPower_Input"
textBox5.Parent = scrollingFrame4
textBox5.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
textBox5.BackgroundTransparency = 0.3
textBox5.BorderColor3 = Color3.fromRGB(r, g, b)
textBox5.Position = UDim2.new(0, 210, 0, 75)
textBox5.Size = UDim2.new(0, 175, 0, 30)
textBox5.Font = Enum.Font.Gotham
textBox5.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
textBox5.PlaceholderText = "Number [1-99999]"
textBox5.Text = ""
textBox5.TextColor3 = Color3.fromRGB(20, 20, 20)
textBox5.TextSize = 14
textBox5.TextWrapped = true
getgenv().BangSpeed_Input.Name = "BangSpeed_Input"
getgenv().BangSpeed_Input.Parent = getgenv().Settings_Button_Section
getgenv().BangSpeed_Input.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
getgenv().BangSpeed_Input.BackgroundTransparency = 0.3
getgenv().BangSpeed_Input.BorderColor3 = Color3.fromRGB(r, g, b)
getgenv().BangSpeed_Input.Position = UDim2.new(0, 210, 0, 75)
getgenv().BangSpeed_Input.Size = UDim2.new(0, 150, 0, 30)

do
	local gotham = Enum.Font.Gotham
	getgenv().BangSpeed_Input.Font = gotham
end

getgenv().BangSpeed_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BangSpeed_Input.PlaceholderText = "سرعة البانق [1-999]"
getgenv().BangSpeed_Input.Text = "2"
getgenv().BangSpeed_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
getgenv().BangSpeed_Input.TextSize = 14
getgenv().BangSpeed_Input.TextWrapped = true
getgenv().SuckingSpeed_Input.Name = "SuckingSpeed_Input"
getgenv().SuckingSpeed_Input.Parent = getgenv().Settings_Button_Section
getgenv().SuckingSpeed_Input.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
getgenv().SuckingSpeed_Input.BackgroundTransparency = 0.3
getgenv().SuckingSpeed_Input.BorderColor3 = Color3.fromRGB(r, g, b)
getgenv().SuckingSpeed_Input.Position = UDim2.new(0, 210, 0, 125)
getgenv().SuckingSpeed_Input.Size = UDim2.new(0, 150, 0, 30)

do
	local gotham = Enum.Font.Gotham
	getgenv().SuckingSpeed_Input.Font = gotham
end

getgenv().SuckingSpeed_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SuckingSpeed_Input.PlaceholderText = "سرعة المص [1-999]"
getgenv().SuckingSpeed_Input.Text = "2"
getgenv().SuckingSpeed_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
getgenv().SuckingSpeed_Input.TextSize = 14
getgenv().SuckingSpeed_Input.TextWrapped = true
getgenv().AdminCmdSpeed_Input.Name = "AdminCmdSpeed_Input"
getgenv().AdminCmdSpeed_Input.Parent = getgenv().Settings_Button_Section
getgenv().AdminCmdSpeed_Input.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
getgenv().AdminCmdSpeed_Input.BackgroundTransparency = 0.3
getgenv().AdminCmdSpeed_Input.BorderColor3 = Color3.fromRGB(r, g, b)
getgenv().AdminCmdSpeed_Input.Position = UDim2.new(0, 210, 0, 175)
getgenv().AdminCmdSpeed_Input.Size = UDim2.new(0, 150, 0, 30)

do
	local gotham = Enum.Font.Gotham
	getgenv().AdminCmdSpeed_Input.Font = gotham
end

getgenv().AdminCmdSpeed_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().AdminCmdSpeed_Input.PlaceholderText = "سرعة المص [1-999]"
getgenv().AdminCmdSpeed_Input.Text = "5"
getgenv().AdminCmdSpeed_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
getgenv().AdminCmdSpeed_Input.TextSize = 14
getgenv().AdminCmdSpeed_Input.TextWrapped = true
textButton15.Name = "JumpPower_Button"
textButton15.Parent = scrollingFrame4
textButton15.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton15.BackgroundTransparency = 0.5
textButton15.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton15.BorderSizePixel = 0
textButton15.Position = UDim2.new(0, 25, 0, 75)
textButton15.Size = UDim2.new(0, 150, 0, 30)
textButton15.Font = Enum.Font.Oswald
textButton15.Text = "النط | Jump"
textButton15.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton15.TextScaled = true
textButton15.TextSize = 14
textButton15.TextWrapped = true
textButton16.Name = "SaveCheckpoint_Button"
textButton16.Parent = scrollingFrame4
textButton16.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton16.BackgroundTransparency = 0.5
textButton16.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton16.BorderSizePixel = 0
textButton16.Position = UDim2.new(0, 210, 0, 175)
textButton16.Size = UDim2.new(0, 150, 0, 30)
textButton16.Font = Enum.Font.Oswald
textButton16.Text = "حفظ الشيك بوينت"
textButton16.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton16.TextScaled = true
textButton16.TextSize = 14
textButton16.TextWrapped = true
getgenv().ToCheckpoint_Button.Name = "ToCheckpoint_Button"
getgenv().ToCheckpoint_Button.Parent = scrollingFrame4
getgenv().ToCheckpoint_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().ToCheckpoint_Button.BackgroundTransparency = 0.5
getgenv().ToCheckpoint_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().ToCheckpoint_Button.BorderSizePixel = 0
getgenv().ToCheckpoint_Button.Position = UDim2.new(0, 210, 0, 225)
getgenv().ToCheckpoint_Button.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().ToCheckpoint_Button.Font = oswald
end

getgenv().ToCheckpoint_Button.Text = "انتقال للشيك بوينت"
getgenv().ToCheckpoint_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().ToCheckpoint_Button.TextScaled = true
getgenv().ToCheckpoint_Button.TextSize = 14
getgenv().ToCheckpoint_Button.TextWrapped = true
textButton17.Name = "Noclip_Button"
textButton17.Parent = scrollingFrame4
textButton17.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton17.BackgroundTransparency = 0.5
textButton17.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton17.BorderSizePixel = 0
textButton17.Position = UDim2.new(0, 25, 0, 225)
textButton17.Size = UDim2.new(0, 150, 0, 30)
textButton17.Font = Enum.Font.Oswald
textButton17.Text = "اختراق جدران"
textButton17.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton17.TextScaled = true
textButton17.TextSize = 14
textButton17.TextWrapped = true
textButton18.Name = "Invisible_Button"
textButton18.Parent = scrollingFrame4
textButton18.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton18.BackgroundTransparency = 0.5
textButton18.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton18.BorderSizePixel = 0
textButton18.Position = UDim2.new(0, 25, 0, 275)
textButton18.Size = UDim2.new(0, 150, 0, 30)
textButton18.Font = Enum.Font.Oswald
textButton18.Text = "اختفاء"
textButton18.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton18.TextScaled = true
textButton18.TextSize = 14
textButton18.TextWrapped = true
getgenv().InfJump_Button.Name = "InfJump_Button"
getgenv().InfJump_Button.Parent = scrollingFrame4
getgenv().InfJump_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().InfJump_Button.BackgroundTransparency = 0.5
getgenv().InfJump_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().InfJump_Button.BorderSizePixel = 0
getgenv().InfJump_Button.Position = UDim2.new(0, 25, 0, 325)
getgenv().InfJump_Button.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().InfJump_Button.Font = oswald
end

getgenv().InfJump_Button.Text = "قفز لانهائي"
getgenv().InfJump_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().InfJump_Button.TextScaled = true
getgenv().InfJump_Button.TextSize = 14
getgenv().InfJump_Button.TextWrapped = true
textButton20.Name = "ShiftLock_Button"
textButton20.Parent = scrollingFrame4
textButton20.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton20.BackgroundTransparency = 0.5
textButton20.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton20.BorderSizePixel = 0
textButton20.Position = UDim2.new(0, 25, 0, 375)
textButton20.Size = UDim2.new(0, 150, 0, 30)
textButton20.Font = Enum.Font.Oswald
textButton20.Text = "قفل الكاميرا"
textButton20.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton20.TextScaled = true
textButton20.TextSize = 14
textButton20.TextWrapped = true
textButton19.Name = "Respawn_Button"
textButton19.Parent = scrollingFrame4
textButton19.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton19.BackgroundTransparency = 0.5
textButton19.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton19.BorderSizePixel = 0
textButton19.Position = UDim2.new(0, 210, 0, 375)
textButton19.Size = UDim2.new(0, 150, 0, 30)
textButton19.Font = Enum.Font.Oswald
textButton19.Text = "ريسبون"
textButton19.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton19.TextScaled = true
textButton19.TextSize = 14
textButton19.TextWrapped = true
textButton21.Name = "TeleportTool_Button"
textButton21.Parent = scrollingFrame4
textButton21.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton21.BackgroundTransparency = 0.5
textButton21.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton21.BorderSizePixel = 0
textButton21.Position = UDim2.new(0, 210, 0, 325)
textButton21.Size = UDim2.new(0, 150, 0, 30)
textButton21.Font = Enum.Font.Oswald
textButton21.Text = "اداة الانتقال"
textButton21.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton21.TextScaled = true
textButton21.TextSize = 14
textButton21.TextWrapped = true
textButton22.Name = "FlySpeed_Button"
textButton22.Parent = scrollingFrame4
textButton22.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton22.BackgroundTransparency = 0.5
textButton22.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton22.BorderSizePixel = 0
textButton22.Position = UDim2.new(0, 25, 0, 125)
textButton22.Size = UDim2.new(0, 150, 0, 30)
textButton22.Font = Enum.Font.Oswald
textButton22.Text = "سرعه الطيران"
textButton22.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton22.TextScaled = true
textButton22.TextSize = 14
textButton22.TextWrapped = true
textBox6.Name = "FlySpeed_Input"
textBox6.Parent = scrollingFrame4
textBox6.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
textBox6.BackgroundTransparency = 0.3
textBox6.BorderColor3 = Color3.fromRGB(r, g, b)
textBox6.Position = UDim2.new(0, 210, 0, 125)
textBox6.Size = UDim2.new(0, 175, 0, 30)
textBox6.Font = Enum.Font.Gotham
textBox6.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
textBox6.PlaceholderText = "Number [1-99999]"
textBox6.Text = ""
textBox6.TextColor3 = Color3.fromRGB(20, 20, 20)
textBox6.TextSize = 14
textBox6.TextWrapped = true
textButton23.Name = "Fly_Button"
textButton23.Parent = scrollingFrame4
textButton23.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton23.BackgroundTransparency = 0.5
textButton23.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton23.BorderSizePixel = 0
textButton23.Position = UDim2.new(0, 25, 0, 175)
textButton23.Size = UDim2.new(0, 150, 0, 30)
textButton23.Font = Enum.Font.Oswald
textButton23.Text = "سكربت طيران"
textButton23.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton23.TextScaled = true
textButton23.TextSize = 14
textButton23.TextWrapped = true
scrollingFrame5.Name = "Target_Section"
scrollingFrame5.Parent = imageLabel
scrollingFrame5.Active = true
scrollingFrame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame5.BackgroundTransparency = 1
scrollingFrame5.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame5.BorderSizePixel = 0
scrollingFrame5.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame5.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame5.Visible = false
scrollingFrame5.CanvasSize = UDim2.new(0, 0, 1.6, 0)
scrollingFrame5.ScrollBarThickness = 5
imageLabel3.Name = "TargetImage"
imageLabel3.Parent = scrollingFrame5
imageLabel3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
imageLabel3.BorderColor3 = Color3.fromRGB(r, g, b)
imageLabel3.Position = UDim2.new(0, 25, 0, 25)
imageLabel3.Size = UDim2.new(0, 100, 0, 100)
imageLabel3.Image = "rbxassetid://10818605405"
textBox7.Name = "TargetName_Input"
textBox7.Parent = scrollingFrame5
textBox7.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
textBox7.BackgroundTransparency = 0.3
textBox7.BorderColor3 = Color3.fromRGB(r, g, b)
textBox7.Position = UDim2.new(0, 170, 0, 30)
textBox7.Size = UDim2.new(0, 175, 0, 30)
textBox7.Font = Enum.Font.Gotham
textBox7.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
textBox7.PlaceholderText = "@target..."
textBox7.Text = ""
textBox7.TextColor3 = Color3.fromRGB(20, 20, 20)
textBox7.TextSize = 14
textBox7.TextWrapped = true
imageButton.Name = "ClickTargetTool_Button"
imageButton.Parent = textBox7
imageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imageButton.BackgroundTransparency = 1
imageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
imageButton.BorderSizePixel = 0
imageButton.Position = UDim2.new(0, 180, 0, 0)
imageButton.Size = UDim2.new(0, 30, 0, 30)
imageButton.Image = "rbxassetid://13769558274"
textLabel4.Name = "UserIDTargetLabel"
textLabel4.Parent = scrollingFrame5
textLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel4.BackgroundTransparency = 1
textLabel4.BorderColor3 = Color3.fromRGB(0, 0, 0)
textLabel4.BorderSizePixel = 0
textLabel4.Position = UDim2.new(0, 135, 0, 70)
textLabel4.Size = UDim2.new(0, 300, 0, 75)
textLabel4.Font = Enum.Font.Oswald
textLabel4.Text = "UserID: \nDisplay: \nJoined: "
textLabel4.TextColor3 = Color3.fromRGB(r, g, b)
textLabel4.TextSize = 18
textLabel4.TextWrapped = true
textLabel4.TextXAlignment = Enum.TextXAlignment.Left
textLabel4.TextYAlignment = Enum.TextYAlignment.Top
textButton25.Name = "FuckYourSelf_Button"
textButton25.Parent = scrollingFrame5
textButton25.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton25.BackgroundTransparency = 0.5
textButton25.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton25.BorderSizePixel = 0
textButton25.Position = UDim2.new(0, 25, 0, 200)
textButton25.Size = UDim2.new(0, 150, 0, 30)
textButton25.Font = Enum.Font.Oswald
textButton25.Text = "بانق عكسي"
textButton25.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton25.TextScaled = true
textButton25.TextSize = 14
textButton25.TextWrapped = true
textButton24.Name = "ViewTarget_Button"
textButton24.Parent = scrollingFrame5
textButton24.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton24.BackgroundTransparency = 0.5
textButton24.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton24.BorderSizePixel = 0
textButton24.Position = UDim2.new(0, 210, 0, 150)
textButton24.Size = UDim2.new(0, 150, 0, 30)
textButton24.Font = Enum.Font.Oswald
textButton24.Text = "مشاهدة"
textButton24.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton24.TextScaled = true
textButton24.TextSize = 14
textButton24.TextWrapped = true
textButton26.Name = "FlingTarget_Button"
textButton26.Parent = scrollingFrame5
textButton26.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton26.BackgroundTransparency = 0.5
textButton26.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton26.BorderSizePixel = 0
textButton26.Position = UDim2.new(0, 25, 0, 150)
textButton26.Size = UDim2.new(0, 150, 0, 30)
textButton26.Font = Enum.Font.Oswald
textButton26.Text = "فلنق"
textButton26.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton26.TextScaled = true
textButton26.TextSize = 14
textButton26.TextWrapped = true
textButton27.Name = "FocusTarget_Button"
textButton27.Parent = scrollingFrame5
textButton27.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton27.BackgroundTransparency = 0.5
textButton27.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton27.BorderSizePixel = 0
textButton27.Position = UDim2.new(0, 210, 0, 400)
textButton27.Size = UDim2.new(0, 150, 0, 30)
textButton27.Font = Enum.Font.Oswald
textButton27.Text = "سماع"
textButton27.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton27.TextScaled = true
textButton27.TextSize = 14
textButton27.TextWrapped = true
textButton28.Name = "BenxTarget_Button"
textButton28.Parent = scrollingFrame5
textButton28.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton28.BackgroundTransparency = 0.5
textButton28.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton28.BorderSizePixel = 0
textButton28.Position = UDim2.new(0, 25, 0, 250)
textButton28.Size = UDim2.new(0, 150, 0, 30)
textButton28.Font = Enum.Font.Oswald
textButton28.Text = "بانق V1"
textButton28.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton28.TextScaled = true
textButton28.TextSize = 14
textButton28.TextWrapped = true
getgenv().BenxTargetV2_Button.Name = "BenxTargetV2_Button"
getgenv().BenxTargetV2_Button.Parent = scrollingFrame5
getgenv().BenxTargetV2_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().BenxTargetV2_Button.BackgroundTransparency = 0.5
getgenv().BenxTargetV2_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BenxTargetV2_Button.BorderSizePixel = 0
getgenv().BenxTargetV2_Button.Position = UDim2.new(0, 210, 0, 250)
getgenv().BenxTargetV2_Button.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().BenxTargetV2_Button.Font = oswald
end

getgenv().BenxTargetV2_Button.Text = "بانق V2"
getgenv().BenxTargetV2_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BenxTargetV2_Button.TextScaled = true
getgenv().BenxTargetV2_Button.TextSize = 14
getgenv().BenxTargetV2_Button.TextWrapped = true
textButton30.Name = "TeleportTarget_Button"
textButton30.Parent = scrollingFrame5
textButton30.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton30.BackgroundTransparency = 0.5
textButton30.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton30.BorderSizePixel = 0
textButton30.Position = UDim2.new(0, 210, 0, 450)
textButton30.Size = UDim2.new(0, 150, 0, 30)
textButton30.Font = Enum.Font.Oswald
textButton30.Text = "تنقل"
textButton30.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton30.TextScaled = true
textButton30.TextSize = 14
textButton30.TextWrapped = true
textButton29.Name = "RepeatTalk_Button"
textButton29.Parent = scrollingFrame5
textButton29.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton29.BackgroundTransparency = 0.5
textButton29.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton29.BorderSizePixel = 0
textButton29.Position = UDim2.new(0, 25, 0, 450)
textButton29.Size = UDim2.new(0, 150, 0, 30)
textButton29.Font = Enum.Font.Oswald
textButton29.Text = "تقليد الكلام"
textButton29.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton29.TextScaled = true
textButton29.TextSize = 14
textButton29.TextWrapped = true
textButton31.Name = "HeadsitTarget_Button"
textButton31.Parent = scrollingFrame5
textButton31.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton31.BackgroundTransparency = 0.5
textButton31.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton31.BorderSizePixel = 0
textButton31.Position = UDim2.new(0, 25, 0, 350)
textButton31.Size = UDim2.new(0, 150, 0, 30)
textButton31.Font = Enum.Font.Oswald
textButton31.Text = "جلوس في راسه"
textButton31.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton31.TextScaled = true
textButton31.TextSize = 14
textButton31.TextWrapped = true
getgenv().AssSlapTarget_Button.Name = "AssSlapTarget_Button"
getgenv().AssSlapTarget_Button.Parent = scrollingFrame5
getgenv().AssSlapTarget_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().AssSlapTarget_Button.BackgroundTransparency = 0.5
getgenv().AssSlapTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().AssSlapTarget_Button.BorderSizePixel = 0
getgenv().AssSlapTarget_Button.Position = UDim2.new(0, 25, 0, 300)
getgenv().AssSlapTarget_Button.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().AssSlapTarget_Button.Font = oswald
end

getgenv().AssSlapTarget_Button.Text = "ضرب مؤخرة"
getgenv().AssSlapTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().AssSlapTarget_Button.TextScaled = true
getgenv().AssSlapTarget_Button.TextSize = 14
getgenv().AssSlapTarget_Button.TextWrapped = true
textButton32.Name = "HeadFuck_Button"
textButton32.Parent = scrollingFrame5
textButton32.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton32.BackgroundTransparency = 0.5
textButton32.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton32.BorderSizePixel = 0
textButton32.Position = UDim2.new(0, 210, 0, 300)
textButton32.Size = UDim2.new(0, 150, 0, 30)
textButton32.Font = Enum.Font.Oswald
textButton32.Text = "يمص"
textButton32.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton32.TextScaled = true
textButton32.TextSize = 14
textButton32.TextWrapped = true
textButton33.Name = "BackpackTarget_Button"
textButton33.Parent = scrollingFrame5
textButton33.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton33.BackgroundTransparency = 0.5
textButton33.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton33.BorderSizePixel = 0
textButton33.Position = UDim2.new(0, 25, 0, 400)
textButton33.Size = UDim2.new(0, 150, 0, 30)
textButton33.Font = Enum.Font.Oswald
textButton33.Text = "حقيبة ظهر"
textButton33.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton33.TextScaled = true
textButton33.TextSize = 14
textButton33.TextWrapped = true
getgenv().SuckingIt_Button.Name = "SuckingIt_Button"
getgenv().SuckingIt_Button.Parent = scrollingFrame5
getgenv().SuckingIt_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().SuckingIt_Button.BackgroundTransparency = 0.5
getgenv().SuckingIt_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SuckingIt_Button.BorderSizePixel = 0
getgenv().SuckingIt_Button.Position = UDim2.new(0, 210, 0, 350)
getgenv().SuckingIt_Button.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().SuckingIt_Button.Font = oswald
end

getgenv().SuckingIt_Button.Text = "تمص"
getgenv().SuckingIt_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SuckingIt_Button.TextScaled = true
getgenv().SuckingIt_Button.TextSize = 14
getgenv().SuckingIt_Button.TextWrapped = true
textButton34.Name = "JerkOnTarget_Button"
textButton34.Parent = scrollingFrame5
textButton34.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton34.BackgroundTransparency = 0.5
textButton34.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton34.BorderSizePixel = 0
textButton34.Position = UDim2.new(0, 210, 0, 200)
textButton34.Size = UDim2.new(0, 150, 0, 30)
textButton34.Font = Enum.Font.Oswald
textButton34.Text = "سوها عليه"
textButton34.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton34.TextScaled = true
textButton34.TextSize = 14
textButton34.TextWrapped = true
scrollingFrame6.Name = "Moving_Section"
scrollingFrame6.Parent = imageLabel
scrollingFrame6.Active = true
scrollingFrame6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame6.BackgroundTransparency = 1
scrollingFrame6.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame6.BorderSizePixel = 0
scrollingFrame6.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame6.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame6.Visible = false
scrollingFrame6.CanvasSize = UDim2.new(0, 0, 5, 0)
scrollingFrame6.ScrollBarThickness = 5

CreateButton = function(name2, text, parent, flag20)
	local textButton53 = Instance.new("TextButton")
	textButton53.BackgroundColor3 = Color3.fromRGB(r, g, b)
	textButton53.TextColor3 = Color3.fromRGB(0, 0, 0)
	textButton53.Font = Enum.Font.Oswald
	textButton53.Size = UDim2.new(0, 150, 0, 30)
	textButton53.BackgroundTransparency = 0.5
	textButton53.BorderSizePixel = 0
	textButton53.TextScaled = true
	textButton53.TextWrapped = true
	textButton53.Name = name2
	textButton53.Text = text
	textButton53.Parent = parent
	getgenv()[name2] = textButton53

	if flag20 == nil then
		CreateClicker(textButton53)
	elseif flag20 == true then
		CreateToggle(textButton53)
	end

	return textButton53
end

getgenv().UIGridLayout1 = Instance.new("UIGridLayout")
getgenv().UIGridLayout1.Parent = scrollingFrame6
getgenv().UIGridLayout1.CellPadding = UDim2.new(0, 40, 0, 20)
getgenv().UIGridLayout1.CellSize = UDim2.new(0, 150, 0, 30)

do
	local center = Enum.HorizontalAlignment.Center
	getgenv().UIGridLayout1.HorizontalAlignment = center
end

do
	local top = Enum.VerticalAlignment.Top
	getgenv().UIGridLayout1.VerticalAlignment = top
end

do
	local topLeft = Enum.StartCorner.TopLeft
	getgenv().UIGridLayout1.StartCorner = topLeft
end

getgenv().UIPadding1 = Instance.new("UIPadding")
getgenv().UIPadding1.Parent = scrollingFrame6
getgenv().UIPadding1.PaddingRight = UDim.new(0, 20)
getgenv().UIPadding1.PaddingTop = UDim.new(0, 55)
scrollingFrame7.Name = "Dancing_Section"
scrollingFrame7.Parent = imageLabel
scrollingFrame7.Active = true
scrollingFrame7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame7.BackgroundTransparency = 1
scrollingFrame7.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame7.BorderSizePixel = 0
scrollingFrame7.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame7.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame7.Visible = false
scrollingFrame7.CanvasSize = UDim2.new(0, 0, 1.5, 0)
scrollingFrame7.ScrollBarThickness = 5
scrollingFrame8.Name = "Animations_Section"
scrollingFrame8.Parent = imageLabel
scrollingFrame8.Active = true
scrollingFrame8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame8.BackgroundTransparency = 1
scrollingFrame8.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame8.BorderSizePixel = 0
scrollingFrame8.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame8.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame8.Visible = false
scrollingFrame8.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame8.ScrollBarThickness = 5
textLabel2.Name = "Alert_Label"
textLabel2.Parent = scrollingFrame8
textLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel2.BackgroundTransparency = 1
textLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
textLabel2.BorderSizePixel = 0
textLabel2.Position = UDim2.new(0, 43, 0, 12)
textLabel2.Size = UDim2.new(0, 300, 0, 100)
textLabel2.Font = Enum.Font.SourceSans
textLabel2.TextColor3 = Color3.fromRGB(r, g, b)
textLabel2.TextSize = 42
textLabel2.Text = "يرجى اختيار نوع الانميشن \n>_<"
textLabel2.TextWrapped = true
textLabel2.TextXAlignment = Enum.TextXAlignment.Center
textLabel2.TextYAlignment = Enum.TextYAlignment.Top
textLabel3.Name = "Alert_Label2"
textLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel3.BackgroundTransparency = 1
textLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
textLabel3.BorderSizePixel = 0
textLabel3.Position = UDim2.new(0, 43, 0, 12)
textLabel3.Size = UDim2.new(0, 300, 0, 100)
textLabel3.Font = Enum.Font.SourceSans
textLabel3.TextColor3 = Color3.fromRGB(r, g, b)
textLabel3.TextSize = 42
textLabel3.Text = "لوق دخول وخروج لاعبين"
textLabel3.TextWrapped = true
textLabel3.TextXAlignment = Enum.TextXAlignment.Center
textLabel3.TextYAlignment = Enum.TextYAlignment.Top
getgenv().ArmcutAnimationR6.Name = "ArmcutAnimationR6"
getgenv().ArmcutAnimationR6.Parent = scrollingFrame7
getgenv().ArmcutAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().ArmcutAnimationR6.BackgroundTransparency = 0.5
getgenv().ArmcutAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().ArmcutAnimationR6.BorderSizePixel = 0
getgenv().ArmcutAnimationR6.Position = UDim2.new(0, 210, 0, 25)
getgenv().ArmcutAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().ArmcutAnimationR6.Font = oswald
end

getgenv().ArmcutAnimationR6.Text = "قطع يد (R6)"
getgenv().ArmcutAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().ArmcutAnimationR6.TextScaled = true
getgenv().ArmcutAnimationR6.TextSize = 14
getgenv().ArmcutAnimationR6.TextWrapped = true
getgenv().BoxesAnimationR6.Name = "BoxesAnimationR6"
getgenv().BoxesAnimationR6.Parent = scrollingFrame7
getgenv().BoxesAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().BoxesAnimationR6.BackgroundTransparency = 0.5
getgenv().BoxesAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BoxesAnimationR6.BorderSizePixel = 0
getgenv().BoxesAnimationR6.Position = UDim2.new(0, 210, 0, 375)
getgenv().BoxesAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().BoxesAnimationR6.Font = oswald
end

getgenv().BoxesAnimationR6.Text = "بوكسات (R6)"
getgenv().BoxesAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BoxesAnimationR6.TextScaled = true
getgenv().BoxesAnimationR6.TextSize = 14
getgenv().BoxesAnimationR6.TextWrapped = true
getgenv().FaintAnimationR6.Name = "FaintAnimationR6"
getgenv().FaintAnimationR6.Parent = scrollingFrame7
getgenv().FaintAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().FaintAnimationR6.BackgroundTransparency = 0.5
getgenv().FaintAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FaintAnimationR6.BorderSizePixel = 0
getgenv().FaintAnimationR6.Position = UDim2.new(0, 210, 0, 75)
getgenv().FaintAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().FaintAnimationR6.Font = oswald
end

getgenv().FaintAnimationR6.Text = "نوم (R6)"
getgenv().FaintAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FaintAnimationR6.TextScaled = true
getgenv().FaintAnimationR6.TextSize = 14
getgenv().FaintAnimationR6.TextWrapped = true
getgenv().HugAnimationR6.Name = "HugAnimationR6"
getgenv().HugAnimationR6.Parent = scrollingFrame7
getgenv().HugAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().HugAnimationR6.BackgroundTransparency = 0.5
getgenv().HugAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().HugAnimationR6.BorderSizePixel = 0
getgenv().HugAnimationR6.Position = UDim2.new(0, 210, 0, 125)
getgenv().HugAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().HugAnimationR6.Font = oswald
end

getgenv().HugAnimationR6.Text = "حضن (R6)"
getgenv().HugAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().HugAnimationR6.TextScaled = true
getgenv().HugAnimationR6.TextSize = 14
getgenv().HugAnimationR6.TextWrapped = true
getgenv().BangAnimationR6.Name = "BangAnimationR6"
getgenv().BangAnimationR6.Parent = scrollingFrame7
getgenv().BangAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().BangAnimationR6.BackgroundTransparency = 0.5
getgenv().BangAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BangAnimationR6.BorderSizePixel = 0
getgenv().BangAnimationR6.Position = UDim2.new(0, 210, 0, 175)
getgenv().BangAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().BangAnimationR6.Font = oswald
end

getgenv().BangAnimationR6.Text = "بانق (R6)"
getgenv().BangAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BangAnimationR6.TextScaled = true
getgenv().BangAnimationR6.TextSize = 14
getgenv().BangAnimationR6.TextWrapped = true
getgenv().IllusionAnimationR6.Name = "IllusionAnimationR6"
getgenv().IllusionAnimationR6.Parent = scrollingFrame7
getgenv().IllusionAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().IllusionAnimationR6.BackgroundTransparency = 0.5
getgenv().IllusionAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().IllusionAnimationR6.BorderSizePixel = 0
getgenv().IllusionAnimationR6.Position = UDim2.new(0, 210, 0, 225)
getgenv().IllusionAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().IllusionAnimationR6.Font = oswald
end

getgenv().IllusionAnimationR6.Text = "وميض (R6)"
getgenv().IllusionAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().IllusionAnimationR6.TextScaled = true
getgenv().IllusionAnimationR6.TextSize = 14
getgenv().IllusionAnimationR6.TextWrapped = true
getgenv().InsaneAnimationR6.Name = "InsaneAnimationR6"
getgenv().InsaneAnimationR6.Parent = scrollingFrame7
getgenv().InsaneAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().InsaneAnimationR6.BackgroundTransparency = 0.5
getgenv().InsaneAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().InsaneAnimationR6.BorderSizePixel = 0
getgenv().InsaneAnimationR6.Position = UDim2.new(0, 210, 0, 325)
getgenv().InsaneAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().InsaneAnimationR6.Font = oswald
end

getgenv().InsaneAnimationR6.Text = "مجنون (R6)"
getgenv().InsaneAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().InsaneAnimationR6.TextScaled = true
getgenv().InsaneAnimationR6.TextSize = 14
getgenv().InsaneAnimationR6.TextWrapped = true
getgenv().BackpackHeadAnimationR6.Name = "BackpackHeadAnimationR6"
getgenv().BackpackHeadAnimationR6.Parent = scrollingFrame7
getgenv().BackpackHeadAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().BackpackHeadAnimationR6.BackgroundTransparency = 0.5
getgenv().BackpackHeadAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BackpackHeadAnimationR6.BorderSizePixel = 0
getgenv().BackpackHeadAnimationR6.Position = UDim2.new(0, 210, 0, 275)
getgenv().BackpackHeadAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().BackpackHeadAnimationR6.Font = oswald
end

getgenv().BackpackHeadAnimationR6.Text = "راس شنطة (R6)"
getgenv().BackpackHeadAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().BackpackHeadAnimationR6.TextScaled = true
getgenv().BackpackHeadAnimationR6.TextSize = 14
getgenv().BackpackHeadAnimationR6.TextWrapped = true
getgenv().FloatingHeadAnimationR6.Name = "FloatingHeadAnimationR6"
getgenv().FloatingHeadAnimationR6.Parent = scrollingFrame7
getgenv().FloatingHeadAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().FloatingHeadAnimationR6.BackgroundTransparency = 0.5
getgenv().FloatingHeadAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FloatingHeadAnimationR6.BorderSizePixel = 0
getgenv().FloatingHeadAnimationR6.Position = UDim2.new(0, 210, 0, 425)
getgenv().FloatingHeadAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().FloatingHeadAnimationR6.Font = oswald
end

getgenv().FloatingHeadAnimationR6.Text = "راس طاير (R6)"
getgenv().FloatingHeadAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FloatingHeadAnimationR6.TextScaled = true
getgenv().FloatingHeadAnimationR6.TextSize = 14
getgenv().FloatingHeadAnimationR6.TextWrapped = true
getgenv().JerkingAnimationR6.Name = "JerkingAnimationR6"
getgenv().JerkingAnimationR6.Parent = scrollingFrame7
getgenv().JerkingAnimationR6.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().JerkingAnimationR6.BackgroundTransparency = 0.5
getgenv().JerkingAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().JerkingAnimationR6.BorderSizePixel = 0
getgenv().JerkingAnimationR6.Position = UDim2.new(0, 210, 0, 475)
getgenv().JerkingAnimationR6.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().JerkingAnimationR6.Font = oswald
end

getgenv().JerkingAnimationR6.Text = "تجليخ (R6)"
getgenv().JerkingAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().JerkingAnimationR6.TextScaled = true
getgenv().JerkingAnimationR6.TextSize = 14
getgenv().JerkingAnimationR6.TextWrapped = true
getgenv().SaluteAnimationR15.Name = "SaluteAnimationR15"
getgenv().SaluteAnimationR15.Parent = scrollingFrame7
getgenv().SaluteAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().SaluteAnimationR15.BackgroundTransparency = 0.5
getgenv().SaluteAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SaluteAnimationR15.BorderSizePixel = 0
getgenv().SaluteAnimationR15.Position = UDim2.new(0, 25, 0, 25)
getgenv().SaluteAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().SaluteAnimationR15.Font = oswald
end

getgenv().SaluteAnimationR15.Text = "تحية (R15)"
getgenv().SaluteAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SaluteAnimationR15.TextScaled = true
getgenv().SaluteAnimationR15.TextSize = 14
getgenv().SaluteAnimationR15.TextWrapped = true
getgenv().DoggyAnimationR15.Name = "DoggyAnimationR15"
getgenv().DoggyAnimationR15.Parent = scrollingFrame7
getgenv().DoggyAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().DoggyAnimationR15.BackgroundTransparency = 0.5
getgenv().DoggyAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().DoggyAnimationR15.BorderSizePixel = 0
getgenv().DoggyAnimationR15.Position = UDim2.new(0, 25, 0, 75)
getgenv().DoggyAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().DoggyAnimationR15.Font = oswald
end

getgenv().DoggyAnimationR15.Text = "كلب (R15)"
getgenv().DoggyAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().DoggyAnimationR15.TextScaled = true
getgenv().DoggyAnimationR15.TextSize = 14
getgenv().DoggyAnimationR15.TextWrapped = true
getgenv().Sb3awyAnimationR15.Name = "Sb3awyAnimationR15"
getgenv().Sb3awyAnimationR15.Parent = scrollingFrame7
getgenv().Sb3awyAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().Sb3awyAnimationR15.BackgroundTransparency = 0.5
getgenv().Sb3awyAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Sb3awyAnimationR15.BorderSizePixel = 0
getgenv().Sb3awyAnimationR15.Position = UDim2.new(0, 25, 0, 325)
getgenv().Sb3awyAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().Sb3awyAnimationR15.Font = oswald
end

getgenv().Sb3awyAnimationR15.Text = "سبعاوي (R15)"
getgenv().Sb3awyAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Sb3awyAnimationR15.TextScaled = true
getgenv().Sb3awyAnimationR15.TextSize = 14
getgenv().Sb3awyAnimationR15.TextWrapped = true
getgenv().ZombieWalkAnimationR15.Name = "ZombieWalkAnimationR15"
getgenv().ZombieWalkAnimationR15.Parent = scrollingFrame7
getgenv().ZombieWalkAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().ZombieWalkAnimationR15.BackgroundTransparency = 0.5
getgenv().ZombieWalkAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().ZombieWalkAnimationR15.BorderSizePixel = 0
getgenv().ZombieWalkAnimationR15.Position = UDim2.new(0, 25, 0, 425)
getgenv().ZombieWalkAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().ZombieWalkAnimationR15.Font = oswald
end

getgenv().ZombieWalkAnimationR15.Text = "زومبي (R15)"
getgenv().ZombieWalkAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().ZombieWalkAnimationR15.TextScaled = true
getgenv().ZombieWalkAnimationR15.TextSize = 14
getgenv().ZombieWalkAnimationR15.TextWrapped = true
getgenv().FlingArmsAnimationR15.Name = "FlingArmsAnimationR15"
getgenv().FlingArmsAnimationR15.Parent = scrollingFrame7
getgenv().FlingArmsAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().FlingArmsAnimationR15.BackgroundTransparency = 0.5
getgenv().FlingArmsAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FlingArmsAnimationR15.BorderSizePixel = 0
getgenv().FlingArmsAnimationR15.Position = UDim2.new(0, 25, 0, 475)
getgenv().FlingArmsAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().FlingArmsAnimationR15.Font = oswald
end

getgenv().FlingArmsAnimationR15.Text = "لطم (R15)"
getgenv().FlingArmsAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FlingArmsAnimationR15.TextScaled = true
getgenv().FlingArmsAnimationR15.TextSize = 14
getgenv().FlingArmsAnimationR15.TextWrapped = true
getgenv().DolphinAnimationR15.Name = "DolphinAnimationR15"
getgenv().DolphinAnimationR15.Parent = scrollingFrame7
getgenv().DolphinAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().DolphinAnimationR15.BackgroundTransparency = 0.5
getgenv().DolphinAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().DolphinAnimationR15.BorderSizePixel = 0
getgenv().DolphinAnimationR15.Position = UDim2.new(0, 25, 0, 375)
getgenv().DolphinAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().DolphinAnimationR15.Font = oswald
end

getgenv().DolphinAnimationR15.Text = "دولفين (R15)"
getgenv().DolphinAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().DolphinAnimationR15.TextScaled = true
getgenv().DolphinAnimationR15.TextSize = 14
getgenv().DolphinAnimationR15.TextWrapped = true
getgenv().SleepyAnimationR15.Name = "SleepyAnimationR15"
getgenv().SleepyAnimationR15.Parent = scrollingFrame7
getgenv().SleepyAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().SleepyAnimationR15.BackgroundTransparency = 0.5
getgenv().SleepyAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SleepyAnimationR15.BorderSizePixel = 0
getgenv().SleepyAnimationR15.Position = UDim2.new(0, 25, 0, 125)
getgenv().SleepyAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().SleepyAnimationR15.Font = oswald
end

getgenv().SleepyAnimationR15.Text = "نائم (R15)"
getgenv().SleepyAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().SleepyAnimationR15.TextScaled = true
getgenv().SleepyAnimationR15.TextSize = 14
getgenv().SleepyAnimationR15.TextWrapped = true
getgenv().HugAnimationR15.Name = "HugAnimationR15"
getgenv().HugAnimationR15.Parent = scrollingFrame7
getgenv().HugAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().HugAnimationR15.BackgroundTransparency = 0.5
getgenv().HugAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().HugAnimationR15.BorderSizePixel = 0
getgenv().HugAnimationR15.Position = UDim2.new(0, 25, 0, 175)
getgenv().HugAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().HugAnimationR15.Font = oswald
end

getgenv().HugAnimationR15.Text = "حضن (R15)"
getgenv().HugAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().HugAnimationR15.TextScaled = true
getgenv().HugAnimationR15.TextSize = 14
getgenv().HugAnimationR15.TextWrapped = true
getgenv().CrazyAnimationR15.Name = "CrazyAnimationR15"
getgenv().CrazyAnimationR15.Parent = scrollingFrame7
getgenv().CrazyAnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().CrazyAnimationR15.BackgroundTransparency = 0.5
getgenv().CrazyAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().CrazyAnimationR15.BorderSizePixel = 0
getgenv().CrazyAnimationR15.Position = UDim2.new(0, 25, 0, 225)
getgenv().CrazyAnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().CrazyAnimationR15.Font = oswald
end

getgenv().CrazyAnimationR15.Text = "مخبل (R15)"
getgenv().CrazyAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().CrazyAnimationR15.TextScaled = true
getgenv().CrazyAnimationR15.TextSize = 14
getgenv().CrazyAnimationR15.TextWrapped = true
getgenv().B3b3AnimationR15.Name = "B3b3AnimationR15"
getgenv().B3b3AnimationR15.Parent = scrollingFrame7
getgenv().B3b3AnimationR15.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().B3b3AnimationR15.BackgroundTransparency = 0.5
getgenv().B3b3AnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().B3b3AnimationR15.BorderSizePixel = 0
getgenv().B3b3AnimationR15.Position = UDim2.new(0, 25, 0, 275)
getgenv().B3b3AnimationR15.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().B3b3AnimationR15.Font = oswald
end

getgenv().B3b3AnimationR15.Text = "بعبع (R15)"
getgenv().B3b3AnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().B3b3AnimationR15.TextScaled = true
getgenv().B3b3AnimationR15.TextSize = 14
getgenv().B3b3AnimationR15.TextWrapped = true
textButton35.Name = "Chose_Animation_Button1"
textButton35.Parent = scrollingFrame8
textButton35.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton35.BackgroundTransparency = 0.5
textButton35.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton35.BorderSizePixel = 0
textButton35.Position = UDim2.new(0, 25, 0, 100)
textButton35.Size = UDim2.new(0, 150, 0, 60)
textButton35.Font = Enum.Font.Oswald
textButton35.Text = "انميشن حركات\n" .. utf8.char(128378, 127995)
textButton35.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton35.TextScaled = true
textButton35.TextSize = 14
textButton35.TextWrapped = true
textButton36.Name = "Chose_Animation_Button2"
textButton36.Parent = scrollingFrame8
textButton36.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton36.BackgroundTransparency = 0.5
textButton36.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton36.BorderSizePixel = 0
textButton36.Position = UDim2.new(0, 210, 0, 100)
textButton36.Size = UDim2.new(0, 150, 0, 60)
textButton36.Font = Enum.Font.Oswald
textButton36.Text = "انميشن مشيات\n" .. utf8.char(128694, 127995) .. utf8.char(8205) .. utf8.char(9794, 65039)
textButton36.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton36.TextScaled = true
textButton36.TextSize = 14
textButton36.TextWrapped = true
scrollingFrame9.Name = "Misc_Section"
scrollingFrame9.Parent = imageLabel
scrollingFrame9.Active = true
scrollingFrame9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame9.BackgroundTransparency = 1
scrollingFrame9.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame9.BorderSizePixel = 0
scrollingFrame9.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame9.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame9.Visible = false
scrollingFrame9.CanvasSize = UDim2.new(0, 0, 1.05, 0)
scrollingFrame9.ScrollBarThickness = 5
textButton37.Name = "FullBrightness_Button"
textButton37.Parent = scrollingFrame9
textButton37.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton37.BackgroundTransparency = 0.5
textButton37.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton37.BorderSizePixel = 0
textButton37.Position = UDim2.new(0, 25, 0, 25)
textButton37.Size = UDim2.new(0, 150, 0, 30)
textButton37.Font = Enum.Font.Oswald
textButton37.Text = "رفع الاضاءة"
textButton37.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton37.TextScaled = true
textButton37.TextSize = 14
textButton37.TextWrapped = true
textButton38.Name = "AutoClick_Button"
textButton38.Parent = scrollingFrame9
textButton38.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton38.BackgroundTransparency = 0.5
textButton38.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton38.BorderSizePixel = 0
textButton38.Position = UDim2.new(0, 25, 0, 75)
textButton38.Size = UDim2.new(0, 150, 0, 30)
textButton38.Font = Enum.Font.Oswald
textButton38.Text = "اوتو كليكر"
textButton38.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton38.TextScaled = true
textButton38.TextSize = 14
textButton38.TextWrapped = true
textButton39.Name = "ESP_Button"
textButton39.Parent = scrollingFrame9
textButton39.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton39.BackgroundTransparency = 0.5
textButton39.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton39.BorderSizePixel = 0
textButton39.Position = UDim2.new(0, 210, 0, 25)
textButton39.Size = UDim2.new(0, 150, 0, 30)
textButton39.Font = Enum.Font.Oswald
textButton39.Text = "ESP"
textButton39.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton39.TextScaled = true
textButton39.TextSize = 14
textButton39.TextWrapped = true
textButton40.Name = "Shaders_Button"
textButton40.Parent = scrollingFrame9
textButton40.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton40.BackgroundTransparency = 0.5
textButton40.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton40.BorderSizePixel = 0
textButton40.Position = UDim2.new(0, 210, 0, 75)
textButton40.Size = UDim2.new(0, 150, 0, 30)
textButton40.Font = Enum.Font.Oswald
textButton40.Text = "شادر "
textButton40.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton40.TextScaled = true
textButton40.TextSize = 14
textButton40.TextWrapped = true
textButton41.Name = "Day_Button"
textButton41.Parent = scrollingFrame9
textButton41.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton41.BackgroundTransparency = 0.5
textButton41.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton41.BorderSizePixel = 0
textButton41.Position = UDim2.new(0, 25, 0, 125)
textButton41.Size = UDim2.new(0, 150, 0, 30)
textButton41.Font = Enum.Font.Oswald
textButton41.Text = "صباح"
textButton41.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton41.TextScaled = true
textButton41.TextSize = 14
textButton41.TextWrapped = true
textButton42.Name = "Night_Button"
textButton42.Parent = scrollingFrame9
textButton42.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton42.BackgroundTransparency = 0.5
textButton42.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton42.BorderSizePixel = 0
textButton42.Position = UDim2.new(0, 210, 0, 125)
textButton42.Size = UDim2.new(0, 150, 0, 30)
textButton42.Font = Enum.Font.Oswald
textButton42.Text = "ليل"
textButton42.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton42.TextScaled = true
textButton42.TextSize = 14
textButton42.TextWrapped = true
textButton43.Name = "Rejoin_Button"
textButton43.Parent = scrollingFrame9
textButton43.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton43.BackgroundTransparency = 0.5
textButton43.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton43.BorderSizePixel = 0
textButton43.Position = UDim2.new(0, 25, 0, 225)
textButton43.Size = UDim2.new(0, 150, 0, 30)
textButton43.Font = Enum.Font.Oswald
textButton43.Text = "إعادة الانضمام"
textButton43.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton43.TextScaled = true
textButton43.TextSize = 14
textButton43.TextWrapped = true
textButton44.Name = "InfYield_Button"
textButton44.Parent = scrollingFrame9
textButton44.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton44.BackgroundTransparency = 0.5
textButton44.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton44.BorderSizePixel = 0
textButton44.Position = UDim2.new(0, 25, 0, 175)
textButton44.Size = UDim2.new(0, 150, 0, 30)
textButton44.Font = Enum.Font.Oswald
textButton44.Text = "ادمن IY"
textButton44.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton44.TextScaled = true
textButton44.TextSize = 14
textButton44.TextWrapped = true
textButton47.Name = "AntiLag"
textButton47.Parent = scrollingFrame9
textButton47.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton47.BackgroundTransparency = 0.5
textButton47.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton47.BorderSizePixel = 0
textButton47.Position = UDim2.new(0, 210, 0, 175)
textButton47.Size = UDim2.new(0, 150, 0, 30)
textButton47.Font = Enum.Font.Oswald
textButton47.Text = "تخفيف لاق"
textButton47.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton47.TextScaled = true
textButton47.TextSize = 14
textButton47.TextWrapped = true
getgenv().FreeEmotes_Button.Name = "FreeEmotes_Button"
getgenv().FreeEmotes_Button.Parent = scrollingFrame8
getgenv().FreeEmotes_Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().FreeEmotes_Button.BackgroundTransparency = 0.5
getgenv().FreeEmotes_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FreeEmotes_Button.BorderSizePixel = 0
getgenv().FreeEmotes_Button.Position = UDim2.new(0, 70, 0, 175)
getgenv().FreeEmotes_Button.Size = UDim2.new(0, 250, 0, 60)

do
	local oswald = Enum.Font.Oswald
	getgenv().FreeEmotes_Button.Font = oswald
end

getgenv().FreeEmotes_Button.Text = "رقصات مجانية"
getgenv().FreeEmotes_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().FreeEmotes_Button.TextScaled = true
getgenv().FreeEmotes_Button.TextSize = 14
getgenv().FreeEmotes_Button.TextWrapped = true
textButton45.Name = "Serverhop_Button"
textButton45.Parent = scrollingFrame9
textButton45.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton45.BackgroundTransparency = 0.5
textButton45.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton45.BorderSizePixel = 0
textButton45.Position = UDim2.new(0, 210, 0, 225)
textButton45.Size = UDim2.new(0, 150, 0, 30)
textButton45.Font = Enum.Font.Oswald
textButton45.Text = "تغيير السيرفر"
textButton45.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton45.TextScaled = true
textButton45.TextSize = 14
textButton45.TextWrapped = true
textButton46.Name = "GChat_Button"
textButton46.Parent = scrollingFrame9
textButton46.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton46.BackgroundTransparency = 0.5
textButton46.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton46.BorderSizePixel = 0
textButton46.Position = UDim2.new(0, 25, 0, 263)
textButton46.Size = UDim2.new(0, 335, 0, 30)
textButton46.Font = Enum.Font.Oswald
textButton46.Text = "سكربت الشات العام"
textButton46.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton46.TextScaled = true
textButton46.TextSize = 14
textButton46.TextWrapped = true
textBox8.Name = "ChatBox_Input"
textBox8.Parent = scrollingFrame9
textBox8.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textBox8.BorderColor3 = Color3.fromRGB(r, g, b)
textBox8.Position = UDim2.new(0, 25, 0, 298)
textBox8.Size = UDim2.new(0, 335, 0, 60)
textBox8.Font = Enum.Font.Oswald
textBox8.PlaceholderText = "تشفير الكلام [ماعليها باند على ضمانتي] .                                                                            "
textBox8.Text = ""
textBox8.TextColor3 = Color3.fromRGB(r, g, b)
textBox8.TextSize = 14
textBox8.TextWrapped = true
textBox8.TextXAlignment = Enum.TextXAlignment.Left
textBox8.TextYAlignment = Enum.TextYAlignment.Top
scrollingFrame10.Name = "Credits_Section"
scrollingFrame10.Parent = imageLabel
scrollingFrame10.Active = true
scrollingFrame10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame10.BackgroundTransparency = 1
scrollingFrame10.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame10.BorderSizePixel = 0
scrollingFrame10.Position = UDim2.new(0, 105, 0, 30)
scrollingFrame10.Size = UDim2.new(0, 395, 0, 320)
scrollingFrame10.Visible = false
scrollingFrame10.CanvasSize = UDim2.new(0, 0, 0.8, 0)
scrollingFrame10.ScrollBarThickness = 5
textButton48.Name = "WhoWeAre_Button"
textButton48.Parent = scrollingFrame10
textButton48.BackgroundColor3 = Color3.fromRGB(r, g, b)
textButton48.BackgroundTransparency = 0.5
textButton48.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton48.BorderSizePixel = 0
textButton48.Position = UDim2.new(0, 40, 0, 255)
textButton48.Size = UDim2.new(0, 300, 0, 30)
textButton48.Font = Enum.Font.Oswald
textButton48.Text = "من نحن؟"
textButton48.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton48.TextScaled = true
textButton48.TextSize = 14
textButton48.TextWrapped = true
imageLabel4.Name = "TrollFace"
imageLabel4.Parent = imageLabel
imageLabel4.AnchorPoint = Vector2.new(0.5, 0.43999999761581421)
imageLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imageLabel4.BackgroundTransparency = 1
imageLabel4.BorderColor3 = Color3.fromRGB(0, 0, 0)
imageLabel4.BorderSizePixel = 0
imageLabel4.Rotation = -25
imageLabel4.ScaleType = Enum.ScaleType.Fit
imageLabel4.Size = UDim2.new(0, 121, 0, 102)
imageLabel4.Image = "rbxassetid://8776783827"
imageLabel4.ImageColor3 = Color3.fromRGB(r, g, b)
folder.Name = "Assets"
folder.Parent = getgenv().VR7
imageButton2.Name = "Ticket_Asset"
imageButton2.Parent = folder
imageButton2.AnchorPoint = Vector2.new(0, 0.5)
imageButton2.BackgroundTransparency = 1
imageButton2.BorderSizePixel = 0
imageButton2.LayoutOrder = 5
imageButton2.Position = UDim2.new(1, 5, 0.5, 0)
imageButton2.Size = UDim2.new(0, 25, 0, 25)
imageButton2.ZIndex = 2
imageButton2.Image = "rbxassetid://3926305904"
imageButton2.ImageColor3 = Color3.fromRGB(255, 0, 0)
imageButton2.ImageRectOffset = Vector2.new(424, 4)
imageButton2.ImageRectSize = Vector2.new(36, 36)
imageButton3.Name = "Click_Asset"
imageButton3.Parent = folder
imageButton3.AnchorPoint = Vector2.new(0, 0.5)
imageButton3.BackgroundTransparency = 1
imageButton3.BorderSizePixel = 0
imageButton3.Position = UDim2.new(1, 5, 0.5, 0)
imageButton3.Size = UDim2.new(0, 25, 0, 25)
imageButton3.ZIndex = 2
imageButton3.Image = "rbxassetid://3926305904"
imageButton3.ImageColor3 = Color3.fromRGB(100, 100, 100)
imageButton3.ImageRectOffset = Vector2.new(204, 964)
imageButton3.ImageRectSize = Vector2.new(36, 36)
imageButton4.Name = "Fly_Pad"
imageButton4.Parent = folder
imageButton4.BackgroundTransparency = 1
imageButton4.Position = UDim2.new(0.1, 0, 0.6, 0)
imageButton4.Size = UDim2.new(0, 100, 0, 100)
imageButton4.ZIndex = 2
imageButton4.Image = "rbxassetid://6764432293"
imageButton4.ImageRectOffset = Vector2.new(713, 315)
imageButton4.ImageRectSize = Vector2.new(75, 75)
imageButton4.Visible = false

do
	local new = ColorSequenceKeypoint.new
	local color = Color3.fromRGB
	uiGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 30)), new(1, color(r, g, b)) })
end

uiGradient.Rotation = 45
uiGradient.Parent = imageButton4
textButton49.Name = "FlyAButton"
textButton49.Parent = imageButton4
textButton49.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton49.BackgroundTransparency = 1
textButton49.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton49.BorderSizePixel = 0
textButton49.Position = UDim2.new(0, 0, 0, 30)
textButton49.Size = UDim2.new(0, 30, 0, 40)
textButton49.Font = Enum.Font.Oswald
textButton49.Text = ""
textButton49.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton49.TextSize = 25
textButton49.TextWrapped = true
textButton50.Name = "FlyDButton"
textButton50.Parent = imageButton4
textButton50.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton50.BackgroundTransparency = 1
textButton50.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton50.BorderSizePixel = 0
textButton50.Position = UDim2.new(0, 70, 0, 30)
textButton50.Size = UDim2.new(0, 30, 0, 40)
textButton50.Font = Enum.Font.Oswald
textButton50.Text = ""
textButton50.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton50.TextSize = 25
textButton50.TextWrapped = true
textButton51.Name = "FlyWButton"
textButton51.Parent = imageButton4
textButton51.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton51.BackgroundTransparency = 1
textButton51.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton51.BorderSizePixel = 0
textButton51.Position = UDim2.new(0, 30, 0, 0)
textButton51.Size = UDim2.new(0, 40, 0, 30)
textButton51.Font = Enum.Font.Oswald
textButton51.Text = ""
textButton51.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton51.TextSize = 25
textButton51.TextWrapped = true
textButton52.Name = "FlySButton"
textButton52.Parent = imageButton4
textButton52.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton52.BackgroundTransparency = 1
textButton52.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton52.BorderSizePixel = 0
textButton52.Position = UDim2.new(0, 30, 0, 70)
textButton52.Size = UDim2.new(0, 40, 0, 30)
textButton52.Font = Enum.Font.Oswald
textButton52.Text = ""
textButton52.TextColor3 = Color3.fromRGB(0, 0, 0)
textButton52.TextSize = 25
textButton52.TextWrapped = true
imageButton5.Name = "OpenClose"
imageButton5.Parent = getgenv().VR7
imageButton5.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
imageButton5.BorderSizePixel = 0
imageButton5.Position = UDim2.new(0, 8, 0.5, -22)
imageButton5.Size = UDim2.new(0, 40, 0, 40)
imageButton5.Image = "rbxassetid://8776783827"
imageButton5.ImageColor3 = Color3.fromRGB(r, g, b)
imageButton5.ScaleType = Enum.ScaleType.Fit
imageButton5.Draggable = true
uiCorner.Parent = imageButton5
uiCorner.CornerRadius = UDim.new(0, 6)
getgenv().ss = uiStroke:Clone()
getgenv().ss.Parent = imageButton5
getgenv().ss.Color = Color3.fromRGB(r2, g2, b2)
getgenv().ss.Thickness = 2

CreateRainbowTextLabel = function(param31, text, position, rotation)
	local textLabel5 = Instance.new("TextLabel", param31)
	textLabel5.Text = text
	textLabel5.Size = UDim2.new(0, 60, 0, 30)
	textLabel5.Position = position
	textLabel5.TextColor3 = Color3.fromRGB(85, 255, 127)
	textLabel5.TextScaled = true
	textLabel5.Font = Enum.Font.SourceSans
	textLabel5.TextSize = 20
	textLabel5.TextTransparency = 0
	textLabel5.BackgroundTransparency = 1
	textLabel5.TextStrokeTransparency = 0.8
	textLabel5.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	textLabel5.Rotation = rotation
	return textLabel5
end

CreateButtonWithText = function(param32, name2, text, position, param33, param34)
	local textButton53 = Instance.new("TextButton", param32)
	textButton53.Name = name2
	textButton53.BackgroundColor3 = Color3.fromRGB(r, g, b)
	textButton53.BackgroundTransparency = 0.5
	textButton53.BorderColor3 = Color3.fromRGB(0, 0, 0)
	textButton53.BorderSizePixel = 0
	textButton53.Position = position
	textButton53.Size = UDim2.new(0, 150, 0, 30)
	textButton53.Font = Enum.Font.Oswald
	textButton53.Text = text
	textButton53.TextColor3 = Color3.fromRGB(0, 0, 0)
	textButton53.TextScaled = true
	textButton53.TextSize = 14
	textButton53.TextWrapped = true

	if name2 == "VehicleFling_Button" or name2 == "Ball_Fling" or name2 == "Spam_Skins" or name2 == "Spamming_Commands" then
		CreateToggle(textButton53)
	else
		CreateClicker(textButton53)
	end

	return {
		t1 = CreateRainbowTextLabel(param32, param33, UDim2.new(0, position.X.Offset - 15, 0, position.Y.Offset + 15), param34),
		t2 = textButton53,
	}
end

do
	local udim2 = UDim2.new
	CreateRainbowTextLabel(getgenv().BangSpeed_Input, "سرعة بانق", udim2(0, getgenv().BangSpeed_Input.Position.X.Offset - 115, 0, getgenv().BangSpeed_Input.Position.Y.Offset - 60), 0)
end

do
	local udim2 = UDim2.new
	CreateRainbowTextLabel(getgenv().SuckingSpeed_Input, "سرعة المص", udim2(0, getgenv().SuckingSpeed_Input.Position.X.Offset - 115, 0, getgenv().SuckingSpeed_Input.Position.Y.Offset - 110), 0)
end

do
	local udim2 = UDim2.new
	CreateRainbowTextLabel(getgenv().AdminCmdSpeed_Input, "سرعة النسخ", udim2(0, getgenv().AdminCmdSpeed_Input.Position.X.Offset - 115, 0, getgenv().AdminCmdSpeed_Input.Position.Y.Offset - 160), 0)
end

if game.PlaceId == 14201103742 or game.PlaceId == 12123568130 or game.PlaceId == 18209796679 or game.PlaceId == 17723040340 or game.PlaceId == 88950799188393 then
	pcall(function()
		local Workspace = game:GetService("Workspace")
		local RunService = game:GetService("RunService")
		local localPlayer2 = game.Players.LocalPlayer
		local humanoidRootPart = (localPlayer2.Character or localPlayer2.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
		local folder2 = Instance.new("Folder", Workspace)
		local part = Instance.new("Part", folder2)
		local attachment = Instance.new("Attachment", part)
		part.Anchored = true
		part.CanCollide = false
		part.Transparency = 1

		if not getgenv().Network then
			getgenv().Network = { BaseParts = {}, Velocity = Vector3.new(14.462625, 14.462625, 14.462625) }

			Network.RetainPart = function(obj)
				if typeof(obj) == "Instance" and obj:IsA("BasePart") and obj:IsDescendantOf(Workspace) and not obj:IsDescendantOf(game.Players.LocalPlayer.Character) then
					table.insert(Network.BaseParts, obj)
					obj.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
					obj.CanCollide = false
				end
			end

			local function func31()
				localPlayer2.ReplicationFocus = Workspace

				RunService.Heartbeat:Connect(function()
					pcall(function()
						sethiddenproperty(localPlayer2, "SimulationRadius", math.huge)

						for _, basePart in pairs(Network.BaseParts) do
							if basePart:IsDescendantOf(Workspace) then
								basePart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 50
							end
						end
					end)
				end)
			end

			func31()
		end

		Flinger = function(part3)
			if getgenv().loopfling and part3:IsA("BasePart") and not part3.Anchored and not part3.Parent:FindFirstChild("Humanoid") and not part3.Parent:FindFirstChild("Head") and part3.Name ~= "Handle" then
				local cFrame2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(part3.Position)
				wait(0.7)
				local value41 = next
				local children, value42 = part3:GetChildren()

				for _, value43 in value41, children, value42 do
					if value43:IsA("BodyAngularVelocity") or value43:IsA("BodyForce") or value43:IsA("BodyGyro") or value43:IsA("BodyPosition") or value43:IsA("BodyThrust") or value43:IsA("BodyVelocity") or value43:IsA("RocketPropulsion") then
						value43:Destroy()
					end
				end

				if part3:FindFirstChild("Attachment") then
					part3:FindFirstChild("Attachment"):Destroy()
				end

				if part3:FindFirstChild("AlignPosition") then
					part3:FindFirstChild("AlignPosition"):Destroy()
				end

				if part3:FindFirstChild("Torque") then
					part3:FindFirstChild("Torque"):Destroy()
				end

				part3.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
				part3.CanCollide = false
				part3.CanTouch = false
				local torque = Instance.new("Torque", part3)
				torque.Torque = Vector3.new(100000, 100000, 100000)
				local alignPosition = Instance.new("AlignPosition", part3)
				local attachment2 = Instance.new("Attachment", part3)
				torque.Attachment0 = attachment2
				alignPosition.MaxForce = 1e17
				alignPosition.MaxVelocity = math.huge
				alignPosition.Responsiveness = 200
				alignPosition.Attachment0 = attachment2
				alignPosition.Attachment1 = attachment

				spawn(function()
					while true do
						task.wait()

						if getgenv().loopfling then
							pcall(function()
								if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
									local look = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -1, 0)
									getgenv().look = look
								end
							end)
						end

						if not getgenv().ejnfja then
							continue
						end
						break
					end
				end)

				spawn(function()
					part3.CFrame = humanoidRootPart.CFrame
					local n = 0
					if getgenv().working then
						return
					end

					while true do
						getgenv().working = true
						task.wait()

						pcall(function()
							n += 1.0471975511965976
							local cframe = CFrame.new(math.sin(n) * 3, 0, math.cos(n) * 3)
							attachment.WorldCFrame = getgenv().look * cframe
							part3.CFrame = getgenv().look * cframe
							part3.Velocity = getgenv().look.LookVector * 10000
						end)
					end
				end)

				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame2
			end
		end
	end)
end

SendNotify("System VR7", "Script developed by V R 7 TEAM - Discord in your clipboard", 10)

if game.PlaceId == 76272175611885 or game.PlaceId == 114337591415801 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)
	local func32 = CreateButtonWithText
	getgenv().RainbowTjm32 = func32(scrollingFrame, "VehicleFling_Button", "فلنق دراجة", UDim2.new(0, 210, 0, 225), "تجمع العرب", 0)
	local func33 = CreateButtonWithText
	getgenv().RainbowTjm34 = func33(scrollingFrame, "Spam_Skins", "جمع الفلوس تلقائيا", UDim2.new(0, 25, 0, 275), "تجمع العرب", 0)
	local func34 = CreateButtonWithText
	getgenv().RainbowTjm31 = func34(scrollingFrame, "Spam_Skins", "سبام اسماء", UDim2.new(0, 25, 0, 225), "تجمع العرب", 0)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm31.t2)

		while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and wait(0.5) do
			for _, item3 in ipairs({
				"كسمك ياقحبه ",
				"الماب كله بنعالي ",
				"فحلك انا ",
				"اركب اهلك كلهم ",
				"الي قدامي ابن قحبه ",
				"ابي شرموطه تبلع زبي ",
				"اهخ زبي مقوم ",
				"VR7 ON TOP ",
				"كسمك",
				"زبي نار يبي امك",
				"اركب عليه",
				"انيكك دوقي ستايل",
			}) do
				game:GetService("ReplicatedStorage").BetweenSides.Remotes.Events.RankTitleHandler:FireServer("EQUIP_MINS", { Color = Color3.new(1, 0.333333, 0.498039), Title = item3, Mins = 0 })
				task.wait(0.5)
			end
		end
	end)

	getgenv().RainbowTjm34.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm34.t2)

		while getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and task.wait() do
			pcall(function()
				if #workspace.Ignore.CashDrops:GetChildren() > 0 then
					local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
					local cFrame2 = humanoidRootPart.CFrame

					for _, child in pairs(workspace.Ignore.CashDrops:GetChildren()) do
						humanoidRootPart.CFrame = CFrame.new((child:IsA("BasePart") and child or child:FindFirstChildWhichIsA("BasePart", true)).Position - Vector3.new(0, 5, 0))
						task.wait(0.1)
						fireclickdetector(child:FindFirstChildWhichIsA("ClickDetector", true))
					end

					humanoidRootPart.CFrame = cFrame2
				end
			end)
		end
	end)

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm32.t2)

		if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			SendNotify("ملاحظة", "هاذ الامر يطير اي شخص يصدم بدراجتك وانت تسوقها", 10)
			SendNotify("تحذير", "لاتركب سيارة وانت مشغل هذا الامر", 10)
			local n = 0.1

			while getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				task.wait()
				game:GetService("RunService").Heartbeat:Wait()
				local character = game.Players.LocalPlayer.Character
				character = character and character:FindFirstChild("HumanoidRootPart")

				if character then
					local velocity = character.Velocity
					character.Velocity = velocity * 1000 + Vector3.new(0, 1000, 0)
					game:GetService("RunService").RenderStepped:Wait()
					character.Velocity = velocity
					game:GetService("RunService").Stepped:Wait()
					character.Velocity = velocity + Vector3.new(0, n, 0)
					n = -n
				end

				for _, player in ipairs(game.Players:GetPlayers()) do
					if player ~= game.Players.LocalPlayer then
						for _, child in ipairs(player:GetChildren()) do
							if child:IsA("BasePart") then
								child.CanCollide = false
							end
						end
					end
				end
			end
		end
	end)
elseif game.PlaceId == 142823291 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)
	local func35 = CreateButtonWithText
	getgenv().RainbowTjm31 = func35(scrollingFrame, "Get_Murder", "تحديد القاتل", UDim2.new(0, 25, 0, 225), "ماب القاتل 2", 0)
	local func36 = CreateButtonWithText
	getgenv().RainbowTjm32 = func36(scrollingFrame, "Get_Murder", "تحديد الشيرف", UDim2.new(0, 210, 0, 225), "ماب القاتل 2", 0)
	local func37 = CreateButtonWithText
	getgenv().RainbowTjm33 = func37(scrollingFrame, "Spam_Skins", "فارم كوينز", UDim2.new(0, 25, 0, 275), "ماب القاتل 2", 0)
	local humanoidRootPart = (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")

	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(character)
		humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		task.wait(0.7)
	end)

	local flag21 = true

	game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed and input.KeyCode == Enum.KeyCode.E then
			flag21 = not flag21
		end
	end)

	GetClosestCoin = function()
		local coinContainer = workspace:FindFirstChild("CoinContainer", true)
		local value44 = coinContainer and humanoidRootPart
		local value45 = nil

		if value44 then
			local huge = math.huge
			value45 = nil

			for _, descendant in ipairs(coinContainer:GetDescendants()) do
				if descendant:IsA("BasePart") and descendant.Transparency == 1 and descendant:FindFirstChildWhichIsA("TouchTransmitter") then
					local magnitude = (humanoidRootPart.Position - descendant.Position).Magnitude

					if magnitude < huge then
						huge = magnitude
						value45 = descendant
					end
				end
			end
		end

		return value45
	end

	FireTouch = function(instance)
		if instance and instance.Parent and humanoidRootPart then
			if instance:FindFirstChildWhichIsA("TouchTransmitter") then
				firetouchinterest(humanoidRootPart, instance, 0)
				task.wait(0.01)
				firetouchinterest(humanoidRootPart, instance, 1)
			end
		end
	end

	GotonearestS = function(param35)
		Closest = nil
		ClosestDistance = math.huge
		local humanoidRootPart2 = game.Players.LocalPlayer.Character.HumanoidRootPart

		if param35 then
			local spawns = game.workspace:FindFirstChild("Spawns", true)

			for _, child in ipairs(spawns:GetChildren()) do
				if child:IsA("BasePart") and child.Parent.Name ~= "RegularLobby" and (humanoidRootPart2.Position - child.Position).Magnitude < ClosestDistance then
					local magnitude = (humanoidRootPart2.Position - child.Position).Magnitude
					Closest = child
					ClosestDistance = magnitude
				end
			end
		else
			for _, child in ipairs(workspace.RegularLobby.Spawns:GetChildren()) do
				if child:IsA("BasePart") and (humanoidRootPart2.Position - child.Position).Magnitude < ClosestDistance then
					local magnitude = (humanoidRootPart2.Position - child.Position).Magnitude
					Closest = child
					ClosestDistance = magnitude
				end
			end
		end

		if Closest and ClosestDistance > 5 then
			humanoidRootPart2.CFrame = CFrame.new(Closest.Position)
		end
	end

	getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm33.t2)

		if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().CoinsFarm = true

			task.spawn(function()
				local character = game.Players.LocalPlayer.Character
				local flag22

				while getgenv().CoinsFarm do
					task.wait()

					if game.Players.LocalPlayer.Character ~= character then
						character = game.Players.LocalPlayer.Character
						humanoidRootPart = character:WaitForChild("HumanoidRootPart")
						task.wait(0.7)
					end

					local full = game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game.CoinBags.Container.Coin.Full

					if full.Visible == true then
						GotonearestS(false)
						task.wait(0.1)
					elseif not flag21 then
						task.wait(0.2)
					else
						local closestCoin = GetClosestCoin()

						if closestCoin and closestCoin.Parent and humanoidRootPart and humanoidRootPart.Parent then
							local n = closestCoin.Position - Vector3.new(0, 2, 0)
							local n2 = math.max((humanoidRootPart.Position - n).Magnitude / 21, 0.05)
							local now = tick()
							local position = humanoidRootPart.Position

							while true do
								local touchTransmitter = flag21 and getgenv().CoinsFarm and not full.Visible and closestCoin.Parent and closestCoin:FindFirstChildWhichIsA("TouchTransmitter")
								flag22 = false

								if touchTransmitter then
									local n3 = math.clamp((tick() - now) / n2, 0, 1)
									local num3 = position:Lerp(n, n3)
									local lookVector = workspace.CurrentCamera.CFrame.LookVector
									local vector = Vector3.new(lookVector.X, 0, lookVector.Z)
									local vector2

									if vector.Magnitude == 0 then
										vector2 = Vector3.new(0, 0, -1)
									else
										vector2 = vector.Unit
									end

									humanoidRootPart.CFrame = CFrame.new(num3, num3 + vector2) * CFrame.Angles(1.5707963267948966, 0, 0)

									if not closestCoin.Parent or not closestCoin:FindFirstChildWhichIsA("TouchTransmitter") then
										break
									elseif n3 >= 1 then
										flag22 = true
										break
									else
										game:GetService("RunService").Heartbeat:Wait()
										continue
									end
								end

								break
							end

							flag22 = flag22 and flag21 and getgenv().loop and getgenv().CoinsFarm and not full.Visible and closestCoin.Parent and closestCoin:FindFirstChildWhichIsA("TouchTransmitter")

							if flag22 then
								FireTouch(closestCoin)
								task.wait(0.05)
							end
						else
							task.wait(0.1)
						end
					end
				end
			end)
		else
			getgenv().CoinsFarm = false
			wait(0.5)
			GotonearestS(true)
		end
	end)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		for _, player in ipairs(game.Players:GetPlayers()) do
			for _, child in ipairs(player.Backpack:GetChildren()) do
				if child:IsA("Tool") and child.Name == "Knife" then
					if player == game.Players.LocalPlayer then
						SendNotify("Knife", "انت صاحب السكينة", 5)
						return nil
					end
					ChangeSection(textButton4)
					return UpdateTarget(player)
				end
			end

			if player.Character then
				for _, child in ipairs(player.Character:GetChildren()) do
					if child:IsA("Tool") and child.Name == "Knife" then
						if player == game.Players.LocalPlayer then
							SendNotify("Knife", "انت صاحب السكينة", 5)
							return nil
						end
						ChangeSection(textButton4)
						return UpdateTarget(player)
					end
				end
			end
		end

		SendNotify("خطا", "القيم للحين مابدا ...", 5)
	end)

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		for _, player in ipairs(game.Players:GetPlayers()) do
			for _, child in ipairs(player.Backpack:GetChildren()) do
				if child:IsA("Tool") and child.Name == "Gun" then
					if player == game.Players.LocalPlayer then
						SendNotify("خطا", "انت صاحب السلاح", 5)
						return nil
					end
					ChangeSection(textButton4)
					return UpdateTarget(player)
				end
			end

			if player.Character then
				for _, child in ipairs(player.Character:GetChildren()) do
					if child:IsA("Tool") and child.Name == "Gun" then
						if player == game.Players.LocalPlayer then
							SendNotify("خطا", "انت صاحب السلاح", 5)
							return nil
						end
						ChangeSection(textButton4)
						return UpdateTarget(player)
					end
				end
			end
		end

		SendNotify("خطا", "القيم للحين مابدا ...", 5)
	end)
elseif game.PlaceId == 116091035719468 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)
	local func38 = CreateButtonWithText
	getgenv().RainbowTjm32 = func38(scrollingFrame, "Spam_Skins", "فارم عامل نظافة", UDim2.new(0, 25, 0, 225), "شرق الرياض", 0)
	local Players2 = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local Workspace = game:GetService("Workspace")
	local localPlayer2 = Players2.LocalPlayer
	getgenv().VR7_AutoFarm = true
	local n = 25

	local function func39()
		local character = localPlayer2.Character
		local n2 = 0

		if character then
			for _, child in ipairs(character:GetChildren()) do
				if child:IsA("Tool") and child.Name == "TrashTool" then
					n2 += 1
				end
			end
		end

		for _, child in ipairs(localPlayer2.Backpack:GetChildren()) do
			if child:IsA("Tool") and child.Name == "TrashTool" then
				n2 += 1
			end
		end

		return n2
	end

	local function func40()
		local character = localPlayer2.Character
		character = character and character:FindFirstChild("HumanoidRootPart")
		if not character then
			return nil
		end
		local huge = math.huge
		local value46 = nil

		for _, descendant in ipairs(Workspace:GetDescendants()) do
			if descendant.Name == "ProxPart" and descendant:FindFirstChildOfClass("ProximityPrompt") and descendant:FindFirstChildOfClass("Highlight") then
				if descendant:FindFirstChildOfClass("Highlight").OutlineColor ~= Color3.fromRGB(255, 0, 0) then
					local magnitude = (character.Position - descendant.Position).Magnitude

					if magnitude < huge then
						huge = magnitude
						value46 = descendant
					end
				end
			end
		end

		return value46
	end

	local function func41(part4)
		local character = localPlayer2.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return
		end
		local devCameraOcclusionMode = localPlayer2.DevCameraOcclusionMode
		localPlayer2.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam

		local connection = RunService.Stepped:Connect(function()
			if character then
				for _, descendant in ipairs(character:GetDescendants()) do
					if descendant:IsA("BasePart") then
						descendant.CanCollide = false
					end
				end
			end
		end)

		local n2 = humanoidRootPart.CFrame + Vector3.new(0, -30, 0)
		local tween = TweenService:Create(humanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { CFrame = n2 })
		tween:Play()
		tween.Completed:Wait()

		if humanoidRootPart and humanoidRootPart.Parent then
			local cframe = CFrame.new(part4.Position.X, n2.Position.Y, part4.Position.Z)
			local tween2 = TweenService:Create(humanoidRootPart, TweenInfo.new(math.max((n2.Position - cframe.Position).Magnitude / n, 0.1), Enum.EasingStyle.Linear), { CFrame = cframe })
			tween2:Play()
			tween2.Completed:Wait()
		end

		if humanoidRootPart and humanoidRootPart.Parent then
			local tween2 = TweenService:Create(humanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { CFrame = part4 })
			tween2:Play()
			tween2.Completed:Wait()
		end

		connection:Disconnect()
		localPlayer2.DevCameraOcclusionMode = devCameraOcclusionMode
	end

	local function func42()
		task.spawn(function()
			while getgenv().VR7_AutoFarm do
				task.wait()

				pcall(function()
					local character = localPlayer2.Character
					if not (character and character:FindFirstChild("HumanoidRootPart")) then
						return
					end

					if func39() >= 5 then
						local trashSeller = Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("TrashSeller")

						if trashSeller then
							func41(trashSeller.CFrame)
							local proximityPrompt = trashSeller:FindFirstChildOfClass("ProximityPrompt")

							if proximityPrompt then
								local n2 = tick() + 5

								while true do
									fireproximityprompt(proximityPrompt)
									task.wait(0.2)
									if not (func39() < 5 or not getgenv().VR7_AutoFarm or tick() > n2) then
										continue
									end
									break
								end
							end
						end
					else
						local result1 = func40()

						if result1 then
							func41(result1.CFrame)
							local proximityPrompt = result1:FindFirstChildOfClass("ProximityPrompt")
							local highlight = result1:FindFirstChildOfClass("Highlight")

							if proximityPrompt and highlight then
								local n2 = tick() + 5

								while true do
									fireproximityprompt(proximityPrompt)
									task.wait(0.2)
									if not (highlight.OutlineColor == Color3.fromRGB(255, 0, 0) or func39() >= 5 or not getgenv().VR7_AutoFarm or not result1.Parent or tick() > n2) then
										continue
									end
									break
								end
							end
						end
					end
				end)
			end
		end)
	end

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm32.t2)

		if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().VR7_AutoFarm = true

			if game.Players.LocalPlayer.Team ~= game:GetService("Teams")["عامل نظافة"] then
				local tbl24 = { buffer.fromstring("\18\19عامل نظافة") }
				game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Packages"):WaitForChild("Packet"):WaitForChild("Packet"):WaitForChild("RemoteEvent"):FireServer(unpack(tbl24))
				wait(3)
			end

			func42()
		else
			getgenv().VR7_AutoFarm = false
		end
	end)
elseif game.PlaceId == 116635984204928 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)
	local func43 = CreateButtonWithText
	getgenv().RainbowTjm3 = func43(scrollingFrame5, "Spam_Skins", "اعطاء القنبلة", UDim2.new(0, 210, 0, 500), "ماب القنبلة", 0)
	local func44 = CreateButtonWithText
	getgenv().RainbowTjm33 = func44(scrollingFrame5, "Spam_Skins", "التركيز عليه", UDim2.new(0, 25, 0, 500), "ماب القنبلة", 0)
	local func45 = CreateButtonWithText
	getgenv().RainbowTjm32 = func45(scrollingFrame, "Spam_Skins", "مضاد قنبلة", UDim2.new(0, 25, 0, 225), "ماب القنبلة", 0)
	scrollingFrame5.CanvasSize = UDim2.new(0, 0, 1.6, 0)

	getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
		if name ~= nil then
			ChangeToggleColor(getgenv().RainbowTjm33.t2)

			if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				SendNotify("System VR7", "يجب اطفاء مضاد القنابل اولا", 3)
				getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
				return
			end

			if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				while getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
					task.wait()

					pcall(function()
						game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.PrimaryPart.Position, Vector3.new(Players[name].Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.PrimaryPart.Position.Y, Players[name].Character.HumanoidRootPart.Position.Z)))
					end)
				end
			end
		end
	end)

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm32.t2)

		if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				SendNotify("VR7 System", "يجب اطفاء ميزة التركيز عليه")
				getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
				return
			end

			while getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				task.wait()

				if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					break
				else
					pcall(function()
						local result = game:GetService("RunService").Heartbeat:Wait()
						local moveDirection = game.Players.LocalPlayer.Character.Humanoid.MoveDirection
						local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

						if moveDirection.Magnitude > 0 then
							local unit = moveDirection.Unit
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + unit) * CFrame.Angles(1.5707963267948966, 0, 0)
							game.Players.LocalPlayer.Character:TranslateBy(unit * 1.7 * result * 10)
						else
							game.Players.LocalPlayer.Character:TranslateBy(Vector3.zero)
						end

						if not game.Players.LocalPlayer.Character.Humanoid.Sit then
							game.Players.LocalPlayer.Character.Humanoid.Sit = true
							game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
							task.wait(0.1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(1.5707963267948966, 0, 0)

							for _, getPlayingAnimationTrack2 in ipairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
								getPlayingAnimationTrack2:Stop()
							end
						end
					end)
				end
			end

			wait(0.1)

			pcall(function()
				game.Players.LocalPlayer.Character.Humanoid.Sit = false
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
			end)
		end
	end)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		if name ~= nil then
			ChangeToggleColor(getgenv().RainbowTjm3.t2)

			if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				SendNotify("System VR7", "الضحية يجب ان تكون معك بلقيم \n خلك قريب من الضحية حتا يضبط اكثر", 5)

				while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
					task.wait()

					pcall(function()
						local classicTimebomb = GetBomb(game.Players.LocalPlayer, "ClassicTimebomb")

						if classicTimebomb then
							if tonumber(classicTimebomb:FindFirstChild("TextLabel", true).Text) <= 3 then
								wait(0.3)
								local character = game.Players.LocalPlayer.Character
								local humanoid = character:FindFirstChildOfClass("Humanoid")
								local cFrame2 = character.HumanoidRootPart.CFrame
								local animation = Instance.new("Animation")
								animation.AnimationId = "rbxassetid://215384594"
								local obj4 = humanoid:LoadAnimation(animation)

								repeat
									task.wait()

									pcall(function()
										local character2 = Players[name].Character
										local humanoidRootPart = character2:FindFirstChild("HumanoidRootPart")

										if humanoidRootPart then
											local position = humanoidRootPart.Position
											character.HumanoidRootPart.CFrame = CFrame.new(position, position + humanoidRootPart.CFrame.LookVector)

											if not obj4.IsPlaying then
												obj4:Play()
												obj4.Looped = true
												obj4:AdjustSpeed(9)
											end

											firetouchinterest(classicTimebomb.Handle, character2.Torso, 0)
										end
									end)
								until not GetBomb(game.Players.LocalPlayer, "ClassicTimebomb")

								obj4:Stop()
								character.HumanoidRootPart.CFrame = cFrame2
								wait()
								game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
							end
						end
					end)
				end
			end
		end
	end)
elseif game.PlaceId == 11379739543 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)
	local func46 = CreateButtonWithText
	getgenv().RainbowTjm3 = func46(scrollingFrame5, "Spam_Skins", "اعطاء القنبلة", UDim2.new(0, 210, 0, 500), "ماب القنبلة", 0)
	local func47 = CreateButtonWithText
	getgenv().RainbowTjm33 = func47(scrollingFrame5, "Spam_Skins", "التركيز عليه", UDim2.new(0, 25, 0, 500), "ماب القنبلة", 0)
	local func48 = CreateButtonWithText
	getgenv().RainbowTjm34 = func48(scrollingFrame, "Spam_Skins", "مضاد التزحلق", UDim2.new(0, 25, 0, 225), "ماب القنبلة", 0)
	scrollingFrame5.CanvasSize = UDim2.new(0, 0, 1.6, 0)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		if name ~= nil then
			ChangeToggleColor(getgenv().RainbowTjm3.t2)

			if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				SendNotify("System VR7", "الضحية يجب ان تكون معك بلقيم \n خلك قريب من الضحية حتا يضبط اكثر", 5)

				while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
					task.wait()

					pcall(function()
						local bomb = GetBomb(game.Players.LocalPlayer, "Bomb")

						if bomb then
							if tonumber(bomb:FindFirstChild("TimeLeft", true).Text) <= 2 then
								wait(0.3)
								local cFrame2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

								repeat
									task.wait()

									pcall(function()
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Players[name].Character.Torso.Position)
									end)
								until not GetBomb(game.Players.LocalPlayer, "Bomb")

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame2
							end
						end
					end)
				end
			end
		end
	end)

	getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
		if name ~= nil then
			ChangeToggleColor(getgenv().RainbowTjm33.t2)

			if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				while getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
					task.wait()

					pcall(function()
						if GetBomb(game.Players.LocalPlayer, "Bomb") ~= nil and GetBomb(Players[name], "Bomb") == nil and Players[name].Character.Humanoid.Health >= 0 then
							game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.PrimaryPart.Position, Vector3.new(Players[name].Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.PrimaryPart.Position.Y, Players[name].Character.HumanoidRootPart.Position.Z)))
						end
					end)
				end
			end
		end
	end)

	getgenv().RainbowTjm34.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm34.t2)

		if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			SendNotify("VR7 System", "هاذ الامر يوقف التزحلق على الجليد")
			local ice = workspace.Arenas.Arena5ICED.Map.Ice
			local customPhysicalProperties = ice.CustomPhysicalProperties or PhysicalProperties.new()
			ice.CustomPhysicalProperties = PhysicalProperties.new(customPhysicalProperties.Density, customPhysicalProperties.Friction, customPhysicalProperties.Elasticity, 1, customPhysicalProperties.ElasticityWeight)
		else
			local ice = workspace.Arenas.Arena5ICED.Map.Ice
			local customPhysicalProperties = ice.CustomPhysicalProperties or PhysicalProperties.new()
			ice.CustomPhysicalProperties = PhysicalProperties.new(customPhysicalProperties.Density, customPhysicalProperties.Friction, customPhysicalProperties.Elasticity, 100, customPhysicalProperties.ElasticityWeight)
		end
	end)
elseif game.PlaceId == 111468024154832 or game.PlaceId == 137622306851555 or workspace:FindFirstChild("Arbustos", true) then
	local func49 = CreateButtonWithText
	getgenv().RainbowTjm3 = func49(scrollingFrame, "Spam_Skins", "حجم عشوائي", UDim2.new(0, 25, 0, 225), "شالية فهد", 0)
	local func50 = CreateButtonWithText
	getgenv().RainbowTjm31 = func50(scrollingFrame, "Spam_Skins", "سكنات عشوائية", UDim2.new(0, 210, 0, 225), "شالية فهد", 0)
	local func51 = CreateButtonWithText
	getgenv().RainbowTjm32 = func51(scrollingFrame, "VehicleFlisng_Button", "سكن يطلع صوت", UDim2.new(0, 25, 0, 275), "شالية فهد", 0)
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm3.t2)

		if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				wait()

				for i = 10, 20 do
					game:GetService("ReplicatedStorage").FreeCommandsRemotes.Action:FireServer("SetSize", i / 10, nil)
					task.wait()
				end

				for i = 20, 10, -1 do
					game:GetService("ReplicatedStorage").FreeCommandsRemotes.Action:FireServer("SetSize", i / 10, nil)
					task.wait()
				end
			end
		end
	end)

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		game:GetService("ReplicatedStorage").FreeCommandsRemotes.Action:FireServer("SetSkin", "Justus152", nil)
	end)

	local tbl25 = {
		"maia_Huta",
		"kawen_wed",
		"r_567gr",
		"Asma9097",
		"Pizza556678",
		"Sherif_mm22",
		"Wateen101sd",
		"6lix9",
		"lia_nn22",
		"ElanSalah166",
		"orjoinn",
		"leanq123123",
		"Elien234",
		"sickbeing",
		"RasNvv",
		"Pyscho_19g",
		"Froggygirl481",
		"soso_dsa",
		"MM_FRL123",
		"hadyouever417",
		"F73I",
		"Hamo_Gming",
		"Keungulan",
		"Axarrios",
		"inurees",
		"xvcxzxcvz",
		"Insomn1ousxSoul",
		"finaldaydream",
		"hamzaelageb",
		"2ixii_10",
		"Zleenix",
		"r3_ty",
		"J773Y",
		"blastingheavymetal",
		"2kpbing",
		"Hasoon_sad",
		"hajajauuuui",
		"lTrookl",
		"6vadey",
		"jeffypoo11",
		"MyObituaryy",
		"goxigdgktr",
		"loo_mp",
		"X1S4LeHX1",
		"NOWAF_20013",
		"sarahzuwara",
		"dtjtid99",
		"Yfxh23",
		"Lameesppw",
		"malalk_55",
		"Ti_hg123",
		"no9nf",
		"7ixr57",
		"MM2_2ooom",
		"B_alanzi2",
		"Bozo_1028",
		"TOTO_2399",
		"wrshdtr",
		"GORY123_6",
		"BASANT_67",
		"Layan_jasoo",
		"ij5_50",
		"Slay7mariana",
		"8ilx_x17",
		"Lol_qdfh",
		"jsugduhdhgfh",
		"layanharthikg",
		"Rand7914",
		"1s_h8",
		"cute_bacon0814",
		"Crec731",
		"sxsx_123o",
		"seryoa445",
		"treeloopd_0",
		"lllllo_zz21",
		"1_MahmmadS",
		"Dksn797",
		"SXZXJHE",
		"1dkoo",
		"1fxcb",
		"anj8z5",
		"ha_adx",
		"S_dkgx505",
		"Htf505",
		"4d7hx1",
		"mnaef40",
		"ililx7cr7",
		"Baker_34599",
		"KSCAVH",
		"GamrrNoxlr12",
		"1liew1",
		"mapord3",
		"I77_bk",
		"KB_GKO",
		"hshsjnsnsbd",
		"Amany_826618",
		"5xli52",
		"Nouragfo",
		"myarfahad66",
		"Noryy89",
		"5xli52",
		"2icxze",
		"7_ililix7",
		"9rixii",
		"Noor_101a",
		"Hajr_4130",
		"511alotibii",
		"Bozo_1028",
		"GRRR1122",
		"Wasn99982",
		"olqllll",
		"fgfgb502",
		"xx2aa3",
		"7eirx",
		"Na29981",
		"noni_97z",
		"db12167",
		"4ilil51",
		"hjanze",
		"Lv2ii",
		"Ningbhhhu",
		"ookkhhllyy",
		"Jazzy789708",
		"hanymosa",
		"hsgjtdht",
		"7il061",
		"511_sde70",
		"3mon_971",
		"fnwl7",
		"nabableas",
		"3Ali2030",
		"1j1j23",
		"Lvea45",
		"1_MahmmadS",
		"n_i431",
		"1fxcb",
		"FlurnT",
		"a_abd6",
		"2jr1a",
		"L6_wo",
		"a3ziz12",
		"a1ja1j",
		"Omar_usis",
		"7mdmdkwt",
		"7xxul",
		"alvtbduxie",
		"8lix_738",
		"Oypq9",
		"MMXX2u",
		"vjj4a",
		"FAHAD_FHD",
		"7ixmkmkm",
		"1234osQA",
		"6eedn",
		"Farstt511",
		"1dkoo",
		"a84e3",
		"X17X3v",
	}

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm31.t2)

		if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			task.wait()

			while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				for _, item4 in ipairs(tbl25) do
					task.wait(0.1)
					if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(255, 0, 0) then
						game:GetService("ReplicatedStorage").FreeCommandsRemotes.Action:FireServer("SetSkin", item4, nil)
						continue
					end
					break
				end

				task.wait(1)
			end
		end
	end)
elseif game.PlaceId == 6165420832 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)
	local func52 = CreateButtonWithText
	getgenv().RainbowTjm3 = func52(scrollingFrame, "Spam_Skins", "مضاد راقدول", UDim2.new(0, 25, 0, 225), "ماب راقدول", 0)
	local func53 = CreateButtonWithText
	getgenv().RainbowTjm31 = func53(scrollingFrame, "Spam_Skins", "تفجير الغام", UDim2.new(0, 210, 0, 225), "ماب راقدول", 0)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm3.t2)

		if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				task.wait()

				pcall(function()
					if game.Players.LocalPlayer.isRagdoll.Value then
						game.Players.LocalPlayer.isRagdoll.Value = false
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
						game.Players.LocalPlayer.Character.Animate.Enabled = true
					end

					if game.Players.LocalPlayer.Character.Main.RagdollMe.Enabled then
						game.Players.LocalPlayer.Character.Main.RagdollMe.Enabled = false
					end
				end)
			end

			pcall(function()
				game.Players.LocalPlayer.Character.Main.RagdollMe.Enabled = true
			end)
		end
	end)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm31.t2)

		if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				task.wait()

				pcall(function()
					if game.Players.LocalPlayer.isRagdoll.Value then
						game.Players.LocalPlayer.isRagdoll.Value = false
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
						game.Players.LocalPlayer.Character.Animate.Enabled = true
					end
				end)

				for _, child in ipairs(workspace.MinefieldV2.Landmines.Mines:GetChildren()) do
					wait()

					pcall(function()
						if child:IsA("Model") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.WorldPivot
						end
					end)
				end
			end
		end
	end)
elseif game.CreatorId == 9642354 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)
	local func54 = CreateButtonWithText
	getgenv().RainbowTjm3 = func54(scrollingFrame, "Spam_Skins", "مضاد راقدول", UDim2.new(0, 25, 0, 225), "ماب راقدول", 0)
	local func55 = CreateButtonWithText
	getgenv().RainbowTjm31 = func55(scrollingFrame, "Spam_Skins", "تفجير الغام", UDim2.new(0, 210, 0, 225), "ماب راقدول", 0)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm3.t2)

		if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			SendNotify("System VR7", "تاكد انك واقف قبل لاتفعله", 5)

			while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				task.wait()

				pcall(function()
					if game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled then
						game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = false
					end
				end)
			end

			pcall(function()
				game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = true
			end)
		end
	end)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm31.t2)

		if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			SendNotify("System VR7", "تاكد انك واقف قبل لاتفعله", 5)

			while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				task.wait()

				pcall(function()
					if game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled then
						game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = false
					end
				end)

				for _, child in ipairs(workspace.Minefield.Mines:GetChildren()) do
					wait()

					pcall(function()
						if child:IsA("Model") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.WorldPivot
						end
					end)
				end
			end

			pcall(function()
				game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = true
			end)
		end
	end)
elseif game.PlaceId == 14201103742 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 10)
	local func56 = CreateButtonWithText
	getgenv().RainbowTjm3 = func56(scrollingFrame, "Ball_Fling", "فلنق كورة", UDim2.new(0, 25, 0, 225), "ماب المدرسة", 0)
	local func57 = CreateButtonWithText
	getgenv().RainbowTjm31 = func57(scrollingFrame, "Teleport_To_Parkour", "باركور", UDim2.new(0, 210, 0, 275), "ماب المدرسة", 0)
	local func58 = CreateButtonWithText
	getgenv().RainbowTjm32 = func58(scrollingFrame, "VehicleFling_Button", "فلنق دراجة", UDim2.new(0, 210, 0, 225), "ماب المدرسة", 0)
	local func59 = CreateButtonWithText
	getgenv().RainbowTjm33 = func59(scrollingFrame, "Teleport_To_Secret", "مكان سري", UDim2.new(0, 25, 0, 275), "ماب المدرسة", 0)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm3.t2)

		if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().loopfling = true

			if not getgenv().working then
				if workspace.Football:FindFirstChild("Football") then
					SendNotify("ملاحظة", "اذا اختفت الكورة سوف تجدها في الملعب", 5)
					Flinger(workspace.Football.Football)
				else
					SendNotify("خطا", "عذرا لايوجد كورة في السيرفر يرجى تغيير السيرفر", 5)
				end
			end
		else
			getgenv().loopfling = false
		end
	end)

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm32.t2)

		if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			SendNotify("ملاحظة", "هاذ الامر يطير اي شخص يصدم بدراجتك وانت تسوقها", 10)
			local n = 0.1

			while getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				task.wait()
				game:GetService("RunService").Heartbeat:Wait()
				local character = game.Players.LocalPlayer.Character
				character = character and character:FindFirstChild("HumanoidRootPart")

				if character then
					local velocity = character.Velocity
					character.Velocity = velocity * 1000 + Vector3.new(0, 1000, 0)
					game:GetService("RunService").RenderStepped:Wait()
					character.Velocity = velocity
					game:GetService("RunService").Stepped:Wait()
					character.Velocity = velocity + Vector3.new(0, n, 0)
					n = -n
				end

				for _, player in ipairs(game.Players:GetPlayers()) do
					if player ~= game.Players.LocalPlayer then
						for _, child in ipairs(player:GetChildren()) do
							if child:IsA("BasePart") then
								child.CanCollide = false
							end
						end
					end
				end
			end
		end
	end)

	getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
		TeleportTO(162, -89, 396, "pos", nil)
	end)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		TeleportTO(69, -358, -2326, "pos", nil)
	end)
elseif game.CreatorId == 637446655 and string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "Rob") or game.workspace:FindFirstChild("Arabic Stop Sign", true) then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func60 = CreateButtonWithText
	getgenv().RainbowTjm3 = func60(scrollingFrame, "Spam_Skins", "سبام سكنات", UDim2.new(0, 25, 0, 225), "شالية روب", 0)
	local func61 = CreateButtonWithText
	getgenv().RainbowTjm31 = func61(scrollingFrame, "Spam_Skins", "سبام اسماء", UDim2.new(0, 210, 0, 225), "شالية روب", 0)
	local func62 = CreateButtonWithText
	getgenv().RainbowTjm33 = func62(scrollingFrame, "Spam_Skins", "رمي الناس", UDim2.new(0, 25, 0, 425), "تحتاج كلبشة", 0)
	local func63 = CreateButtonWithText
	getgenv().RainbowTjm34 = func63(scrollingFrame, "Spam_Skins", "سحب الناس", UDim2.new(0, 25, 0, 275), "تحتاج كلبشة", 0)
	local func64 = CreateButtonWithText
	getgenv().RainbowTjm35 = func64(scrollingFrame5, "Bring_People", "سحب", UDim2.new(0, 25, 0, 500), "شالية روب", 0)
	local func65 = CreateButtonWithText
	getgenv().RainbowTjm41 = func65(scrollingFrame, "Spam_Skins", "تخريب الشات", UDim2.new(0, 210, 0, 375), "شالية روب", 0)
	local func66 = CreateButtonWithText
	getgenv().RainbowTjm36 = func66(scrollingFrame5, "Freeze_People", "تجميد", UDim2.new(0, 210, 0, 500), "شالية روب", 0)
	local func67 = CreateButtonWithText
	getgenv().RainbowTjm99 = func67(scrollingFrame, "Spam_Skins", "مضاد كلبشة", UDim2.new(0, 210, 0, 275), "شالية روب", 0)
	local func68 = CreateButtonWithText
	getgenv().RainbowTjm37 = func68(scrollingFrame, "Change_Skins", "تغيير سكنات القريبين", UDim2.new(0, 25, 0, 375), "تحتاج ادمن", 0)
	local func69 = CreateButtonWithText
	getgenv().RainbowTjm38 = func69(scrollingFrame, "Change_Size", "تكبير القريبين", UDim2.new(0, 25, 0, 325), "تحتاج ادمن", 0)
	local func70 = CreateButtonWithText
	getgenv().RainbowTjm40 = func70(scrollingFrame, "Sound_Skin", "سكن يطلع صوت", UDim2.new(0, 210, 0, 325), "شالية روب", 0)
	scrollingFrame5.CanvasSize = UDim2.new(0, 0, 1.6, 0)
	scrollingFrame.CanvasSize = UDim2.new(0, 0, 1.33, 0)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm3.t2)

		if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().loopSkins = true

			local tbl26 = {
				3698980491,
				2482733262,
				4869908886,
				4829727233,
				3924330309,
				4963378099,
				5749595748,
				2486880286,
				5121802170,
				5571034904,
				2534925226,
				1908093843,
				1695074412,
				1001234444,
				2738295433,
				5007493214,
				3536612888,
				1924926487,
				5496525496,
				2734003720,
				535060401,
				3438246078,
				1503840840,
				1758848324,
				2494484367,
				1650713618,
				2038507143,
				1908533564,
				4981871124,
				3073976304,
				5867473710,
				1916876322,
				2460301218,
				475746173,
				3639544277,
				3395753168,
				3808354214,
				2318056116,
				7209132441,
				35755428,
				66756597,
				2679721697,
				2050045875,
				2519670708,
				4235194382,
				3370593985,
				3620080414,
				2326191112,
				4956722605,
				1909916296,
				3314864649,
				2769746902,
				3704061128,
				3420661127,
				4699448973,
				4367063405,
				2758912697,
				2466468896,
				4734115317,
				2958617249,
				4834192573,
				5801021621,
				5626658182,
				4132839307,
				3218124495,
				4913090478,
				2452744987,
				2717570627,
				2479596912,
				4434189877,
				5411206081,
				3336172524,
				3335431880,
				2972884772,
				2771050226,
				3104193443,
				5232644719,
				4523866249,
				2619852340,
				3620729767,
				4803684054,
				5788731598,
				5357265092,
				2492437352,
				3017468200,
				4306262070,
				5868233200,
				4651664513,
				2955607544,
				1737946288,
				4451747675,
				3776677463,
				4502110305,
				5592637934,
				4591920267,
				5535903380,
				2266109788,
				4464471813,
				2600387006,
				2293539872,
				5479968451,
				3779259507,
				4020790582,
				3382742043,
				1991672777,
				5490972740,
				4367063405,
				2269923272,
				5713102512,
				2439951362,
				5750361112,
				1961352360,
				2546737188,
				1965234677,
				6232896470,
				5556309052,
				1945827451,
				2266109788,
				2220018722,
				2457573632,
				3250313747,
				4102506593,
				4800228003,
				5065586685,
				3219301469,
				5750361112,
				4758186111,
				5761622248,
				6156494691,
				4126309364,
				1548625484,
				2550030807,
				5434878393,
				5301581025,
				3104193443,
				5704844718,
				3620729767,
				1857997074,
				2519711707,
				5720381635,
				2204027528,
				3276420293,
				3643204820,
				3247414642,
				2209338035,
				3620729767,
				5092277391,
				3747668036,
				4338261710,
				5769829905,
				2512573032,
				4522837151,
				2428159367,
				5623922812,
				5516227749,
				4061510807,
				4016126804,
				2619852340,
				5828073482,
				5623922812,
				4625752819,
			}

			while getgenv().loopSkins and task.wait() do
				local n = 0

				for _, item5 in ipairs(tbl26) do
					if getgenv().loopSkins then
						task.wait(0.2)
						n += 1

						if not (n >= 25) then
							game.ReplicatedStorage.PrivateCommands.Char:FireServer(item5)
							continue
						else
							game.ReplicatedStorage.PrivateCommands.Char:FireServer(1681347188)
							wait(2.5)
							local n2 = 0

							if getgenv().loopSkins then
								n = n2
								game.ReplicatedStorage.PrivateCommands.Char:FireServer(item5)
								continue
							end
						end
					end

					break
				end
			end
		else
			getgenv().loopSkins = false
		end
	end)

	getgenv().RainbowTjm99.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm99.t2)

		if getgenv().RainbowTjm99.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm99.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				wait()

				pcall(function()
					game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
					game.Players.LocalPlayer.Character.Humanoid.Sit = true
				end)
			end
		else
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
		end
	end)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		if ok then
			ChangeToggleColor(getgenv().RainbowTjm31.t2)

			local tbl27 = {
				"الي قدامي وصخ",
				"انا عمك",
				"تاج راسك",
				"بنعالي شالية روب",
				"مكافحة الرول",
				"ضاغطهم🔥",
				"تخريب على الرول",
				"بنعالي صاحب الماب ومشرفينه",
				"افضل هاك ايفون اختصاره دسكورد vr7",
				"رجلي فيك",
				"يلا انبح",
				"خليك مضغوط مني",
				"دز امها بس",
				"الي قدامي كلب",
				"بنعالي كل الي ضاغطهم✌️",
				"VR7 عمك",
				"انا فحل الماب",
				"منبع المرجله هنا",
			}

			local changeName = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.Title.ChangeName
			local input = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.Title.Input

			while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and task.wait(1) do
				local entry9 = tbl27[math.random(1, #tbl27)]
				local n = math.random(1, #game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.Title.Colors:GetChildren())
				input.Text = entry9

				for i, child in ipairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.Title.Colors:GetChildren()) do
					if i == n and child:IsA("Frame") then
						firesignal(child.Button.MouseButton1Click)
						break
					end
				end

				firesignal(changeName.MouseButton1Click)

				pcall(function()
					workspace.Camera.FieldOfView = 70
					game:GetService("Lighting").Blur:Destroy()
				end)

				if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.Visible then
					game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.Visible = false
				end
			end
		else
			SendNotify("System VR7", "للاسف الهاك الي تستخدمة لايدعم هل ميزة", 5)
		end
	end)

	getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
		if GetCuff() then
			ChangeToggleColor(getgenv().RainbowTjm33.t2)

			if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					getgenv().Cuff = { Bring = false, Throw = false }
					wait(1)
				end

				getgenv().Cuff = { Bring = true, Throw = true }
				Cuffbring()
			else
				getgenv().Cuff = { Bring = false, Throw = false }
			end

			return
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "لازم يكون معك كلبشة", Duration = 5 })
	end)

	getgenv().RainbowTjm34.t2.MouseButton1Click:Connect(function()
		if GetCuff() then
			ChangeToggleColor(getgenv().RainbowTjm34.t2)

			if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					getgenv().Cuff = { Bring = false, Throw = false }
					wait(1)
				end

				getgenv().Cuff = { Bring = true, Throw = false }
				Cuffbring()
			else
				getgenv().Cuff = { Bring = false, Throw = false }
			end

			return
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "لازم يكون معك كلبشة", Duration = 5 })
	end)

	getgenv().RainbowTjm35.t2.MouseButton1Click:Connect(function()
		pcall(function()
			if name ~= nil then
				local cuff2 = GetCuff()
				if not cuff2 then
					SendNotify("System VR7", "لازم يكون معك كلبشة", 5)
					return
				end

				if Players[name].Character.UpperTorso.Anchored then
					SendNotify("System VR7", "الاعب متجمد او مكلبش بل اساس", 5)
					return
				end

				if cuff2 and cuff2.Parent == game.Players.LocalPlayer.Backpack then
					cuff2.Parent = game.Players.LocalPlayer.Character
				end

				wait()
				cuff2.RemoteEvent:FireServer(Players[name].Character.HumanoidRootPart, "Cuff")
				wait(0.2)
				cuff2.RemoteEvent:FireServer(Players[name].Character.HumanoidRootPart, "Cuff")
			end
		end)
	end)

	getgenv().RainbowTjm41.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm41.t2)

		if getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			spawn(function()
				while getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
					task.wait()

					spawn(function()
						while getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
							task.wait()
							if getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
								Send(".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r.")
								continue
							end
							break
						end
					end)
				end
			end)
		end
	end)

	getgenv().RainbowTjm36.t2.MouseButton1Click:Connect(function()
		pcall(function()
			if name ~= nil then
				local cuff3 = GetCuff()
				if not cuff3 then
					SendNotify("System VR7", "لازم يكون معك كلبشة", 5)
					return
				end

				if Players[name].Character.UpperTorso.Anchored then
					SendNotify("System VR7", "الاعب متجمد او مكلبش بل اساس", 5)
					return
				end

				if cuff3 and cuff3.Parent == game.Players.LocalPlayer.Backpack then
					cuff3.Parent = game.Players.LocalPlayer.Character
				end

				cuff3.RemoteEvent:FireServer(Players[name].Character.HumanoidRootPart, "Cuff")
				wait(0.01)
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(Prefix .. "Char me 40")
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(Prefix .. "unchar")
			end
		end)
	end)

	getgenv().RainbowTjm37.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local localPlayer4 = GetNearPlayers(game.Players.LocalPlayer, 15)

			for _, value47 in pairs(localPlayer4) do
				task.wait()
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Char " .. value47.Name .. " Justus152")
			end
		end)
	end)

	getgenv().RainbowTjm38.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local localPlayer5 = GetNearPlayers(game.Players.LocalPlayer, 15)

			for _, value48 in pairs(localPlayer5) do
				task.wait()
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Size " .. value48.Name .. " 3")
			end
		end)
	end)

	getgenv().RainbowTjm40.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
			game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Char me Justus152")
		end)
	end)
elseif game.PlaceId == 12123568130 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func71 = CreateButtonWithText
	getgenv().RainbowTjm3 = func71(scrollingFrame, "Ball_Fling", "فلنق كورة", UDim2.new(0, 25, 0, 225), "ادمن اولاد وبنات", 0)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm3.t2)

		if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().loopfling = true

			if not getgenv().working then
				if workspace:FindFirstChild("Ball", true) then
					SendNotify("ملاحظة", "اذا اختفت الكورة سوف تجدها في الملعب", 5)
					Flinger(workspace:FindFirstChild("Ball", true))
				else
					SendNotify("خطا", "عذرا لايوجد كورة في السيرفر يرجى تغيير السيرفر", 5)
				end
			end
		else
			getgenv().loopfling = false
		end
	end)
elseif game.PlaceId == 88950799188393 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func72 = CreateButtonWithText
	getgenv().RainbowTjm3 = func72(scrollingFrame, "Ball_Fling", "فلنق كورة", UDim2.new(0, 25, 0, 225), "ادمن اولاد وبنات", 0)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm3.t2)

		if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().loopfling = true

			if not getgenv().working then
				if workspace:FindFirstChild("Ball", true) then
					SendNotify("ملاحظة", "اذا اختفت الكورة سوف تجدها في الملعب", 5)
					Flinger(workspace["Mini Football stadium"].Ball)
				else
					SendNotify("خطا", "عذرا لايوجد كورة في السيرفر يرجى تغيير السيرفر", 5)
				end
			end
		else
			getgenv().loopfling = false
		end
	end)
elseif game.PlaceId == 4924922222 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func73 = CreateButtonWithText
	getgenv().RainbowTjm31 = func73(scrollingFrame5, "Bring_People", "سحب", UDim2.new(0, 210, 0, 500), "ماب البيوت", 0)
	local func74 = CreateButtonWithText
	getgenv().RainbowTjm32 = func74(scrollingFrame5, "Bring_People", "قتل", UDim2.new(0, 25, 0, 500), "ماب البيوت", 0)
	local func75 = CreateButtonWithText
	getgenv().RainbowTjm33 = func75(scrollingFrame, "Spam_Skins", "سبام اسماء", UDim2.new(0, 25, 0, 225), "ماب البيوت", 0)
	scrollingFrame5.CanvasSize = UDim2.new(0, 0, 1.6, 0)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		if name ~= nil then
			BrookBring(name, true)
		end
	end)

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		if name ~= nil then
			BrookBring(name, false)
		end
	end)

	getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm33.t2)

		local tbl28 = {
			"اشقك",
			"الي قدامي وصخ",
			"اهينك",
			"نقز بس",
			"انا عمك",
			"اركبك",
			"نياككم",
			"تاج راسك",
			"بنعالي ابوك",
			"مكافحة الرول",
			"ضاغطهم🔥",
			"تخريب على الرول",
			"بنعالي صاحب الماب ومشرفينه",
			"رجلي فيك",
			"يلا انبح",
			"خليك مضغوط مني",
			"دز امها بس",
			"الي قدامي كلب",
			"بنعالي كل الي ضاغطهم ✌️",
			"انا فحل الماب",
			"منبع المرجله هنا",
		}

		if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			local n = 0

			while getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and task.wait(0.3) do
				local entry10 = tbl28[math.random(1, #tbl28)]
				game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", entry10)
				n += 1

				if n >= 5 then
					local random = math.random
					game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", Color3.new(math.random(0, 1), math.random(0, 1), random(0, 1)))
					n = 0
				end
			end
		end
	end)
elseif game.PlaceId == 11984550654 then
	local func76 = CreateButtonWithText
	getgenv().RainbowTjm31 = func76(scrollingFrame, "Spam_Skins", "سحب كنوز قريبه", UDim2.new(0, 25, 0, 225), "ماب الكشته", 0)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm31.t2)

		if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and wait(0.2) do
				for _, child in ipairs(workspace.K_Z:GetChildren()) do
					if child.Transparency == 0 and child:FindFirstChild("ClickDetector") then
						fireclickdetector(child.ClickDetector)
					end
				end
			end
		end
	end)
elseif game.PlaceId == 335760407 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func77 = CreateButtonWithText
	getgenv().RainbowTjm3 = func77(scrollingFrame, "StreetSoccer", "سكربت كورة", UDim2.new(0, 25, 0, 225), "TPS:Street Soccer", 0)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Tps%3A%20Street%20Soccer"))()
		VR7:Destroy()
	end)
elseif game.CreatorId == 36069034 and string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "بلانتوم") then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func78 = CreateButtonWithText
	getgenv().RainbowTjm31 = func78(scrollingFrame, "Spam_Skins", "فارم نقاط", UDim2.new(0, 210, 0, 225), "بلانتوم العسكرية", 0)
	local func79 = CreateButtonWithText
	getgenv().RainbowTjm32 = func79(scrollingFrame, "Spam_Skins", "فتح كل الابواب", UDim2.new(0, 25, 0, 225), "بلانتوم العسكرية", 0)

	spawn(function()
		while true do
			pcall(function()
				game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript.Disabled = true
				local client = game.Players.LocalPlayer.Character.Client

				if client then
					wait(0.1)
					client:Destroy()
				end
			end)

			wait(0.001)
		end
	end)

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm32.t2)

		if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				for _, descendant in ipairs(workspace:GetDescendants()) do
					if descendant.Name == "ForOpen" then
						task.wait()
						descendant.Color = Color3.fromRGB(31, 255, 16)
						descendant.CanCollide = false
					end
				end

				task.wait(4)
			end

			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant.Name == "ForOpen" then
					task.wait()
					descendant.Color = Color3.fromRGB(255, 0, 0)
					descendant.CanCollide = true
				end
			end
		end
	end)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm31.t2)

		if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().smallloop = false
			local cFrame2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

			while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				local localPlayer2 = game:GetService("Players").LocalPlayer
				local character = localPlayer2.Character
				local humanoidRootPart = character and character:WaitForChild("HumanoidRootPart")
				localPlayer2.PlayerGui.Notife.LocalScript.Enabled = false
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("StartMissio"):FireServer()
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AFKEvent"):FireServer(false)

				if not getgenv().Clone then
					local area1 = workspace.Area1
					getgenv().Clone = area1:Clone()
					local value49 = workspace
					getgenv().Clone.Parent = value49
					getgenv().Clone.CFrame = getgenv().Clone.CFrame * CFrame.new(0, -30, 0)
					getgenv().Clone.CanCollide = true
				end

				humanoidRootPart.CFrame = getgenv().Clone.CFrame * CFrame.new(0, 3, 0)
				task.wait(0.2)

				if not (localPlayer2.Backpack:FindFirstChild("BoxTool", true) or character:FindFirstChild("BoxTool", true)) then
					humanoidRootPart.CFrame = workspace.Mession1.DeliveryBox.CFrame * CFrame.new(0, -2, 0)
				else
					getgenv().smallloop = true

					task.spawn(function()
						while getgenv().smallloop and getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
							task.wait(0.1)
							local boxTool = localPlayer2.Backpack:FindFirstChild("BoxTool", true)

							if boxTool then
								boxTool.Parent = character
							end
						end
					end)

					task.wait(6.8)
					humanoidRootPart.CFrame = CFrame.new(workspace.Area1.Position + Vector3.new(0, -1, 0))
					getgenv().smallloop = false
				end

				task.wait(0.3)
			end

			LP.PlayerGui.Notife.LocalScript.Enabled = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame2
		end
	end)
elseif game.PlaceId == 98436449846968 or game.PlaceId == 97316921159471 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func80 = CreateButtonWithText
	getgenv().RainbowTjm31 = func80(scrollingFrame, "Spam_Skins", "سكنات عشوائية", UDim2.new(0, 210, 0, 225), "شالية رعد", 0)
	local func81 = CreateButtonWithText
	getgenv().RainbowTjm32 = func81(scrollingFrame, "Spam_Skins", "تكبير وتصغير", UDim2.new(0, 25, 0, 225), "شالية رعد", 0)
	local tbl29 = {}

	pcall(function()
		for _, descendant in ipairs(game:GetService("Players").LocalPlayer.PlayerGui.SkinsSelectorUI:GetDescendants()) do
			if descendant:IsA("TextLabel") and string.sub(descendant.Text, 1, 1) == "@" then
				local cleaned = string.gsub(descendant.Text, "[@%s]", "")
				table.insert(tbl29, cleaned)
			end
		end
	end)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm31.t2)

		if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().loopSkins = true
			if tbl29 == {} then
				return
			end

			while getgenv().loopSkins and task.wait() do
				for _, item6 in ipairs(tbl29) do
					if getgenv().loopSkins then
						task.wait(0.2)
						game:GetService("ReplicatedStorage"):WaitForChild("ApplySkinRE"):FireServer(item6)
						if getgenv().loopSkins then
							continue
						end
					end

					break
				end
			end
		else
			getgenv().loopSkins = false
		end
	end)

	getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm32.t2)

		if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			local n = 1

			while getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and task.wait() do
				game:GetService("ReplicatedStorage"):WaitForChild("ChangeSizeEvent"):FireServer("Set", n)
				game:GetService("ReplicatedStorage"):WaitForChild("ChangeSizeEvent"):FireServer("Reset", n)
				n = n == 1 and 2 or 1
			end
		end
	end)
elseif game.workspace:FindFirstChild("MUR | India", true) or game.CreatorId == 500460512 and string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "Mohammad") or game.CreatorId == 1075567261 and string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "Mohammad") then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func82 = CreateButtonWithText
	getgenv().RainbowTjm31 = func82(scrollingFrame, "Spam_Skins", "اسماء عشوائية", UDim2.new(0, 210, 0, 225), "شالية محمد", 0)
	local func83 = CreateButtonWithText
	getgenv().RainbowTjm33 = func83(scrollingFrame, "Spam_Skins", "رمي الناس", UDim2.new(0, 25, 0, 225), "شالية محمد", 0)
	local func84 = CreateButtonWithText
	getgenv().RainbowTjm34 = func84(scrollingFrame, "Spam_Skins", "سحب الناس", UDim2.new(0, 25, 0, 275), "شالية محمد", 0)
	local func85 = CreateButtonWithText
	getgenv().RainbowTjm35 = func85(scrollingFrame5, "Bring_People", "سحب", UDim2.new(0, 210, 0, 500), "شالية محمد", 0)
	local func86 = CreateButtonWithText
	getgenv().RainbowTjm30 = func86(scrollingFrame5, "Glitch_People", "تعليق", UDim2.new(0, 25, 0, 500), "ادمن وكلبشة", 0)
	local func87 = CreateButtonWithText
	getgenv().RainbowTjm36 = func87(scrollingFrame5, "Freeze_People", "تجميد", UDim2.new(0, 25, 0, 550), "شالية محمد", 0)
	local func88 = CreateButtonWithText
	getgenv().RainbowTjm37 = func88(scrollingFrame, "Change_Skins", "تغيير سكنات القريبين", UDim2.new(0, 25, 0, 375), "تحتاج ادمن", 0)
	local func89 = CreateButtonWithText
	getgenv().RainbowTjm50 = func89(scrollingFrame, "Spam_Skins", "تجميد الناس", UDim2.new(0, 25, 0, 425), "تحتاج ادمن", 0)
	local func90 = CreateButtonWithText
	getgenv().RainbowTjm51 = func90(scrollingFrame, "Spam_Skins", "خلي الناس كلاب", UDim2.new(0, 210, 0, 425), "تحتاج ادمن", 0)
	local func91 = CreateButtonWithText
	getgenv().RainbowTjm41 = func91(scrollingFrame, "Spam_Skins", "تخريب الشات", UDim2.new(0, 210, 0, 375), "شالية محمد", 0)
	local func92 = CreateButtonWithText
	getgenv().RainbowTjm38 = func92(scrollingFrame, "Change_Size", "تكبير القريبين", UDim2.new(0, 25, 0, 325), "تحتاج ادمن", 0)
	local func93 = CreateButtonWithText
	getgenv().RainbowTjm39 = func93(scrollingFrame, "Spam_Skins", "مضاد كلبشة", UDim2.new(0, 210, 0, 275), "شاليه محمد", 0)
	local func94 = CreateButtonWithText
	getgenv().RainbowTjm40 = func94(scrollingFrame, "Sound_Skin", "سكن يطلع صوت", UDim2.new(0, 210, 0, 325), "شاليه محمد", 0)
	scrollingFrame5.CanvasSize = UDim2.new(0, 0, 1.7, 0)
	scrollingFrame.CanvasSize = UDim2.new(0, 0, 1.34, 0)

	getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
		if ok then
			ChangeToggleColor(getgenv().RainbowTjm31.t2)

			local tbl30 = {
				"الي قدامي وصخ",
				"اهينك",
				"نقز بس",
				"انا عمك",
				"نياككم",
				"تاج راسك",
				"بنعالي شالية محمد",
				"مكافحة الرول",
				"ضاغطهم🔥",
				"تخريب على الرول",
				"بنعالي صاحب الماب ومشرفينه",
				"رجلي فيك",
				"يلا انبح",
				"خليك مضغوط مني",
				"دز امها بس",
				"الي قدامي كلب",
				"بنعالي كل الي ضاغطهم ✌️",
				"انا فحل الماب",
				"منبع المرجله هنا",
			}

			local changeName = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.ChangeName
			local input = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Input

			if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				getgenv().ChangeName = true

				while getgenv().ChangeName do
					game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HiddenCommands.Visible = false
					input.Text = tbl30[math.random(1, #tbl30)]

					if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Colors.bluelight.hit_box:FindFirstChild("UIStroke") then
						firesignal(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Colors.bluelight.hit_box.MouseButton1Click)
					end

					firesignal(changeName.MouseButton1Click)
					game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HiddenCommands.Visible = false
					task.wait(1)
					game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HiddenCommands.Visible = false
				end

				SendNotify("System VR7", "ملاحظة اذا الاسم معلق هاذ قلتش من الماب", 5)
			else
				getgenv().ChangeName = false
			end
		else
			SendNotify("System VR7", "للاسف الهاك الي تستخدمة لايدعم هل ميزة", 5)
		end
	end)

	getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
		if GetCuff() then
			ChangeToggleColor(getgenv().RainbowTjm33.t2)

			if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					getgenv().Cuff = { Bring = false, Throw = false }
					wait(1)
				end

				getgenv().Cuff = { Bring = true, Throw = true }
				Cuffbring()
			else
				getgenv().Cuff = { Bring = false, Throw = false }
			end

			return
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "لازم يكون معك كلبشة", Duration = 5 })
	end)

	getgenv().RainbowTjm34.t2.MouseButton1Click:Connect(function()
		if GetCuff() then
			ChangeToggleColor(getgenv().RainbowTjm34.t2)

			if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					getgenv().Cuff = { Bring = false, Throw = false }
					wait(1)
				end

				getgenv().Cuff = { Bring = true, Throw = false }
				Cuffbring()
			else
				getgenv().Cuff = { Bring = false, Throw = false }
			end

			return
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "لازم يكون معك كلبشة", Duration = 5 })
	end)

	getgenv().RainbowTjm30.t2.MouseButton1Click:Connect(function()
		if name ~= nil and not getgenv().GlitchingStarted then
			pcall(function()
				getgenv().GlitchingStarted = true

				spawn(function()
					wait(4)

					if getgenv().GlitchingStarted then
						getgenv().GlitchingStarted = false
					end
				end)

				if not game.Players[name].Character.HumanoidRootPart then
					return
				end
				local cFrame2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				local cuff4 = GetCuff()
				if not cuff4 then
					game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "لازم يكون معك كلبشة", Duration = 5 })
					return
				end

				if cuff4 and cuff4.Parent == game.Players.LocalPlayer.Backpack then
					cuff4.Parent = game.Players.LocalPlayer.Character
				end

				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[name].Character.HumanoidRootPart.CFrame
				wait()
				cuff4.RemoteEvent:FireServer(game.Players[name].Character.HumanoidRootPart, "Cuff")
				wait(0.01)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1e18, 0)
				wait(0.2)
				cuff4.RemoteEvent:FireServer(game.Players[name].Character.HumanoidRootPart, "Cuff")
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "re " .. game.Players[name].Name)
				wait(0.01)

				for i = 1, 10 do
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame2
				end

				if cuff4 and cuff4.Parent == game.Players.LocalPlayer.Character then
					cuff4.Parent = game.Players.LocalPlayer.Backpack
				end

				getgenv().GlitchingStarted = false
			end)
		end
	end)

	getgenv().RainbowTjm35.t2.MouseButton1Click:Connect(function()
		pcall(function()
			if name ~= nil then
				local cuff5 = GetCuff()
				if not cuff5 then
					SendNotify("System VR7", "لازم يكون معك كلبشة", 5)
					return
				end

				if Players[name].Character.UpperTorso.Anchored then
					SendNotify("System VR7", "الاعب متجمد او مكلبش بل اساس", 5)
					return
				end

				if cuff5 and cuff5.Parent == game.Players.LocalPlayer.Backpack then
					cuff5.Parent = game.Players.LocalPlayer.Character
				end

				wait()
				cuff5.RemoteEvent:FireServer(Players[name].Character.HumanoidRootPart, "Cuff")
				wait(0.2)
				cuff5.RemoteEvent:FireServer(Players[name].Character.HumanoidRootPart, "Cuff")
			end
		end)
	end)

	getgenv().RainbowTjm36.t2.MouseButton1Click:Connect(function()
		pcall(function()
			if name ~= nil then
				local cuff6 = GetCuff()
				if not cuff6 then
					SendNotify("System VR7", "لازم يكون معك كلبشة", 5)
					return
				end

				if Players[name].Character.UpperTorso.Anchored then
					SendNotify("System VR7", "الاعب متجمد او مكلبش بل اساس", 5)
					return
				end

				if cuff6 and cuff6.Parent == game.Players.LocalPlayer.Backpack then
					cuff6.Parent = game.Players.LocalPlayer.Character
				end

				cuff6.RemoteEvent:FireServer(Players[name].Character.HumanoidRootPart, "Cuff")
				wait(0.01)
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Char me 40")
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "unchar")
			end
		end)
	end)

	getgenv().RainbowTjm37.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local localPlayer6 = GetNearPlayers(game.Players.LocalPlayer, 15)

			for _, value50 in pairs(localPlayer6) do
				task.wait()
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Char " .. value50.Name .. " Justus152")
			end
		end)
	end)

	getgenv().RainbowTjm50.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm50.t2)

		if getgenv().RainbowTjm50.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.Notices.Visible = false
			getgenv().HideNotButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)

			while getgenv().RainbowTjm50.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				local func95 = ipairs
				local Players2 = game:GetService("Players")

				for _, player in func95(Players2:GetPlayers()) do
					local substr = string.sub(string.lower(player.Name), 1, 3) ~= "nan" and player ~= game.Players.LocalPlayer

					if substr then
						local animator = player.Character and player.Character:FindFirstChildOfClass("Humanoid") and player.Character.Humanoid:FindFirstChildOfClass("Animator")

						if animator then
							local function func96()
								for _, getPlayingAnimationTrack3 in ipairs(player.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
									if getPlayingAnimationTrack3.Animation and getPlayingAnimationTrack3.Animation.AnimationId == "rbxassetid://92587731065850" then
										return true
									end
								end

								return false
							end

							animator = func96()
						end

						substr = not animator
					end

					if substr then
						game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.RequestCommandSilent:InvokeServer(text .. "aura " .. player.Name)
					end
				end

				task.wait(0.01)
			end
		end
	end)

	getgenv().RainbowTjm51.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm51.t2)

		if getgenv().RainbowTjm51.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.Notices.Visible = false
			getgenv().HideNotButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)

			while getgenv().RainbowTjm51.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				local func97 = ipairs
				local Players2 = game:GetService("Players")

				for _, player in func97(Players2:GetPlayers()) do
					local substr2 = string.sub(string.lower(player.Name), 1, 3) ~= "nan" and player ~= game.Players.LocalPlayer

					if substr2 then
						local animator = player.Character and player.Character:FindFirstChildOfClass("Humanoid") and player.Character.Humanoid:FindFirstChildOfClass("Animator")

						if animator then
							local function func98()
								for _, getPlayingAnimationTrack4 in ipairs(player.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
									if getPlayingAnimationTrack4.Animation and getPlayingAnimationTrack4.Animation.AnimationId == "rbxassetid://114731495347458" then
										return true
									end
								end

								return false
							end

							animator = func98()
						end

						substr2 = not animator
					end

					if substr2 then
						game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.RequestCommandSilent:InvokeServer(text .. "dog " .. player.Name)
					end
				end

				task.wait(0.01)
			end
		end
	end)

	getgenv().RainbowTjm41.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm41.t2)

		if getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			spawn(function()
				while getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
					task.wait()

					spawn(function()
						while getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
							task.wait()
							if getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
								Send(".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r.")
								continue
							end
							break
						end
					end)
				end
			end)
		end
	end)

	getgenv().RainbowTjm40.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
			game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Char me Justus152")
		end)
	end)

	getgenv().RainbowTjm38.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local localPlayer7 = GetNearPlayers(game.Players.LocalPlayer, 15)

			for _, value51 in pairs(localPlayer7) do
				task.wait()
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Size " .. value51.Name .. " 3")
			end
		end)
	end)

	getgenv().RainbowTjm39.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm39.t2)

		if getgenv().RainbowTjm39.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm39.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				wait()

				pcall(function()
					game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
					game.Players.LocalPlayer.Character.Humanoid.Sit = true
				end)
			end
		else
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
		end
	end)
elseif game.PlaceId == 16796468251 then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func99 = CreateButtonWithText
	getgenv().RainbowTjm3 = func99(scrollingFrame, "Spam_Skins", "God Mode", UDim2.new(0, 25, 0, 225), "اكادمية دراجون", 0)

	spawn(function()
		while true do
			wait(GetPing() + 0.1)

			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Client") then
					wait(2)
					game.Players.LocalPlayer.Character:FindFirstChild("Client"):Destroy()
				end
			end)
		end
	end)

	getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm3.t2)

		if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			getgenv().God = true

			while getgenv().God do
				task.wait()

				pcall(function()
					if not game.Players.LocalPlayer.Character:FindFirstChild("ForceField", true) then
						local cFrame2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TeamChange"):FireServer(tostring(game.Players.LocalPlayer.Team))

						while true do
							task.wait()

							if game.Players.LocalPlayer.Character:FindFirstChild("ForceField", true) then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame2
							end

							if not game.Players.LocalPlayer.Character:FindFirstChild("ForceField", true) then
								continue
							end
							break
						end
					end
				end)
			end
		else
			getgenv().God = false
		end
	end)
elseif game.workspace:FindFirstChild("Rtx Trash", true) then
	SendNotify("ملاحظة", "هذا الماب مدعوم من السكربت توجد ميزات خاصه بلماب", 5)
	local func100 = CreateButtonWithText
	getgenv().RainbowTjm41 = func100(scrollingFrame, "Spam_Skins", "تخريب الشات", UDim2.new(0, 25, 0, 225), "هات وهات", 0)
	local func101 = CreateButtonWithText
	getgenv().RainbowTjm99 = func101(scrollingFrame, "Spam_Skins", "مضاد كلبشة", UDim2.new(0, 210, 0, 225), "هات وهات", 0)
	local func102 = CreateButtonWithText
	getgenv().RainbowTjm37 = func102(scrollingFrame, "Change_Skins", "تغيير سكنات القريبين", UDim2.new(0, 210, 0, 325), "تحتاج ادمن", 0)
	local func103 = CreateButtonWithText
	getgenv().RainbowTjm33 = func103(scrollingFrame, "Spam_Skins", "رمي الناس", UDim2.new(0, 25, 0, 375), "هات وهات", 0)
	local func104 = CreateButtonWithText
	getgenv().RainbowTjm34 = func104(scrollingFrame, "Spam_Skins", "سحب الناس", UDim2.new(0, 25, 0, 275), "هات وهات", 0)
	local func105 = CreateButtonWithText
	getgenv().RainbowTjm38 = func105(scrollingFrame, "Change_Size", "تكبير القريبين", UDim2.new(0, 25, 0, 325), "تحتاج ادمن", 0)
	local func106 = CreateButtonWithText
	getgenv().RainbowTjm40 = func106(scrollingFrame, "Sound_Skin", "سكن يطلع صوت", UDim2.new(0, 210, 0, 275), "هات وهات", 0)
	local func107 = CreateButtonWithText
	getgenv().RainbowTjm50 = func107(scrollingFrame, "Spam_Skins", "تجميد الناس", UDim2.new(0, 25, 0, 425), "تحتاج ادمن", 0)
	local func108 = CreateButtonWithText
	getgenv().RainbowTjm51 = func108(scrollingFrame, "Spam_Skins", "خلي الناس كلاب", UDim2.new(0, 210, 0, 375), "تحتاج ادمن", 0)
	scrollingFrame.CanvasSize = UDim2.new(0, 0, 1.34, 0)

	getgenv().RainbowTjm50.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm50.t2)

		if getgenv().RainbowTjm50.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.Notices.Visible = false
			getgenv().HideNotButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)

			while getgenv().RainbowTjm50.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				local func109 = ipairs
				local Players2 = game:GetService("Players")

				for _, player in func109(Players2:GetPlayers()) do
					local substr3 = string.sub(string.lower(player.Name), 1, 3) ~= "nan" and player ~= game.Players.LocalPlayer

					if substr3 then
						local animator = player.Character and player.Character:FindFirstChildOfClass("Humanoid") and player.Character.Humanoid:FindFirstChildOfClass("Animator")
						local flag23

						if animator then
							local function func110()
								for _, getPlayingAnimationTrack5 in ipairs(player.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
									if getPlayingAnimationTrack5.Animation and getPlayingAnimationTrack5.Animation.AnimationId == "rbxassetid://92587731065850" then
										return true
									end
								end

								return false
							end

							flag23 = func110()
						else
							flag23 = animator
						end

						substr3 = not flag23
					end

					if substr3 then
						game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.RequestCommandSilent:InvokeServer(text .. "aura " .. player.Name)
					end
				end

				task.wait(0.01)
			end
		end
	end)

	getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
		if GetCuff() then
			ChangeToggleColor(getgenv().RainbowTjm33.t2)

			if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					getgenv().Cuff = { Bring = false, Throw = false }
					wait(1)
				end

				getgenv().Cuff = { Bring = true, Throw = true }
				Cuffbring()
			else
				getgenv().Cuff = { Bring = false, Throw = false }
			end

			return
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "لازم يكون معك كلبشة", Duration = 5 })
	end)

	getgenv().RainbowTjm34.t2.MouseButton1Click:Connect(function()
		if GetCuff() then
			ChangeToggleColor(getgenv().RainbowTjm34.t2)

			if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					getgenv().Cuff = { Bring = false, Throw = false }
					wait(1)
				end

				getgenv().Cuff = { Bring = true, Throw = false }
				Cuffbring()
			else
				getgenv().Cuff = { Bring = false, Throw = false }
			end

			return
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "لازم يكون معك كلبشة", Duration = 5 })
	end)

	getgenv().RainbowTjm51.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm51.t2)

		if getgenv().RainbowTjm51.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.Notices.Visible = false
			getgenv().HideNotButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)

			while getgenv().RainbowTjm51.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				local func111 = ipairs
				local Players2 = game:GetService("Players")

				for _, player in func111(Players2:GetPlayers()) do
					local substr4 = string.sub(string.lower(player.Name), 1, 3) ~= "nan" and player ~= game.Players.LocalPlayer

					if substr4 then
						local animator = player.Character and player.Character:FindFirstChildOfClass("Humanoid") and player.Character.Humanoid:FindFirstChildOfClass("Animator")

						if animator then
							local function func112()
								for _, getPlayingAnimationTrack6 in ipairs(player.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
									if getPlayingAnimationTrack6.Animation and getPlayingAnimationTrack6.Animation.AnimationId == "rbxassetid://114731495347458" then
										return true
									end
								end

								return false
							end

							animator = func112()
						end

						substr4 = not animator
					end

					if substr4 then
						game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.RequestCommandSilent:InvokeServer(text .. "dog " .. player.Name)
					end
				end

				task.wait(0.01)
			end
		end
	end)

	getgenv().RainbowTjm38.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local localPlayer8 = GetNearPlayers(game.Players.LocalPlayer, 15)

			for _, value52 in pairs(localPlayer8) do
				task.wait()
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Size " .. value52.Name .. " 3")
			end
		end)
	end)

	getgenv().RainbowTjm99.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm99.t2)

		if getgenv().RainbowTjm99.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm99.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				wait()

				pcall(function()
					game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
					game.Players.LocalPlayer.Character.Humanoid.Sit = true
				end)
			end
		else
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
		end
	end)

	getgenv().RainbowTjm40.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
			game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Char me Justus152")
		end)
	end)

	getgenv().RainbowTjm37.t2.MouseButton1Click:Connect(function()
		pcall(function()
			local localPlayer9 = GetNearPlayers(game.Players.LocalPlayer, 15)

			for _, value53 in pairs(localPlayer9) do
				task.wait()
				local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
				game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Char " .. value53.Name .. " Justus152")
			end
		end)
	end)

	getgenv().RainbowTjm41.t2.MouseButton1Click:Connect(function()
		ChangeToggleColor(getgenv().RainbowTjm41.t2)

		if getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			while getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
					local n = 0

					repeat
						task.wait(0.6)
						n += 1
						Send("##########################################################################################################################")
						Send("######################################################################################################################################################################################")
					until n >= 8
				end

				task.wait(1)
			end
		end
	end)
end

if GetRank() and GetRank() ~= "Not Enabled" then
	local func113 = CreateButtonWithText
	getgenv().AdminSpamming = func113(scrollingFrame5, "Spamming_Commands", "نسخ اوامر", UDim2.new(0, 25, 0, 500), "تحتاج ادمن", 0)
	getgenv().Cmdbar_Button = Instance.new("TextButton")
	getgenv().Cmdbar_Button.Name = "Cmdbar_Button"
	getgenv().Cmdbar_Button.Parent = scrollingFrame
	getgenv().Cmdbar_Button.BackgroundTransparency = 0.3
	getgenv().Cmdbar_Button.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
	getgenv().Cmdbar_Button.BorderColor3 = Color3.fromRGB(r, g, b)
	getgenv().Cmdbar_Button.BorderSizePixel = 1
	getgenv().Cmdbar_Button.Position = UDim2.new(0, 25, 0, 24)
	getgenv().Cmdbar_Button.Size = UDim2.new(0, 30, 0, 30)
	local oswald = Enum.Font.Oswald
	getgenv().Cmdbar_Button.Font = oswald
	getgenv().Cmdbar_Button.Text = utf8.char(709)
	getgenv().Cmdbar_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().Cmdbar_Button.TextScaled = true
	getgenv().Cmdbar_Button.TextSize = 14
	getgenv().Cmdbar_Button.TextWrapped = true

	AdminSpamming_t2F = function()
		if name ~= nil then
			ChangeToggleColor(getgenv().AdminSpamming.t2)

			if getgenv().AdminSpamming.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
				SendNotify("System VR7", "يمكنك تغيير النسخ من الاعدادات", 5)

				while getgenv().AdminSpamming.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
					pcall(function()
						local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
						local fakeHead = Players[name].Character:FindFirstChild("FakeHead", true)

						if getgenv().AdminsCommandsInfo.Wormify then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Wormify " .. Players[name].Name)
							wait(0.23)
						elseif getgenv().AdminsCommandsInfo.Re then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "re " .. Players[name].Name)
							wait(0.23)
						elseif getgenv().AdminsCommandsInfo.Char then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "char " .. Players[name].Name .. " " .. getgenv().AdminsCommandsInfo.CharV)
							wait(0.23)
						elseif getgenv().AdminsCommandsInfo.Creepify then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Creepify " .. Players[name].Name .. " " .. getgenv().AdminsCommandsInfo.CharV)
							wait(0.23)
						elseif getgenv().AdminsCommandsInfo.FryDance then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "FryDance " .. Players[name].Name .. " " .. getgenv().AdminsCommandsInfo.CharV)
							wait(0.23)
						end

						local hdAdminTitle = Players[name].Character:FindFirstChild("HDAdminTitle", true)

						if getgenv().AdminsCommandsInfo.Title then
							if hdAdminTitle and hdAdminTitle.TextLabel.Text ~= tostring(getgenv().AdminsCommandsInfo.TitleV) then
								game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "titlepk " .. Players[name].Name .. " " .. tostring(getgenv().AdminsCommandsInfo.TitleV))
							elseif not hdAdminTitle then
								game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "titlepk " .. Players[name].Name .. " " .. tostring(getgenv().AdminsCommandsInfo.TitleV))
							end
						end

						if getgenv().AdminsCommandsInfo.Size then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "size " .. Players[name].Name .. " " .. getgenv().AdminsCommandsInfo.SizeV)
						end

						if getgenv().AdminsCommandsInfo.Height then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "height " .. Players[name].Name .. " " .. getgenv().AdminsCommandsInfo.HeightV)
						end

						if getgenv().AdminsCommandsInfo.Thin then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Thin " .. Players[name].Name)
						end

						if getgenv().AdminsCommandsInfo.Aura then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "aura " .. Players[name].Name)
						end

						if getgenv().AdminsCommandsInfo.Dog then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "dog " .. Players[name].Name)
						end

						if getgenv().AdminsCommandsInfo.Phase then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "phase " .. Players[name].Name)
						end

						if getgenv().AdminsCommandsInfo.Color then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "color " .. Players[name].Name .. " p")
						end

						if getgenv().AdminsCommandsInfo.Shine then
							pcall(function()
								wait(0.001)

								if not fakeHead then
									game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "shine " .. Players[name].Name)
								end
							end)
						end

						if getgenv().AdminsCommandsInfo.Sit then
							pcall(function()
								if Players[name].Character.Humanoid.Sit == false then
									game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Sit " .. Players[name].Name)
								end
							end)
						end

						if getgenv().AdminsCommandsInfo.Fat then
							game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "Fat " .. Players[name].Name)
						end
					end)

					wait(getgenv().ConfigData.AdminCmdSpeed)
				end
			end
		end
	end

	getgenv().AdminSpamming.t2.MouseButton1Click:Connect(AdminSpamming_t2F)
	local t2 = getgenv().AdminSpamming.t2

	getgenv().Cmdbar_Button.MouseButton1Click:Connect(function()
		if game:GetService("StarterGui"):FindFirstChild("HDAdminInterface") then
			if game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.CmdBar.Visible then
				game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.CmdBar.Visible = false
				getgenv().Cmdbar_Button.Text = utf8.char(709)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.CmdBar.Visible = true
				getgenv().Cmdbar_Button.Text = utf8.char(708)
			end
		end
	end)
end

CreateToggle(textButton11)
CreateClicker(getgenv().BackToHome)
CreateToggle(getgenv().MuteNoti)
CreateClicker(textButton9)
CreateClicker(textButton10)
CreateClicker(textButton8)
CreateClicker(getgenv().ChangeColor)
CreateClicker(getgenv().SaveColor)
CreateClicker(getgenv().AdminCommands_Button)
CreateToggle(getgenv().NoFlyAnim_Button)
CreateToggle(textButton23)
CreateClicker(textButton13)
CreateClicker(textButton14)
CreateClicker(textButton15)
CreateClicker(textButton16)
CreateClicker(getgenv().ToCheckpoint_Button)
CreateClicker(textButton19)
CreateClicker(textButton21)
CreateClicker(textButton22)
CreateToggle(textButton17)
CreateToggle(textButton20)
CreateToggle(textButton18)
CreateToggle(getgenv().InfJump_Button)
CreateToggle(textButton25)
CreateToggle(textButton24)
CreateToggle(textButton26)
CreateToggle(textButton27)
CreateToggle(textButton28)
CreateToggle(getgenv().BenxTargetV2_Button)
CreateToggle(textButton31)
CreateToggle(getgenv().AssSlapTarget_Button)
CreateToggle(getgenv().SuckingIt_Button)
CreateToggle(textButton32)
CreateToggle(textButton34)
CreateToggle(textButton33)
CreateToggle(textButton29)
CreateClicker(textButton30)
CreateClicker(getgenv().SaluteAnimationR15)
CreateClicker(getgenv().ArmcutAnimationR6)
CreateClicker(getgenv().BoxesAnimationR6)
CreateClicker(getgenv().FaintAnimationR6)
CreateClicker(getgenv().DoggyAnimationR15)
CreateClicker(getgenv().HugAnimationR15)
CreateClicker(getgenv().DolphinAnimationR15)
CreateClicker(getgenv().Sb3awyAnimationR15)
CreateClicker(getgenv().ZombieWalkAnimationR15)
CreateClicker(getgenv().FlingArmsAnimationR15)
CreateClicker(getgenv().SleepyAnimationR15)
CreateClicker(getgenv().CrazyAnimationR15)
CreateClicker(getgenv().B3b3AnimationR15)
CreateClicker(getgenv().HugAnimationR6)
CreateClicker(getgenv().BangAnimationR6)
CreateClicker(getgenv().InsaneAnimationR6)
CreateClicker(getgenv().BackpackHeadAnimationR6)
CreateClicker(getgenv().FloatingHeadAnimationR6)
CreateClicker(getgenv().JerkingAnimationR6)
CreateClicker(getgenv().IllusionAnimationR6)
CreateToggle(textButton37)
CreateToggle(textButton38)
CreateToggle(textButton39)
CreateToggle(textButton40)
CreateClicker(textButton41)
CreateClicker(textButton42)
CreateClicker(textButton43)
CreateClicker(textButton48)
CreateClicker(textButton47)
CreateClicker(getgenv().FreeEmotes_Button)
CreateClicker(textButton44)
CreateClicker(textButton45)
CreateClicker(textButton46)
task.wait(0.4)

ChangeSection = function(param36)
	SectionClickedName = string.split(param36.Name, "_")[1]

	for _, child in pairs(frame:GetChildren()) do
		if child.Name ~= param36.Name then
			child.Transparency = 0.5
		else
			child.Transparency = 0
		end
	end

	for _, child in pairs(imageLabel:GetChildren()) do
		if child:IsA("ScrollingFrame") then
			SectionForName = string.split(child.Name, "_")[1]

			if string.find(SectionClickedName, SectionForName) then
				child.Visible = true
			else
				child.Visible = false
			end
		end
	end

	func17(getgenv().ConfigData)
end

do
	local obj5 = game
	getgenv().p1 = loadstring(obj5:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Hehehe"))()
end

UpdateTarget = function(player5)
	pcall(function()
		local p1 = getgenv().p1 and getgenv().p1[tostring(game.Players.LocalPlayer.UserId)]
		local p12 = getgenv().p1 and getgenv().p1[tostring(player5.UserId)] or nil
		local premium = p1 and p1.Premium
		local op = p1 and p1.Op

		if player5 then
			if player5.UserId == 951402104 then
				ShowVR7Notification("VR7 Team", "لايمكنك اختيار الاعب لانه حسوني", "rbxassetid://136772242182146", 5)
				player5 = nil
			elseif p12 then
				local op2 = p12.Op
				local protected = p12.Protected

				if p12.Premium then
					player5 = nil
				elseif op2 and not premium then
					ShowVR7Notification("VR7 Team", "لايمكنك اختيار هذا الاعب\nلانه يملك رتبة دايموند", "rbxassetid://136772242182146", 5)
					player5 = nil
				else
					if protected then
						protected = not (premium or op)
					end

					if protected then
						ShowVR7Notification("VR7 Team", "لايمكنك اختيار هذا الاعب\nلانه يملك رتبة برونز", "rbxassetid://136772242182146", 5)
						player5 = nil
					end
				end
			end
		end
	end)

	func17(getgenv().ConfigData)

	if player5 ~= nil then
		getgenv().LastTargetted = {}
		name = player5.Name
		textBox7.Text = player5.Name
		local n = player5.AccountAge * 24 * 3600
		textLabel4.Text = "UserID: " .. player5.UserId .. "\nDisplay: @" .. player5.DisplayName .. "\nJoined: " .. os.date("%d-%m-%Y", os.time() - n) .. " [سنة/شهر/يوم]"
		imageLabel3.Image = Players:GetUserThumbnailAsync(player5.UserId, Enum.ThumbnailType:FromValue(2), Enum.ThumbnailSize.Size420x420)
		textButton29.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

		if TalkRepeater then
			TalkRepeater:Disconnect()
		end

		textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	else
		textBox7.Text = "@target..."
		textLabel4.Text = "UserID: \nDisplay: \nJoined: "
		imageLabel3.Image = "rbxassetid://10818605405"
		name = nil

		if textButton26.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		end

		textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton29.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

		if TalkRepeater then
			TalkRepeater:Disconnect()
		end

		pcall(function()
			getgenv().AdminSpamming.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		end)

		pcall(function()
			if game.PlaceId == 11379739543 then
				getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
				getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			end
		end)
	end
end

ChangeSection(textButton)

textButton.MouseButton1Click:Connect(function()
	ChangeSection(textButton)
end)

textButton2.MouseButton1Click:Connect(function()
	ChangeSection(textButton2)
end)

textButton3.MouseButton1Click:Connect(function()
	ChangeSection(textButton3)
end)

textButton4.MouseButton1Click:Connect(function()
	ChangeSection(textButton4)
end)

getgenv().AnimationApiLoaded = false

textButton5.MouseButton1Click:Connect(function()
	if not getgenv().AnimationApiLoaded then
		local value54 = CreateClicker
		local value55 = CreateToggle
		local value56 = SendNotify
		local value57 = StopAnim
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Animations"))()(imageLabel, scrollingFrame6, textLabel2, r, g, b, value54, value55, value56, value57)
		getgenv().AnimationApiLoaded = true
		wait(2)
	end

	ChangeSection(textButton5)
end)

textButton6.MouseButton1Click:Connect(function()
	ChangeSection(textButton6)
end)

textButton7.MouseButton1Click:Connect(function()
	ChangeSection(textButton7)
end)

textButton11.MouseButton1Click:Connect(function()
	ChangeToggleColor(textButton11)

	if textButton11.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		task.spawn(function()
			while textButton11.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				Send(str4)
				task.wait(getgenv().SpamSpeed)
			end
		end)
	end
end)

textButton9.MouseButton1Click:Connect(function()
	if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
		getgenv().loopspam1 = true

		spawn(function()
			while getgenv().loopspam1 do
				task.wait()

				spawn(function()
					while getgenv().loopspam1 do
						task.wait()

						if getgenv().loopspam1 then
							Send(".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r.")
						end
					end
				end)
			end
		end)

		SendNotify("System VR7", "انتبه اذا تسوي سبام كثير احتمال يجيك تحذير", 5)
		wait(2)
		getgenv().loopspam1 = false
	else
		SendNotify("System VR7", "هاذ النوع من الشات غير مدعوم بسبب وجود حمايه", 5)
	end
end)

textButton10.MouseButton1Click:Connect(function()
	local localPlayer2 = game.Players.LocalPlayer
	local character = localPlayer2.Character or localPlayer2.CharacterAdded:Wait()

	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if humanoid and humanoid.RigType == Enum.HumanoidRigType.R15 then
			loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
		else
			loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
		end
	end
end)

textBox.FocusLost:Connect(function()
	command = textBox.Text

	if Execute(command) == nil then
		textBox.Text = ""
	end
end)

textButton12.MouseButton1Click:Connect(function()
	if textButton12.TextColor3 == Color3.fromRGB(255, 0, 0) then
		textButton12.TextColor3 = Color3.fromRGB(0, 255, 0)
	else
		textButton12.TextColor3 = Color3.fromRGB(255, 0, 0)
	end

	while textButton12.TextColor3 == Color3.fromRGB(0, 255, 0) do
		if Execute(textBox.Text) ~= nil then
			wait(0.8)
		else
			textButton12.TextColor3 = Color3.fromRGB(255, 0, 0)
		end
	end
end)

textBox2.FocusLost:Connect(function()
	str4 = textBox2.Text
end)

textBox3.FocusLost:Connect(function()
	if textBox3.Text:match("[^%d%.]") then
		textBox3.Text = "1"
	else
		textBox3.Text = tostring(textBox3.Text)
	end

	getgenv().SpamSpeed = tonumber(textBox3.Text)
end)

textButton13.MouseButton1Click:Connect(function()
	if game.PlaceId == 11379739543 then
		if getgenv().Tpwalking then
			getgenv().Tpwalking = false
			SendNotify("System VR7", "اضغط مرة ثانية للتسريع", 5)
		elseif not getgenv().Tpwalking then
			getgenv().Tpwalking = true
			SendNotify("System VR7", "اضغط مرة ثانية لارجاع السرعة الطبيعية", 5)
		end

		local num4 = textBox4.Text:gsub("%D", "")

		if num4 == "" then
			num4 = 1
		elseif tonumber(num4) > 10 then
			num4 = 10
		end

		while getgenv().Tpwalking do
			task.wait()

			pcall(function()
				local result = game:GetService("RunService").Heartbeat:Wait()

				if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
					game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * num4 * result * 10)
				else
					game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * result * 10)
				end
			end)
		end
	else
		pcall(function()
			local flag24 = textBox4.Text:gsub("%D", "")

			if flag24 == "" then
				flag24 = 16
			end

			localPlayer.Character.Humanoid.WalkSpeed = tonumber(flag24)
			SendNotify("System VR7", "تم تحديث السرعة", 5)
		end)
	end
end)

textButton15.MouseButton1Click:Connect(function()
	pcall(function()
		local flag25 = textBox5.Text:gsub("%D", "")

		if flag25 == "" then
			flag25 = 50
		end

		localPlayer.Character.Humanoid.JumpPower = tonumber(flag25)
		SendNotify("System VR7", "تم تحديث قوة القفز", 5)
	end)
end)

textButton22.MouseButton1Click:Connect(function()
	pcall(function()
		local flag26 = textBox6.Text:gsub("%D", "")

		if flag26 == "" then
			flag26 = 4
		end

		f = tonumber(flag26)
		SendNotify("System VR7", "تم تحديث سرعة الطيران", 5)
	end)
end)

do
	local clone = nil
	local character = nil
	local value58 = nil
	local value59 = nil

	textButton18.MouseButton1Click:Connect(function()
		ChangeToggleColor(textButton18)

		if textButton18.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			if not getgenv().EnabledBefore then
				getgenv().EnabledBefore = true
				local localPlayer2 = game:GetService("Players").LocalPlayer
				character = localPlayer2.Character or localPlayer2.CharacterAdded:Wait()
				value58 = false
				character.Archivable = true
				clone = character:Clone()
				local part = Instance.new("Part", workspace)
				part.Anchored = true
				part.Size = Vector3.new(200, 1, 200)
				part.CFrame = CFrame.new(0, -500, 0)
				part.CanCollide = true
				part.Transparency = 1
				clone.Parent = workspace
				clone.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 5, 0)

				for _, child in pairs(character:GetChildren()) do
					if child:IsA("LocalScript") then
						local clone2 = child:Clone()
						clone2.Disabled = true
						clone2.Parent = clone
					end
				end

				for _, descendant in pairs(clone:GetDescendants()) do
					if descendant:IsA("BasePart") and descendant.Name == "HumanoidRootPart" then
						descendant.Transparency = 1
					elseif descendant:IsA("BasePart") then
						descendant.Transparency = 0.5
					end
				end

				value59 = true

				local function func114()
					game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

					if clone and clone.Parent then
						clone:Destroy()
					end

					if part and part.Parent then
						part:Destroy()
					end

					character.Archivable = true
					clone = character:Clone()
					part = Instance.new("Part", workspace)
					part.Anchored = true
					part.Size = Vector3.new(200, 1, 200)
					part.CFrame = CFrame.new(0, -500, 0)
					part.CanCollide = true
					part.Transparency = 1
					clone.Parent = workspace
					clone.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 5, 0)

					for _, child in pairs(clone:GetChildren()) do
						if child:IsA("LocalScript") then
							local clone2 = child:Clone()
							clone2.Disabled = true
							clone2.Parent = clone
						end
					end

					for _, descendant in pairs(clone:GetDescendants()) do
						if descendant:IsA("BasePart") then
							if descendant.Name == "HumanoidRootPart" then
								descendant.Transparency = 1
							else
								descendant.Transparency = 0.5
							end
						end
					end

					if clone:FindFirstChild("Humanoid") then
						clone.Humanoid.Died:Connect(function()
							if character and character:FindFirstChild("Humanoid") then
								character.Humanoid.Health = 0
							end
						end)
					end

					PseudoAnchor = clone:FindFirstChild("HumanoidRootPart")
				end

				CharacterDied = function()
					game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
					value59 = false
					localPlayer2.CharacterAdded:Wait()
					character = localPlayer2.Character or localPlayer2.CharacterAdded:Wait()
					value59 = true
					value58 = false
					workspace.CurrentCamera.CameraSubject = character:WaitForChild("Humanoid")

					character:WaitForChild("Humanoid").Died:Connect(function()
						CharacterDied()
						textButton18.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					end)

					func114()
				end

				character.Humanoid.Died:Connect(function()
					clone:Destroy()
				end)

				clone.Humanoid.Died:Connect(function()
					character.Humanoid.Health = 0
				end)

				localPlayer2.CharacterAppearanceLoaded:Connect(CharacterDied)
				local humanoidRootPart = nil

				game:GetService("RunService").RenderStepped:Connect(function()
					if humanoidRootPart ~= nil then
						humanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 5, 0)
					end
				end)

				humanoidRootPart = clone.HumanoidRootPart

				Invisible = function()
					if not value58 then
						local cFrame2 = workspace.Camera.CFrame
						local cFrame3 = character.HumanoidRootPart.CFrame
						character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 5, 0)
						task.wait(0.1)
						clone.HumanoidRootPart.CFrame = cFrame3
						character.Humanoid:UnequipTools()
						localPlayer2.Character = clone
						workspace.CurrentCamera.CameraSubject = clone.Humanoid
						humanoidRootPart = character.HumanoidRootPart

						for _, child in pairs(clone:GetChildren()) do
							if child:IsA("LocalScript") then
								child.Disabled = false
							end
						end

						task.wait()
						workspace.Camera.CFrame = cFrame2
						value58 = true
						textButton18.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)
					else
						local cFrame2 = workspace.Camera.CFrame
						local cFrame3 = clone.HumanoidRootPart.CFrame
						clone.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame
						character.HumanoidRootPart.CFrame = cFrame3
						clone.Humanoid:UnequipTools()
						localPlayer2.Character = character
						workspace.CurrentCamera.CameraSubject = character.Humanoid
						humanoidRootPart = clone.HumanoidRootPart

						for _, child in pairs(clone:GetChildren()) do
							if child:IsA("LocalScript") then
								child.Disabled = true
							end
						end

						task.wait()
						workspace.Camera.CFrame = cFrame2
						value58 = false
						textButton18.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
					end
				end

				func114()

				character:WaitForChild("Humanoid").Died:Connect(function()
					CharacterDied()
				end)
			end

			pcall(function()
				if value59 and character and clone then
					if character:FindFirstChild("HumanoidRootPart") and clone:FindFirstChild("HumanoidRootPart") and clone.Humanoid.Health > 0 and character.Humanoid.Health then
						Invisible()
					end
				end
			end)

			SendNotify("System VR7", "اذا متت شغل الاختفاء من جديد", 5)
		else
			pcall(function()
				if value59 and character and clone then
					if character:FindFirstChild("HumanoidRootPart") and clone:FindFirstChild("HumanoidRootPart") and clone.Humanoid.Health > 0 and character.Humanoid.Health then
						Invisible()
					end
				end
			end)
		end
	end)
end

getgenv().InfJump_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().InfJump_Button)

	if getgenv().InfJump_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		_G.InfJump = game:GetService("UserInputService").JumpRequest:Connect(function()
			if not _G.InfJumpDebounce then
				_G.InfJumpDebounce = true
				local character = game.Players.LocalPlayer.Character

				if character then
					local humanoid = character:FindFirstChildWhichIsA("Humanoid")

					if humanoid then
						humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end

				task.wait()
				_G.InfJumpDebounce = false
			end
		end)
	elseif _G.InfJump then
		_G.InfJump:Disconnect()
	end
end)

textButton20.MouseButton1Click:Connect(function()
	ChangeToggleColor(textButton20)

	if textButton20.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		if game.CoreGui:FindFirstChild("ShiftlockGui") then
			game.CoreGui:FindFirstChild("ShiftlockGui").Enabled = true
			return
		end
		local screenGui = Instance.new("ScreenGui")
		local imageButton6 = Instance.new("ImageButton")
		local imageLabel5 = Instance.new("ImageLabel")
		local uiCorner2 = Instance.new("UICorner")
		Instance.new("UICorner")
		screenGui.Name = "ShiftlockGui"
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.ResetOnSpawn = false
		screenGui.DisplayOrder = 69
		screenGui.Parent = game.CoreGui
		imageButton6.Name = "LockButton"
		imageButton6.Parent = screenGui
		imageButton6.AnchorPoint = Vector2.new(0.5, 0.5)
		imageButton6.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		imageButton6.BackgroundTransparency = 1
		imageButton6.BorderSizePixel = 0
		imageButton6.Position = UDim2.new(0.785, 0, 0.865, 0)
		imageButton6.Size = UDim2.new(0, 65, 0, 65)
		imageButton6.ZIndex = 3
		imageButton6.Image = ""
		imageButton6.AutoButtonColor = true
		imageButton6.Draggable = false
		uiCorner2.Parent = imageButton6
		uiCorner2.CornerRadius = UDim.new(1, 0)
		imageLabel5.Name = "BtnIcon"
		imageLabel5.Parent = imageButton6
		imageLabel5.BackgroundTransparency = 1
		imageLabel5.Position = UDim2.new(0.15, 0, 0.15, 0)
		imageLabel5.Size = UDim2.new(0.7, 0, 0.7, 0)
		imageLabel5.ZIndex = 3
		imageLabel5.Image = "rbxasset://textures/ui/mouseLock_off.png"
		imageLabel5.ImageColor3 = Color3.fromRGB(255, 255, 255)
		imageLabel5.ScaleType = Enum.ScaleType.Fit

		local function func115()
			local localScript = Instance.new("LocalScript", imageButton6)
			game:GetService("UserInputService")
			local flag27 = false
			local parent = localScript.Parent

			parent.MouseButton1Click:Connect(function()
				flag27 = not flag27

				if flag27 then
					parent.BtnIcon.ImageColor3 = Color3.fromRGB(0, 170, 255)

					spawn(function()
						while flag27 do
							for i = 0.3, 0.7, 0.1 do
								if flag27 then
									wait(0.1)
									continue
								end
								break
							end

							for i = 0.7, 0.3, -0.1 do
								if flag27 then
									wait(0.1)
									continue
								end
								break
							end
						end
					end)

					ForceShiftLock()
				else
					parent.BtnIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
					EndForceShiftLock()
				end
			end)

			local value60 = nil
			local UserGameSettings = UserSettings():GetService("UserGameSettings")
			local connection = nil

			ForceShiftLock = function()
				local ok2, result = pcall(function()
					return UserGameSettings.RotationType
				end)

				value60 = result

				connection = game:GetService("RunService").RenderStepped:Connect(function()
					pcall(function()
						UserGameSettings.RotationType = Enum.RotationType.CameraRelative
					end)
				end)
			end

			EndForceShiftLock = function()
				if connection then
					connection:Disconnect()

					pcall(function()
						local value61 = UserGameSettings
						local value62 = value60
						local movementRelative

						if value60 then
							movementRelative = value62
						else
							movementRelative = Enum.RotationType.MovementRelative
						end

						value61.RotationType = movementRelative
					end)
				end
			end
		end

		coroutine.wrap(func115)()
		SendNotify("System VR7", "يمكنك سحب الزر لاي مكان تريده", 3)
	elseif game.CoreGui:FindFirstChild("ShiftlockGui") then
		game.CoreGui:FindFirstChild("ShiftlockGui").Enabled = false
		game.CoreGui:FindFirstChild("ShiftlockGui").LockButton.BtnIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
		EndForceShiftLock()
	end
end)

textButton19.MouseButton1Click:Connect(function()
	local position = GetRoot(localPlayer).Position
	localPlayer.Character:BreakJoints()

	pcall(function()
		localPlayer.Character.Humanoid.Health = 0
	end)

	localPlayer.CharacterAdded:wait()
	task.wait(GetPing() + 0.1)
	TeleportTO(position.X, position.Y, position.Z, "pos", "safe")
end)

textButton21.MouseButton1Click:Connect(function()
	pcall(function()
		if not game.Players.LocalPlayer.Character:FindFirstChild("Click Tp") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Click Tp") then
			game.Players.LocalPlayer:GetMouse()
			local tool = Instance.new("Tool")
			tool.RequiresHandle = false
			tool.Name = "Click Tp"

			tool.Activated:connect(function()
				local mouse2 = Players.LocalPlayer:GetMouse()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mouse2.Hit.X, mouse2.Hit.Y + 3, mouse2.Hit.Z, select(4, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:components()))
			end)

			tool.Parent = game.Players.LocalPlayer.Backpack
		end
	end)
end)

getgenv().isEnabled = false

OpenSubScreen = function()
	if getgenv().NoNo then
		return nil
	end
	imageLabel.Visible = false
	getgenv().NoNo = true
	local TweenService = game:GetService("TweenService")
	local blurEffect = Instance.new("BlurEffect")
	blurEffect.Size = 0
	blurEffect.Parent = game:GetService("Lighting")
	TweenService:Create(blurEffect, TweenInfo.new(0.4, Enum.EasingStyle.Sine), { Size = 25 }):Play()
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "VR7_Premium_Pro_UI"
	screenGui.IgnoreGuiInset = true
	screenGui.DisplayOrder = 999999
	screenGui.Parent = game:GetService("CoreGui")
	screenGui.ResetOnSpawn = false
	local frame2 = Instance.new("Frame")
	frame2.Size = UDim2.fromScale(1, 1)
	frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	frame2.BackgroundTransparency = 0.5
	frame2.BorderSizePixel = 0
	frame2.Parent = screenGui
	local frame3 = Instance.new("Frame")
	frame3.AnchorPoint = Vector2.new(0.5, 0.5)
	frame3.Position = UDim2.fromScale(0.5, 0.5)
	frame3.Size = UDim2.new(0, 0, 0, 0)
	frame3.BackgroundColor3 = Color3.fromRGB(15, 15, 17)
	frame3.BorderSizePixel = 0
	frame3.ClipsDescendants = true
	frame3.Parent = frame2
	Instance.new("UICorner", frame3).CornerRadius = UDim.new(0, 12)
	local uiStroke2 = Instance.new("UIStroke")
	uiStroke2.Color = Color3.fromRGB(r or 255, g or 0, b or 0)
	uiStroke2.Transparency = 0.3
	uiStroke2.Thickness = 2
	uiStroke2.Parent = frame3
	TweenService:Create(frame3, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.fromScale(0.75, 0.7) }):Play()
	local textButton53 = Instance.new("TextButton")
	textButton53.Size = UDim2.new(0, 30, 0, 30)
	textButton53.Position = UDim2.new(1, -40, 0, 10)
	textButton53.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
	textButton53.Text = "X"
	textButton53.TextSize = 16
	textButton53.Font = Enum.Font.GothamBold
	textButton53.TextColor3 = Color3.fromRGB(220, 220, 220)
	textButton53.BorderSizePixel = 0
	textButton53.ZIndex = 10
	textButton53.Parent = frame3
	Instance.new("UICorner", textButton53).CornerRadius = UDim.new(1, 0)

	textButton53.MouseEnter:Connect(function()
		TweenService:Create(textButton53, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.fromRGB(r or 255, g or 0, b or 0),
			TextColor3 = Color3.fromRGB(0, 0, 0),
		}):Play()
	end)

	textButton53.MouseLeave:Connect(function()
		TweenService:Create(textButton53, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(25, 25, 30), TextColor3 = Color3.fromRGB(220, 220, 220) }):Play()
	end)

	local function func116()
		TweenService:Create(frame3, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, 0, 0, 0) }):Play()
		TweenService:Create(blurEffect, TweenInfo.new(0.3), { Size = 0 }):Play()
		task.wait(0.3)
		getgenv().NoNo = false
		blurEffect:Destroy()
		screenGui:Destroy()

		if imageLabel then
			imageLabel.Visible = true
		end
	end

	textButton53.MouseButton1Click:Connect(func116)
	local frame4 = Instance.new("Frame")
	frame4.Size = UDim2.new(0.35, 0, 1, -40)
	frame4.Position = UDim2.new(0, 20, 0, 20)
	frame4.BackgroundTransparency = 1
	frame4.Parent = frame3
	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	uiListLayout.Padding = UDim.new(0, 15)
	uiListLayout.Parent = frame4

	local function func117(param37)
		local imageLabel5 = Instance.new("ImageLabel")
		imageLabel5.Size = UDim2.new(1, 0, 0.48, 0)
		imageLabel5.BackgroundTransparency = 1
		imageLabel5.ScaleType = Enum.ScaleType.Fit
		imageLabel5.Image = "rbxassetid://" .. tostring(param37)
		imageLabel5.Parent = frame4
		Instance.new("UICorner", imageLabel5).CornerRadius = UDim.new(0, 10)
		local uiStroke3 = Instance.new("UIStroke")
		uiStroke3.Color = Color3.fromRGB(r or 255, g or 0, b or 0)
		uiStroke3.Transparency = 0.5
		uiStroke3.Thickness = 1.5
		uiStroke3.Parent = imageLabel5
	end

	func117(108313527243459)
	func117(138006584575803)
	local frame5 = Instance.new("Frame")
	frame5.Size = UDim2.new(0.6, -20, 1, -40)
	frame5.Position = UDim2.new(0.4, 0, 0, 20)
	frame5.BackgroundTransparency = 1
	frame5.Parent = frame3
	local scrollingFrame11 = Instance.new("ScrollingFrame")
	scrollingFrame11.Size = UDim2.new(1, -10, 0.8, 0)
	scrollingFrame11.Position = UDim2.new(0, 0, 0, 0)
	scrollingFrame11.BackgroundTransparency = 1
	scrollingFrame11.BorderSizePixel = 0
	scrollingFrame11.ScrollBarThickness = 4
	scrollingFrame11.ScrollBarImageColor3 = Color3.fromRGB(r or 255, g or 0, b or 0)
	scrollingFrame11.CanvasSize = UDim2.new(0, 0, 1.2, 0)
	scrollingFrame11.Parent = frame5
	local textLabel5 = Instance.new("TextLabel")
	textLabel5.Size = UDim2.new(1, -10, 1, 0)
	textLabel5.BackgroundTransparency = 1
	textLabel5.TextWrapped = true
	textLabel5.TextYAlignment = Enum.TextYAlignment.Top
	textLabel5.TextXAlignment = Enum.TextXAlignment.Right
	textLabel5.TextSize = 16
	textLabel5.LineHeight = 1.4
	textLabel5.Font = Enum.Font.GothamMedium
	textLabel5.TextColor3 = Color3.fromRGB(230, 230, 230)
	textLabel5.RichText = false

	textLabel5.Text = [[🔥 اشتراكات VR7
شغاله في جميع المابات بدون استثناء او تعليق

💸 اشتراك البريميوم
اعلى رتبة متاحة توفر لك تواصل مباشر مع الادارة , جميع اوامر الاشتراك مع حماية , واوامر خاصة , ومعرفة جميع المفعلين في السيرفر , التخفي , ويجي معها اشتراك قولد لاي حساب تبيه لمدة اسبوعين

💎 اشتراك الدايموند
ثاني أعلى رتبة متاحة. تمنحك كافة أوامر التحكم والتخريب، بالإضافة إلى حماية كاملة تمنع أي شخص من استخدام الأوامر ضدك.
ويجي معها اشتراك برونز لاي حساب تبي لمدة اسبوعين

👑 اشتراك القولد
يسمح لك باستخدام بعض الأوامر، لكنه لا يمنحك صلاحية الحماية.

🛡�? اشتراك البرونز
يوفر لك حماية كاملة من المستخدمين الآخرين لتجنب الإزعاج، لكنه لا يمنحك صلاحية استخدام الأوامر.

�? الأوامر المتاحة للمشتركين:

سحب اللاعبين - .bring / .bringto (قولد ودايموند)
قتل عادي ومتكرر - .kill / .loopkill (قولد ودايموند)
شاشة مخيفة أو بيضاء - .scare / .flash  (قولد ودايموند)
إسقاط من السماء والرمي خارج الماب - .skyfall / .void  (قولد ودايموند)
تجميد اللاعب ، تفجير، تدويره - .explode / .freeze / .spin  (قولد ودايموند)
طرد ، بانق ، فلنق - .kick / .kickmsg / .benx / .fling (دايموند فقط)
(تستخدم الاوامر داخل خانة الاوامر بسرية تامه)

للاشتراك، تفضل سيرفرنا: discord.gg/vr7
]]

	textLabel5.Parent = scrollingFrame11

	textLabel5:GetPropertyChangedSignal("TextBounds"):Connect(function()
		scrollingFrame11.CanvasSize = UDim2.new(0, 0, 0, textLabel5.TextBounds.Y + 28)
	end)

	local frame6 = Instance.new("Frame")
	frame6.Size = UDim2.new(1, 0, 0.15, 0)
	frame6.Position = UDim2.new(0, 0, 0.85, 0)
	frame6.BackgroundTransparency = 1
	frame6.Parent = frame5
	local uiListLayout2 = Instance.new("UIListLayout")
	uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
	uiListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Right
	uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
	uiListLayout2.Padding = UDim.new(0, 10)
	uiListLayout2.Parent = frame6

	local function createTextButton(text)
		local textButton54 = Instance.new("TextButton")
		textButton54.Size = UDim2.new(0, 140, 0, 38)
		textButton54.BackgroundColor3 = Color3.fromRGB(22, 22, 25)
		textButton54.Text = text
		textButton54.Font = Enum.Font.GothamBold
		textButton54.TextSize = 14
		textButton54.TextColor3 = Color3.fromRGB(255, 255, 255)
		textButton54.BorderSizePixel = 0
		textButton54.Parent = frame6
		Instance.new("UICorner", textButton54).CornerRadius = UDim.new(0, 6)

		textButton54.MouseEnter:Connect(function()
			local value63 = TweenService
			local create = value63.Create
			local tweenInfo = TweenInfo.new(0.2)
			local tbl31 = {}
			local color = Color3.fromRGB
			local n = r or 255
			local n2 = g or 0
			local value64 = b
			local n3

			if b then
				n3 = value64
			else
				n3 = 0
			end

			tbl31.BackgroundColor3 = color(n, n2, n3)
			tbl31.TextColor3 = Color3.fromRGB(0, 0, 0)
			create(value63, textButton54, tweenInfo, tbl31):Play()
		end)

		textButton54.MouseLeave:Connect(function()
			TweenService:Create(textButton54, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(22, 22, 25), TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
		end)

		return textButton54
	end

	local textButton57 = createTextButton("اظهار خانة الاوامر")

	createTextButton("لمعرفة اشتراكك").MouseButton1Click:Connect(function()
		func116()
		local response = game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Hehehe")
		local lib = loadstring(response)()
		local userId2 = tostring(game.Players.LocalPlayer.UserId)

		if lib[userId2] then
			local match = response:match("%[%s*\"?%s*" .. userId2 .. "%s*\"?%s*%]%s*=%s*{.-Date%s*=%s*\"([^\"]+)\"")
			if not match then
				ShowVR7Notification("VR7 Team", "خطأ: لم يتم العثور على تاريخ الاشتراك في الرابط!", "rbxassetid://136772242182146", 12)
				return
			end

			if match == "9999/99/99 99:99:99" then
				ShowVR7Notification("VR7 Team", "حالتك: مشترك\nالمدة: مدى الحياة (أبدي)!", "rbxassetid://136772242182146", 12)
			else
				local match2, flag28, flag29, flag30, flag31, value65 = match:match("(%d+)/(%d+)/(%d+)%s+(%d+):(%d+):(%d+)")

				if match2 and flag28 and flag29 and flag30 and flag31 and value65 then
					local n = os.time({ year = match2, month = flag28, day = flag29, hour = flag30, min = flag31, sec = value65 }) - os.time()

					if n > 0 then
						local n2 = math.floor(n / 86400)
						local n3 = math.floor(n % 86400 / 3600)
						local n4 = math.floor(n % 3600 / 60)
						local n5 = math.floor(n % 60)
						ShowVR7Notification("VR7 Team", string.format("حالتك: مشترك\nالوقت المتبقي: %d يوم و %d ساعة و %d دقيقة و %d ثانية", n2, n3, n4, n5), "rbxassetid://136772242182146", 12)
					else
						ShowVR7Notification("VR7 Team", "اشتراكك منتهي!", "rbxassetid://136772242182146", 12)
					end
				else
					ShowVR7Notification("VR7 Team", "تنسيق التاريخ في الرابط غير صحيح!", "rbxassetid://136772242182146", 12)
				end
			end
		else
			ShowVR7Notification("VR7 Team", "ما عندك اشتراك اصلا او اشتراكك منتهي!", "rbxassetid://136772242182146", 12)
		end
	end)

	textButton57.MouseButton1Click:Connect(function()
		if getgenv().CommandBoxEnabled or getgenv().isEnabled then
			if SendNotify then
				SendNotify("System VR7", "إجراء خاطئ، تأكد من اشتراكك أو أن الخانة موجودة مسبقاً", 5)
			end

			return
		end

		getgenv().isEnabled = true
		local UserInputService = game:GetService("UserInputService")
		game:GetService("CoreGui")
		local screenGui2 = Instance.new("ScreenGui")
		screenGui2.Name = "CommandBoxGui"
		screenGui2.ResetOnSpawn = false
		screenGui2.Parent = getgenv().VR7
		local frame7 = Instance.new("Frame")
		frame7.Size = UDim2.new(0, 320, 0, 135)
		frame7.Position = UDim2.new(0.5, 130, 0.5, -45)
		frame7.BackgroundColor3 = Color3.fromRGB(15, 15, 17)
		frame7.BorderSizePixel = 0
		frame7.Parent = screenGui2
		Instance.new("UICorner", frame7).CornerRadius = UDim.new(0, 6)
		local frame8 = Instance.new("Frame")
		frame8.Size = UDim2.new(1, 0, 0, 26)
		frame8.BackgroundColor3 = Color3.fromRGB(22, 22, 25)
		frame8.BorderSizePixel = 0
		frame8.Parent = frame7
		Instance.new("UICorner", frame8).CornerRadius = UDim.new(0, 6)
		local frame9 = Instance.new("Frame")
		frame9.Size = UDim2.new(1, 0, 0, 6)
		frame9.Position = UDim2.new(0, 0, 1, -6)
		frame9.BackgroundColor3 = Color3.fromRGB(22, 22, 25)
		frame9.BorderSizePixel = 0
		frame9.Parent = frame8
		local textLabel6 = Instance.new("TextLabel")
		textLabel6.Size = UDim2.new(1, -30, 1, 0)
		textLabel6.Position = UDim2.new(0, 10, 0, 0)
		textLabel6.BackgroundTransparency = 1
		textLabel6.Text = "خانة الأوامر"
		textLabel6.TextXAlignment = Enum.TextXAlignment.Left
		textLabel6.Font = Enum.Font.GothamBold
		textLabel6.TextSize = 13
		textLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
		textLabel6.Parent = frame8
		local textButton54 = Instance.new("TextButton")
		textButton54.Size = UDim2.new(0, 26, 1, 0)
		textButton54.Position = UDim2.new(1, -26, 0, 0)
		textButton54.BackgroundTransparency = 1
		textButton54.Text = "X"
		textButton54.Font = Enum.Font.GothamBold
		textButton54.TextSize = 14
		textButton54.TextColor3 = Color3.fromRGB(200, 50, 50)
		textButton54.Parent = frame8
		local textBox9 = Instance.new("TextBox")
		textBox9.Size = UDim2.new(1, -94, 0, 34)
		textBox9.Position = UDim2.new(0, 8, 0, 36)
		textBox9.BackgroundColor3 = Color3.fromRGB(20, 20, 23)
		textBox9.BorderSizePixel = 0
		textBox9.ClearTextOnFocus = false
		textBox9.Font = Enum.Font.Code
		textBox9.PlaceholderText = ".kill Hm501"
		textBox9.Text = ""
		textBox9.TextSize = 15
		textBox9.TextXAlignment = Enum.TextXAlignment.Left
		textBox9.TextColor3 = Color3.fromRGB(255, 255, 255)
		textBox9.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
		textBox9.Parent = frame7
		Instance.new("UICorner", textBox9).CornerRadius = UDim.new(0, 4)
		Instance.new("UIPadding", textBox9).PaddingLeft = UDim.new(0, 8)
		local uiStroke3 = Instance.new("UIStroke")
		uiStroke3.Color = Color3.fromRGB(r or 255, g or 0, b or 0)
		uiStroke3.Thickness = 1
		uiStroke3.Transparency = 0.5
		uiStroke3.Parent = textBox9
		local textButton55 = Instance.new("TextButton")
		textButton55.Size = UDim2.new(0, 70, 0, 34)
		textButton55.Position = UDim2.new(1, -78, 0, 36)
		textButton55.BackgroundColor3 = Color3.fromRGB(r or 255, g or 0, b or 0)
		textButton55.BorderSizePixel = 0
		textButton55.Text = "إرسال"
		textButton55.Font = Enum.Font.GothamBold
		textButton55.TextSize = 14
		textButton55.TextColor3 = Color3.fromRGB(0, 0, 0)
		textButton55.Parent = frame7
		Instance.new("UICorner", textButton55).CornerRadius = UDim.new(0, 4)
		local textButton56 = Instance.new("TextButton")
		textButton56.Size = UDim2.new(1, -16, 0, 30)
		textButton56.Position = UDim2.new(0, 8, 0, 78)
		textButton56.BackgroundColor3 = Color3.fromRGB(r or 255, g or 0, b or 0)
		textButton56.BorderSizePixel = 0
		textButton56.Text = "معرفة المفعلين"
		textButton56.Font = Enum.Font.GothamBold
		textButton56.TextSize = 16
		textButton56.TextColor3 = Color3.fromRGB(0, 0, 0)
		textButton56.Parent = frame7
		Instance.new("UICorner", textButton56).CornerRadius = UDim.new(0, 4)
		local textLabel7 = Instance.new("TextLabel")
		textLabel7.Size = UDim2.new(1, -16, 0, 16)
		textLabel7.Position = UDim2.new(0, 8, 0, 115)
		textLabel7.BackgroundTransparency = 1
		textLabel7.Text = ""
		textLabel7.Font = Enum.Font.Gotham
		textLabel7.TextSize = 12
		textLabel7.TextColor3 = Color3.fromRGB(150, 150, 150)
		textLabel7.TextXAlignment = Enum.TextXAlignment.Left
		textLabel7.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel7.Parent = frame7
		local uiStroke4 = Instance.new("UIStroke")
		uiStroke4.Color = Color3.fromRGB(r or 255, g or 0, b or 0)
		uiStroke4.Thickness = 1.5
		uiStroke4.Parent = frame7
		local value66 = nil
		local position = nil
		local position2 = nil

		frame8.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				value66 = true
				position = input.Position
				position2 = frame7.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						value66 = false
					end
				end)
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if value66 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local n = input.Position - position
				frame7.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n.X, position2.Y.Scale, position2.Y.Offset + n.Y)
			end
		end)

		textButton54.MouseButton1Click:Connect(function()
			getgenv().isEnabled = false
			screenGui2:Destroy()
		end)

		textButton56.MouseButton1Click:Connect(function()
			if not getgenv().IsMyPremium then
				ShowVR7Notification("VR7 Team", "يجب انت تشترك بريميوم", "rbxassetid://136772242182146", 4)
				return
			end
			local flag32 = request({ Url = "http://vicky.hidencloud.com:24599/api/playerid", Method = "GET" })

			if flag32 and flag32.Body then
				local data = game:GetService("HttpService"):JSONDecode(flag32.Body)

				if data and data.players then
					local tbl32 = {}

					for _, player in ipairs(data.players) do
						local playerByUserId = game:GetService("Players"):GetPlayerByUserId(tonumber(player))

						if playerByUserId then
							table.insert(tbl32, "@" .. playerByUserId.Name)
						end
					end

					if #tbl32 > 0 then
						ShowVR7Notification("VR7 Team", "اللاعبين المفعلين للسكربت: \n" .. table.concat(tbl32, ",\n"), "rbxassetid://136772242182146", 7)
					else
						ShowVR7Notification("VR7 Team", "لا يوجد احد مفعل السكربت معك بالسيرفر", "rbxassetid://136772242182146", 4)
					end
				end
			end
		end)

		local str9 = ""
		local n = 1

		local function func118()
			local match = tostring(textBox9.Text or ""):match("^%s*(.-)%s*$")
			if match == "" then
				return
			end

			if not match:match("^%.") then
				ShowVR7Notification("VR7 Team", "يجب أن تبدأ كتابة الأمر بنقطة (.)", "rbxassetid://136772242182146", 4)
				return
			end

			if match == str9 then
				n += 1
			else
				str9 = match
				n = 1
			end

			local tbl33 = {}

			for match2 in match:gmatch("%.%S+[^%.]*") do
				table.insert(tbl33, match2:match("^%s*(.-)%s*$"))
			end

			for _, item7 in ipairs(tbl33) do
				local tbl34 = { PlayerId = game.Players.LocalPlayer.UserId, Command = { Action = item7 } }
				textLabel7.TextColor3 = Color3.fromRGB(255, 200, 0)
				textLabel7.Text = "يتم الإرسال...."

				if pcall(function()
					return request({
						Url = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Vercel-post"))(),
						Method = "POST",
						Headers = { ["Content-Type"] = "application/json" },
						Body = game:GetService("HttpService"):JSONEncode(tbl34),
					})
				end) then
					textLabel7.Text = textBox9.Text .. (n > 1 and " (x" .. tostring(n) .. ")" or "")
					textLabel7.TextColor3 = Color3.fromRGB(0, 255, 128)
				else
					textLabel7.Text = "حدث خطأ أثناء إرسال الأمر"
					textLabel7.TextColor3 = Color3.fromRGB(255, 75, 75)
					str9 = ""
					n = 0
				end
			end
		end

		textButton55.MouseButton1Click:Connect(func118)

		textBox9.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				func118()
			end
		end)

		func116()
	end)
end

getgenv().Checksub_Button.MouseButton1Click:Connect(OpenSubScreen)

do
	local n = 0
	local flag33 = false
	getgenv().ColorforFback = Color3.fromRGB(r, g, b)

	getgenv().FeedBack_Button.MouseButton1Click:Connect(function()
		getgenv().FeedBack_Button_Section = Instance.new("ScrollingFrame")
		getgenv().FeedBack_Button_Section.Name = "FeedBack_Button_Section"
		getgenv().FeedBack_Button_Section.Parent = imageLabel
		getgenv().FeedBack_Button_Section.Active = true
		getgenv().FeedBack_Button_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		getgenv().FeedBack_Button_Section.BackgroundTransparency = 1
		getgenv().FeedBack_Button_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
		getgenv().FeedBack_Button_Section.BorderSizePixel = 0
		getgenv().FeedBack_Button_Section.Position = UDim2.new(0, 105, 0, 30)
		getgenv().FeedBack_Button_Section.Size = UDim2.new(0, 395, 0, 320)
		getgenv().FeedBack_Button_Section.Visible = false
		getgenv().FeedBack_Button_Section.CanvasSize = UDim2.new(0, 0, 0, 0)
		getgenv().FeedBack_Button_Section.ScrollBarThickness = 5
		local textBox9 = Instance.new("TextBox")
		textBox9.Name = "ProblemInput"
		textBox9.Parent = getgenv().FeedBack_Button_Section
		textBox9.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		textBox9.BorderColor3 = getgenv().ColorforFback
		textBox9.Position = UDim2.new(0, 25, 0, 15)
		textBox9.Size = UDim2.new(0, 335, 0, 200)
		textBox9.Font = Enum.Font.Oswald
		textBox9.PlaceholderText = "اكتب مشكلتك او اقتراحك هنا."
		textBox9.Text = ""
		textBox9.TextColor3 = getgenv().ColorforFback
		textBox9.TextSize = 20
		textBox9.TextWrapped = true
		textBox9.TextXAlignment = Enum.TextXAlignment.Right
		textBox9.TextYAlignment = Enum.TextYAlignment.Top
		local textButton53 = Instance.new("TextButton")
		local textButton54 = Instance.new("TextButton")
		textButton53.Name = "Back_Button"
		textButton53.Parent = FeedBack_Button_Section
		textButton53.BackgroundColor3 = getgenv().ColorforFback
		textButton53.BackgroundTransparency = 0.5
		textButton53.BorderColor3 = Color3.fromRGB(0, 0, 0)
		textButton53.BorderSizePixel = 0
		textButton53.Position = UDim2.new(0, 25, 0, 240)
		textButton53.Size = UDim2.new(0, 150, 0, 60)
		textButton53.Font = Enum.Font.Oswald
		textButton53.Text = "رجوع"
		textButton53.TextColor3 = Color3.fromRGB(0, 0, 0)
		textButton53.TextScaled = true
		textButton53.TextSize = 14
		textButton53.TextWrapped = true
		textButton54.Name = "Back_Button"
		textButton54.Parent = FeedBack_Button_Section
		textButton54.BackgroundColor3 = getgenv().ColorforFback
		textButton54.BackgroundTransparency = 0.5
		textButton54.BorderColor3 = Color3.fromRGB(0, 0, 0)
		textButton54.BorderSizePixel = 0
		textButton54.Position = UDim2.new(0, 210, 0, 240)
		textButton54.Size = UDim2.new(0, 150, 0, 60)
		textButton54.Font = Enum.Font.Oswald
		textButton54.Text = "ارسال"
		textButton54.TextColor3 = Color3.fromRGB(0, 0, 0)
		textButton54.TextScaled = true
		textButton54.TextSize = 14
		textButton54.TextWrapped = true

		textButton53.MouseButton1Click:Connect(function()
			scrollingFrame3.Visible = true
			FeedBack_Button_Section:Destroy()
		end)

		textButton54.MouseButton1Click:Connect(function()
			if n >= 3 then
				SendNotify("System VR7", "لقد تجاوزت الحد الادنى للرسائل", 5)
				return
			end

			if flag33 then
				SendNotify("System VR7", "يرجى الانتظار قليلا", 2)
				return
			end

			if textBox9.Text ~= "" and not flag33 then
				flag33 = true
				n += 1
				local func119 = request

				local tbl35 = {
					Url = "http://vicky.hidencloud.com:24599/api/all",
					Method = "POST",
					Headers = { ["Content-Type"] = "application/json" },
				}

				local HttpService = game:GetService("HttpService")
				local jsonEncode = HttpService.JSONEncode
				local tbl36 = {}
				local embeds = {}
				local tbl37 = { title = "New Message Sent By New User!" }
				local userId = game:GetService("Players").LocalPlayer.UserId
				local displayName = game:GetService("Players").LocalPlayer.DisplayName
				local name2 = game:GetService("Players").LocalPlayer.Name
				local lib = loadstring("return game:GetService('VoiceChatService'):IsVoiceEnabledForUserIdAsync(game:GetService('Players').LocalPlayer.UserId) and '✔️' or '�?'")()
				local func120 = tostring
				local Players2 = game:GetService("Players")
				local text = textBox9.Text
				local func121 = tostring
				local date = os.date
				local obj6 = game
				tbl37.description = "" .. "**[Player Username (D/U):](https://www.roblox.com/users/" .. userId .. "/profile)**  ```" .. displayName .. " (@" .. name2 .. ")" .. " " .. lib .. "```\n" .. "**[Game Name (" .. func120(#Players2:GetPlayers()) .. " Player" .. "):](https://www.roblox.com/games/" .. tostring(game.PlaceId) .. ")**\n```" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "```\n" .. "**Player Message:** ```" .. text .. "``` \n" .. "**Executor:** ```" .. tostring(identifyexecutor()) .. " " .. GetDevice() .. "``` \n" .. "**Account Age:** ```" .. game:GetService("Players").LocalPlayer.AccountAge .. "Day" .. func121(" (" .. date("%Y/%m/%d", os.time() - obj6:GetService("Players").LocalPlayer.AccountAge * 86400) .. ")[Y/M/D]") .. "``` \n" .. "<t:" .. os.time() .. ":f>"
				tbl37.color = 65280
				embeds[1] = tbl37
				tbl36.embeds = embeds
				tbl35.Body = jsonEncode(HttpService, tbl36)
				func119(tbl35)
				SendNotify("System VR7", "تم ارسال الرسالة", 5)
				local sound = Instance.new("Sound", game.Workspace)
				sound.SoundId = "rbxassetid://3398620867"
				sound.Volume = getgenv().NotifcationVloume

				sound.Ended:Connect(function()
					sound:Destroy()
				end)

				sound:Play()
				wait(1)
				flag33 = false
			end
		end)

		scrollingFrame3.Visible = false
		FeedBack_Button_Section.Visible = true
	end)
end

getgenv().Settings_Button.MouseButton1Click:Connect(function()
	scrollingFrame3.Visible = false
	getgenv().Settings_Button_Section.Visible = true
end)

getgenv().Logger_Button_Section = Instance.new("ScrollingFrame")
getgenv().Logger_Button_List_Section = Instance.new("ScrollingFrame")
getgenv().Logger_Button_Section.Name = "Logger_Button_Section"
getgenv().Logger_Button_Section.Parent = imageLabel
getgenv().Logger_Button_Section.Active = true
getgenv().Logger_Button_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
getgenv().Logger_Button_Section.BackgroundTransparency = 1
getgenv().Logger_Button_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Logger_Button_Section.BorderSizePixel = 0
getgenv().Logger_Button_Section.Position = UDim2.new(0, 105, 0, 30)
getgenv().Logger_Button_Section.Size = UDim2.new(0, 395, 0, 320)
getgenv().Logger_Button_Section.Visible = false
getgenv().Logger_Button_Section.CanvasSize = UDim2.new(0, 0, 0, 0)
getgenv().Logger_Button_Section.ScrollBarThickness = 5
getgenv().Logger_Button_List_Section.Name = "Logger_Button_List_Section"
getgenv().Logger_Button_List_Section.Parent = getgenv().Logger_Button_Section
getgenv().Logger_Button_List_Section.Active = true
getgenv().Logger_Button_List_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
getgenv().Logger_Button_List_Section.BackgroundTransparency = 1
getgenv().Logger_Button_List_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Logger_Button_List_Section.BorderSizePixel = 0
getgenv().Logger_Button_List_Section.Position = UDim2.new(0, 0, 0, 120)
getgenv().Logger_Button_List_Section.Size = UDim2.new(0, 395, 0, 200)
getgenv().Logger_Button_List_Section.Visible = true
getgenv().Logger_Button_List_Section.CanvasSize = UDim2.new(0, 0, 1, 0)
getgenv().Logger_Button_List_Section.ScrollBarThickness = 5
getgenv().UIListLayout_List = Instance.new("UIListLayout")
getgenv().UIListLayout_List.Parent = getgenv().Logger_Button_List_Section

do
	local center = Enum.HorizontalAlignment.Center
	getgenv().UIListLayout_List.HorizontalAlignment = center
end

getgenv().UIListLayout_List.Padding = UDim.new(0, 8)

do
	local loggerButtonListSection = getgenv().Logger_Button_List_Section
	local uiListLayoutList = getgenv().UIListLayout_List

	local function func122()
		loggerButtonListSection.CanvasSize = UDim2.new(0, 0, 0, uiListLayoutList.AbsoluteContentSize.Y + 10)
	end

	func122()
	uiListLayoutList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(func122)
end

textLabel3.Parent = getgenv().Logger_Button_Section
getgenv().Logger_Input.Parent = getgenv().Logger_Button_Section

getgenv().Logger_Button.MouseButton1Click:Connect(function()
	ChangeSection(getgenv().Logger_Button_Section)
end)

getgenv().StopDrag.MouseButton1Click:Connect(function()
	if getgenv().StopDrag.ImageColor3 == Color3.fromRGB(r, g, b) then
		getgenv().StopDrag.ImageColor3 = Color3.fromRGB(0, 230, 0)
		getgenv().VR7.Background.Draggable = false
		imageButton5.Draggable = false
		SendNotify("System VR7", "تم تثبيت الواجهة وزر الاغلاق", 3)
	else
		getgenv().StopDrag.ImageColor3 = Color3.fromRGB(r, g, b)
		getgenv().VR7.Background.Draggable = true
		imageButton5.Draggable = true
	end
end)

do
	local tbl38 = {}
	local tbl39 = {}
	local func123 = ipairs
	local Players2 = game:GetService("Players")

	for _, player in func123(Players2:GetPlayers()) do
		tbl38[player.UserId] = { Joins = 0, Leaves = 0, StartTime = os.time() }
	end

	game:GetService("Players").PlayerAdded:Connect(function(player)
		if not tbl38[player.UserId] then
			tbl38[player.UserId] = { Joins = 1, Leaves = 0, StartTime = os.time() }
		else
			local entry11 = tbl38[player.UserId]
			entry11.Joins = entry11.Joins + 1
			tbl38[player.UserId].StartTime = os.time()
		end

		local Players3 = game:GetService("Players")
		local TweenService = game:GetService("TweenService")
		local Lighting2 = game:GetService("Lighting")
		local text, color, color2, color3, color4, text2, text3

		if player.UserId == 951402104 then
			text = "7sone"
			color = Color3.fromRGB(255, 0, 0)
			color2 = Color3.fromRGB(170, 0, 0)
			color3 = Color3.fromRGB(255, 255, 255)
			color4 = Color3.fromRGB(255, 60, 60)
			text2 = "دخل مطور VR7 �?"
			text3 = "👑"
		else
			if player.UserId ~= 5522233060 then
				return
			end
			text = "VR7 OWNER"
			color = Color3.fromRGB(0, 170, 255)
			color2 = Color3.fromRGB(0, 85, 170)
			color3 = Color3.fromRGB(255, 255, 255)
			color4 = Color3.fromRGB(0, 170, 255)
			text2 = "دخل مطور VR7 �?"
			text3 = "�?"
		end

		local function func124(instance2)
			local head = instance2:FindFirstChild("Head")
			if not head then
				return
			end

			if head:FindFirstChild("OwnerTag") then
				head.OwnerTag:Destroy()
			end

			local billboardGui = Instance.new("BillboardGui")
			billboardGui.Name = "OwnerTag"
			billboardGui.Size = UDim2.new(0, 220, 0, 60)
			billboardGui.StudsOffset = Vector3.new(0, 3.2, 0)
			billboardGui.AlwaysOnTop = true
			billboardGui.MaxDistance = 999999999999
			billboardGui.Parent = head
			local frame2 = Instance.new("Frame")
			frame2.Size = UDim2.new(1, 0, 1, 0)
			frame2.BackgroundTransparency = 1
			frame2.Parent = billboardGui
			local textLabel5 = Instance.new("TextLabel")
			textLabel5.Size = UDim2.new(0, 40, 0, 40)
			textLabel5.Position = UDim2.new(0, 0, 0.5, -20)
			textLabel5.BackgroundTransparency = 1
			textLabel5.Text = text3
			textLabel5.TextScaled = true
			textLabel5.Font = Enum.Font.GothamBlack
			textLabel5.TextColor3 = Color3.fromRGB(255, 215, 0)
			textLabel5.Parent = frame2
			local textLabel6 = Instance.new("TextLabel")
			textLabel6.Size = UDim2.new(1, -45, 1, 0)
			textLabel6.Position = UDim2.new(0, 45, 0, 0)
			textLabel6.BackgroundTransparency = 1
			textLabel6.Text = text
			textLabel6.TextScaled = true
			textLabel6.Font = Enum.Font.GothamBlack
			textLabel6.TextColor3 = color
			textLabel6.TextXAlignment = Enum.TextXAlignment.Left
			textLabel6.Parent = frame2
			local uiStroke2 = Instance.new("UIStroke")
			uiStroke2.Color = color2
			uiStroke2.Thickness = 2
			uiStroke2.Parent = textLabel6
			local uiGradient2 = Instance.new("UIGradient")
			local colorSequence = ColorSequence.new
			local value67 = ColorSequenceKeypoint.new(0, color3)
			local value68 = ColorSequenceKeypoint.new(0.5, color4)
			local new = ColorSequenceKeypoint.new
			local tbl40 = { value67, value68 }

			do
				local values = table.pack(new(1, color3))
				table.move(values, 1, values.n, 3, tbl40)
			end

			uiGradient2.Color = colorSequence(tbl40)
			uiGradient2.Parent = textLabel6
		end

		local function func125()
			local blurEffect = Instance.new("BlurEffect")
			blurEffect.Size = 0
			blurEffect.Parent = Lighting2
			TweenService:Create(blurEffect, TweenInfo.new(0.5), { Size = 24 }):Play()

			local ok2, result = pcall(function()
				return Players3:GetNameFromUserIdAsync(player.UserId)
			end)

			local text4 = "Unknown"

			if ok2 then
				text4 = "@" .. result
			end

			local userThumbnailAsync = Players3:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
			local screenGui = Instance.new("ScreenGui")
			screenGui.Name = "OwnerJoinUI"
			screenGui.ResetOnSpawn = false
			screenGui.Parent = game.CoreGui
			local frame2 = Instance.new("Frame")
			frame2.Size = UDim2.fromScale(0.45, 0.35)
			frame2.Position = UDim2.fromScale(0.5, -0.4)
			frame2.AnchorPoint = Vector2.new(0.5, 0.5)
			frame2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
			frame2.BorderSizePixel = 0
			frame2.Parent = screenGui
			frame2.BackgroundTransparency = 0.1
			Instance.new("UICorner", frame2).CornerRadius = UDim.new(0, 25)
			local uiStroke2 = Instance.new("UIStroke", frame2)
			uiStroke2.Color = color2
			uiStroke2.Thickness = 2
			local imageLabel5 = Instance.new("ImageLabel")
			imageLabel5.Size = UDim2.fromScale(0.35, 0.6)
			imageLabel5.Position = UDim2.fromScale(0.05, 0.2)
			imageLabel5.BackgroundTransparency = 1
			imageLabel5.Image = userThumbnailAsync
			imageLabel5.Parent = frame2
			Instance.new("UICorner", imageLabel5).CornerRadius = UDim.new(1, 0)
			local textLabel5 = Instance.new("TextLabel")
			textLabel5.Size = UDim2.fromScale(0.55, 0.4)
			textLabel5.Position = UDim2.fromScale(0.4, 0.25)
			textLabel5.BackgroundTransparency = 1
			textLabel5.Text = text2
			textLabel5.TextColor3 = color
			textLabel5.TextScaled = true
			textLabel5.Font = Enum.Font.GothamBlack
			textLabel5.Parent = frame2
			local textLabel6 = Instance.new("TextLabel")
			textLabel6.Size = UDim2.fromScale(0.55, 0.25)
			textLabel6.Position = UDim2.fromScale(0.4, 0.55)
			textLabel6.BackgroundTransparency = 1
			textLabel6.Text = text4
			textLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
			textLabel6.TextScaled = true
			textLabel6.Font = Enum.Font.GothamBold
			textLabel6.Parent = frame2
			TweenService:Create(frame2, TweenInfo.new(0.6, Enum.EasingStyle.Back), { Position = UDim2.fromScale(0.5, 0.5) }):Play()
			task.wait(6)
			TweenService:Create(frame2, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(blurEffect, TweenInfo.new(0.5), { Size = 0 }):Play()
			task.wait(0.6)
			screenGui:Destroy()
			blurEffect:Destroy()
		end

		local function func126(param38)
			func124(param38)
		end

		if player.Character then
			func126(player.Character)
		end

		player.CharacterAdded:Connect(function(character)
			task.wait(0.5)
			func126(character)
		end)

		func125()
	end)

	game:GetService("Players").PlayerRemoving:Connect(function(player)
		if tbl38[player.UserId] then
			local entry12 = tbl38[player.UserId]
			entry12.Leaves = entry12.Leaves + 1
			tbl38[player.UserId].StartTime = os.time()
		end
	end)

	getgenv().Logger_Input.FocusLost:Connect(function()
		local env = GetPlayerV1(getgenv().Logger_Input.Text)

		if not env then
			SendNotify("System VR7", "يرجى إدخال اسم لاعب", 3)
			getgenv().Logger_Input.Text = ""
			return
		end

		if tbl39[env.UserId] then
			SendNotify("System VR7", "هذا اللاعب مضاف مسبقًا", 3)
			getgenv().Logger_Input.Text = ""
			return
		end

		local entry13 = tbl38[env.UserId]
		if not entry13 then
			return
		end
		local frame2 = Instance.new("Frame")
		frame2.Size = UDim2.new(0, 330, 0, 52)
		frame2.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
		frame2.BorderSizePixel = 2
		frame2.Parent = getgenv().Logger_Button_List_Section
		tbl39[env.UserId] = frame2
		local imageLabel5 = Instance.new("ImageLabel")
		imageLabel5.Name = "TargetImage"
		imageLabel5.Size = UDim2.new(0, 36, 0, 36)
		imageLabel5.Position = UDim2.new(0, 8, 0, 4)
		imageLabel5.BackgroundTransparency = 1
		imageLabel5.Image = Players:GetUserThumbnailAsync(env.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
		imageLabel5.Parent = frame2
		local uiCorner2 = Instance.new("UICorner")
		uiCorner2.CornerRadius = UDim.new(1, 0)
		uiCorner2.Parent = imageLabel5
		local name2 = #env.Name <= #env.DisplayName and env.Name or env.DisplayName
		local textLabel5 = Instance.new("TextLabel")
		textLabel5.Size = UDim2.new(0, 50, 0, 12)
		textLabel5.Name = "NameLabel"
		textLabel5.Position = UDim2.new(0, 0, 0, 38)
		textLabel5.BackgroundTransparency = 1
		textLabel5.Text = name2
		textLabel5.TextScaled = true
		textLabel5.Font = Enum.Font.Gotham
		textLabel5.TextColor3 = Color3.new(1, 1, 1)
		textLabel5.Parent = frame2
		local frame3 = Instance.new("Frame")
		frame3.Size = UDim2.new(0, 190, 1, 0)
		frame3.Position = UDim2.new(0, 80, 0, 0)
		frame3.BackgroundTransparency = 1
		frame3.Parent = frame2
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 2)
		uiListLayout.Parent = frame3

		local function createTextLabel(textColor3)
			local textLabel6 = Instance.new("TextLabel")
			textLabel6.Size = UDim2.new(1, 0, 0, 14)
			textLabel6.BackgroundTransparency = 1
			textLabel6.TextColor3 = textColor3
			textLabel6.Font = Enum.Font.Gotham
			textLabel6.TextScaled = true
			textLabel6.TextXAlignment = Enum.TextXAlignment.Left
			textLabel6.Parent = frame3
			return textLabel6
		end

		local textLabel8 = createTextLabel(Color3.fromRGB(0, 255, 0))
		local textLabel9 = createTextLabel(Color3.fromRGB(255, 80, 80))
		local textLabel10 = createTextLabel(Color3.fromRGB(200, 200, 200))
		local textButton53 = Instance.new("TextButton")
		textButton53.Size = UDim2.new(0, 18, 0, 18)
		textButton53.Position = UDim2.new(1, -22, 0, 4)
		textButton53.Text = utf8.char(128465)
		textButton53.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		textButton53.TextColor3 = Color3.new(1, 1, 1)
		textButton53.Font = Enum.Font.GothamBold
		textButton53.TextSize = 16
		textButton53.Parent = frame2

		textButton53.MouseButton1Click:Connect(function()
			tbl39[env.UserId] = nil
			frame2:Destroy()
		end)

		local textButton54 = Instance.new("TextButton")
		textButton54.Size = UDim2.new(0, 18, 0, 18)
		textButton54.Position = UDim2.new(1, -22, 0, 26)
		textButton54.Text = utf8.char(129529)
		textButton54.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		textButton54.TextColor3 = Color3.new(1, 1, 1)
		textButton54.Font = Enum.Font.GothamBold
		textButton54.TextSize = 16
		textButton54.Parent = frame2

		textButton54.MouseButton1Click:Connect(function()
			entry13.Joins = 0
			entry13.Leaves = 0
			entry13.StartTime = os.time()
			textLabel10.Text = "00:00"
			SendNotify("System VR7", "تم تصفير معلومات اللاعب", 2)
		end)

		task.spawn(function()
			while frame2.Parent do
				local startTime = entry13.StartTime
				local n = os.time() - startTime
				local n2 = math.floor(n / 60)
				local n3 = n % 60
				textLabel8.Text = "عدد الدخول: " .. entry13.Joins
				textLabel9.Text = "عدد الخروج: " .. entry13.Leaves

				if game.Players:FindFirstChild(env.Name) then
					textLabel10.Text = n2 * 60 + n3 >= 3600 and string.format("%02d:%02d:%02d", math.floor((n2 * 60 + n3) / 3600), math.floor((n2 * 60 + n3) % 3600 / 60), (n2 * 60 + n3) % 60) or string.format("%02d:%02d", n2, n3)
				end

				task.wait(1)
			end
		end)

		wait(0.01)
		getgenv().Logger_Input.Text = ""
	end)
end

getgenv().Discord_Button.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/vr7")
	SendNotify("System VR7", "تم نسخ رابط سيرفر الدسكورد", 5)
end)

getgenv().MuteNoti.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().MuteNoti)

	if getgenv().MuteNoti.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().NotifcationVloume = 0
		getgenv().ConfigData.NotificationMute = true
	else
		getgenv().NotifcationVloume = 10
		getgenv().ConfigData.NotificationMute = false
	end

	func17(getgenv().ConfigData)
end)

getgenv().ChangeColor.MouseButton1Click:Connect(function()
	local result4 = Colors()
	local r3 = result4.r
	local g3 = result4.g
	local b3 = result4.b
	local r22 = result4.r2
	local g22 = result4.g2
	local b22 = result4.b2
	r = r3
	g = g3
	b = b3
	r2 = r22
	g2 = g22
	b2 = b22
	getgenv().ColorforFback = Color3.fromRGB(r3, g3, b3)
	local color = Color3.fromRGB(r3, g3, b3)
	local color2 = Color3.fromRGB(r22, g22, b22)
	local colorSections = getgenv().colorSections
	local vR7 = getgenv().VR7
	local env2 = getgenv().StopDrag.ImageColor3 == Color3.fromRGB(0, 230, 0)

	local function func127(flag34)
		for _, colorSection in ipairs(colorSections) do
			if flag34 == Color3.fromRGB(colorSection.r, colorSection.g, colorSection.b) then
				return "primary"
			end

			if flag34 == Color3.fromRGB(colorSection.r2, colorSection.g2, colorSection.b2) then
				return "secondary"
			end
		end
	end

	for _, descendant in ipairs(vR7:GetDescendants()) do
		local function func128(param39, param40)
			return (pcall(function()
				descendant[param39] = param40
			end))
		end

		local ok2, result = pcall(function()
			return descendant.BackgroundColor3
		end)

		if ok2 and result then
			local flag35 = func127(result)

			if flag35 == "primary" then
				func128("BackgroundColor3", color)
			elseif flag35 == "secondary" then
				func128("BackgroundColor3", color2)
			end
		end

		local ok3, result2 = pcall(function()
			return descendant.TextColor3
		end)

		if ok3 and result2 then
			local flag36 = func127(result2)

			if flag36 == "primary" then
				func128("TextColor3", color)
			elseif flag36 == "secondary" then
				func128("TextColor3", color2)
			end
		end

		if (descendant:IsA("ImageLabel") or descendant:IsA("ImageButton")) and descendant.Name ~= "Profile_Image" and descendant.Name ~= "TargetImage" and descendant.Name ~= "Logger_Button" and descendant.Name ~= "ClickTargetTool_Button" and descendant.Name ~= "Developer" and descendant.Name ~= "Ticket_Asset" then
			local ok4, result3 = pcall(function()
				return descendant.ImageColor3
			end)

			if ok4 and result3 then
				local flag37 = func127(result3)

				if flag37 == "primary" then
					func128("ImageColor3", color)
				elseif flag37 == "secondary" then
					func128("ImageColor3", color2)
				end
			end
		end

		local ok4, result3 = pcall(function()
			return descendant.BorderColor3
		end)

		if ok4 and result3 then
			local flag38 = func127(result3)

			if flag38 == "primary" then
				func128("BorderColor3", color)
			elseif flag38 == "secondary" then
				func128("BorderColor3", color2)
			end
		end

		if descendant:IsA("UIStroke") then
			local color5 = func127(descendant.Color)

			if color5 == "primary" then
				pcall(function()
					descendant.Color = color
				end)
			elseif color5 == "secondary" then
				pcall(function()
					descendant.Color = color2
				end)
			end
		end

		getgenv().Discord_Button.ImageColor3 = Color3.fromRGB(255, 255, 255)
		getgenv().RightsLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
		getgenv().VersionLabel.TextColor3 = Color3.fromRGB(150, 150, 150)

		if Check_S then
			getgenv().StopDrag.ImageColor3 = Color3.fromRGB(0, 230, 0)
		end

		if descendant.Name == "NameLabel" then
			descendant.TextColor = BrickColor.new("White")
		end
	end

	getgenv().ConfigData.Color = false
	func17(getgenv().ConfigData)
end)

if getgenv().ConfigData.NotificationMute then
	getgenv().MuteNoti.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)
end

if getgenv().ConfigData.NoFlyAnim then
	getgenv().NoFlyAnim_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)
end

getgenv().SaveColor.MouseButton1Click:Connect(function()
	SendNotify("System VR7", "تم حفظ اللون", 5)
	local color = { r = r, g = g, b = b, r2 = r2, g2 = g2, b2 = b2 }
	getgenv().ConfigData.Color = color
	func17(getgenv().ConfigData)
end)

getgenv().AdminsCommandsInfo = getgenv().ConfigData.AdminsCommandsInfo
getgenv().AdminCommands_Button_Section = Instance.new("ScrollingFrame")
getgenv().AdminCommands_Button_Section.Name = "AdminCommands_Button_Section"
getgenv().AdminCommands_Button_Section.Parent = imageLabel
getgenv().AdminCommands_Button_Section.Active = true
getgenv().AdminCommands_Button_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
getgenv().AdminCommands_Button_Section.BackgroundTransparency = 1
getgenv().AdminCommands_Button_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().AdminCommands_Button_Section.BorderSizePixel = 0
getgenv().AdminCommands_Button_Section.Position = UDim2.new(0, 105, 0, 30)
getgenv().AdminCommands_Button_Section.Size = UDim2.new(0, 395, 0, 320)
getgenv().AdminCommands_Button_Section.Visible = false
getgenv().AdminCommands_Button_Section.CanvasSize = UDim2.new(0, 0, 2, 0)
getgenv().AdminCommands_Button_Section.ScrollBarThickness = 5
getgenv().Alertclone = textLabel2:Clone()
getgenv().Alertclone.Text = "هذه الاعدادات مخصصة لنسخ الاوامر"
getgenv().Alertclone.TextSize = 30

do
	local value69 = AdminCommands_Button_Section
	getgenv().Alertclone.Parent = value69
end

getgenv().Admin_ButtonSample = Instance.new("TextButton")
getgenv().Admin_ButtonSample.Name = "Admin_ButtonSample"

do
	local value70 = AdminCommands_Button_Section
	getgenv().Admin_ButtonSample.Parent = value70
end

getgenv().Admin_ButtonSample.BackgroundColor3 = Color3.fromRGB(r, g, b)
getgenv().Admin_ButtonSample.BackgroundTransparency = 0.5
getgenv().Admin_ButtonSample.BorderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Admin_ButtonSample.BorderSizePixel = 0
getgenv().Admin_ButtonSample.Position = UDim2.new(0, 25, 0, 50)
getgenv().Admin_ButtonSample.Size = UDim2.new(0, 150, 0, 30)

do
	local oswald = Enum.Font.Oswald
	getgenv().Admin_ButtonSample.Font = oswald
end

getgenv().Admin_ButtonSample.Text = "Char ...."
getgenv().Admin_ButtonSample.TextColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Admin_ButtonSample.TextScaled = true
getgenv().Admin_ButtonSample.TextSize = 14
getgenv().Admin_ButtonSample.TextWrapped = true

getgenv().Admin_ButtonSample.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().Admin_ButtonSample)

	if getgenv().Admin_ButtonSample.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().REButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().WormifyButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().FryDanceButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().CreepifyButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AdminsCommandsInfo.Creepify = false
		getgenv().AdminsCommandsInfo.Wormify = false
		getgenv().AdminsCommandsInfo.Char = true
		getgenv().AdminsCommandsInfo.Re = false
		getgenv().AdminsCommandsInfo.FryDance = false
		getgenv().AdminsCommandsInfo.CharV = getgenv().Admin_LabelSample.Text
	else
		getgenv().AdminsCommandsInfo.Char = false
	end
end)

getgenv().Admin_LabelSample = Instance.new("TextBox")
getgenv().Admin_LabelSample.Name = "Admin_LabelSample"

do
	local value71 = AdminCommands_Button_Section
	getgenv().Admin_LabelSample.Parent = value71
end

getgenv().Admin_LabelSample.AnchorPoint = Vector2.new(0.5, 0.5)
getgenv().Admin_LabelSample.BackgroundColor3 = Color3.fromRGB(r2, g2, b2)
getgenv().Admin_LabelSample.BackgroundTransparency = 0.3
getgenv().Admin_LabelSample.BorderColor3 = Color3.fromRGB(r, g, b)
getgenv().Admin_LabelSample.Position = UDim2.new(0, 290, 0, 64)
getgenv().Admin_LabelSample.Size = UDim2.new(0, 150, 0, 30)

do
	local gotham = Enum.Font.Gotham
	getgenv().Admin_LabelSample.Font = gotham
end

getgenv().Admin_LabelSample.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
getgenv().Admin_LabelSample.PlaceholderText = "اسم الاسكن"
getgenv().Admin_LabelSample.Text = ""
getgenv().Admin_LabelSample.TextColor3 = Color3.fromRGB(20, 20, 20)
getgenv().Admin_LabelSample.TextSize = 16
getgenv().Admin_LabelSample.TextWrapped = true

getgenv().Admin_LabelSample.FocusLost:Connect(function()
	getgenv().AdminsCommandsInfo.CharV = getgenv().Admin_LabelSample.Text
end)

CreateToggle(getgenv().Admin_ButtonSample)
getgenv().TitleButton = getgenv().Admin_ButtonSample:Clone()
getgenv().TitleButton.Text = "Titlepk ...."
getgenv().TitleButton.Position = UDim2.new(0, 25, 0, 100)

do
	local value72 = AdminCommands_Button_Section
	getgenv().TitleButton.Parent = value72
end

getgenv().TitleButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().TitleButton)

	if getgenv().TitleButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Title = true
		getgenv().AdminsCommandsInfo.TitleV = getgenv().Titleinput.Text
	else
		getgenv().AdminsCommandsInfo.Title = false
	end
end)

getgenv().Titleinput = getgenv().Admin_LabelSample:Clone()
getgenv().Titleinput.PlaceholderText = "لقب"
getgenv().Titleinput.Position = UDim2.new(0, 290, 0, 114)

do
	local value73 = AdminCommands_Button_Section
	getgenv().Titleinput.Parent = value73
end

getgenv().Titleinput.FocusLost:Connect(function()
	getgenv().AdminsCommandsInfo.TitleV = getgenv().Titleinput.Text
end)

getgenv().SizeButton = getgenv().Admin_ButtonSample:Clone()
getgenv().SizeButton.Text = "Size ...."
getgenv().SizeButton.Position = UDim2.new(0, 25, 0, 150)

do
	local value74 = AdminCommands_Button_Section
	getgenv().SizeButton.Parent = value74
end

getgenv().SizeButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().SizeButton)

	if getgenv().SizeButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Size = true
		getgenv().AdminsCommandsInfo.SizeV = getgenv().Sizeinput.Text
	else
		getgenv().AdminsCommandsInfo.Size = false
	end
end)

getgenv().Sizeinput = getgenv().Admin_LabelSample:Clone()
getgenv().Sizeinput.PlaceholderText = "رقم الحجم"
getgenv().Sizeinput.Position = UDim2.new(0, 290, 0, 164)

do
	local value75 = AdminCommands_Button_Section
	getgenv().Sizeinput.Parent = value75
end

getgenv().Sizeinput.FocusLost:Connect(function()
	if getgenv().Sizeinput.Text:match("[^%d%.]") then
		getgenv().Sizeinput.Text = 0
		getgenv().AdminsCommandsInfo.SizeV = 0
	else
		getgenv().AdminsCommandsInfo.SizeV = getgenv().Sizeinput.Text
	end
end)

getgenv().ColorButton = getgenv().Admin_ButtonSample:Clone()
getgenv().ColorButton.Text = "Color ...."
getgenv().ColorButton.Position = UDim2.new(0, 25, 0, 200)

do
	local value76 = AdminCommands_Button_Section
	getgenv().ColorButton.Parent = value76
end

getgenv().ColorButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().ColorButton)

	if getgenv().ColorButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Color = true
	else
		getgenv().AdminsCommandsInfo.Color = false
	end
end)

getgenv().ShineButton = getgenv().Admin_ButtonSample:Clone()
getgenv().ShineButton.Text = "Shine ...."
getgenv().ShineButton.Position = UDim2.new(0, 210, 0, 200)

do
	local value77 = AdminCommands_Button_Section
	getgenv().ShineButton.Parent = value77
end

getgenv().ShineButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().ShineButton)

	if getgenv().ShineButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Shine = true
	else
		getgenv().AdminsCommandsInfo.Shine = false
	end
end)

getgenv().REButton = getgenv().Admin_ButtonSample:Clone()
getgenv().REButton.Text = "Re ...."
getgenv().REButton.Position = UDim2.new(0, 210, 0, 250)

do
	local value78 = AdminCommands_Button_Section
	getgenv().REButton.Parent = value78
end

getgenv().REButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().REButton)

	if getgenv().REButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().Admin_ButtonSample.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().FryDanceButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().WormifyButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().CreepifyButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AdminsCommandsInfo.Creepify = false
		getgenv().AdminsCommandsInfo.FryDance = false
		getgenv().AdminsCommandsInfo.Re = true
		getgenv().AdminsCommandsInfo.Wormify = false
		getgenv().AdminsCommandsInfo.Char = false
	else
		getgenv().AdminsCommandsInfo.Re = false
	end
end)

getgenv().AuraButton = getgenv().Admin_ButtonSample:Clone()
getgenv().AuraButton.Text = "Aura ...."
getgenv().AuraButton.Position = UDim2.new(0, 25, 0, 250)

do
	local value79 = AdminCommands_Button_Section
	getgenv().AuraButton.Parent = value79
end

getgenv().AuraButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().AuraButton)

	if getgenv().AuraButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Aura = true
	else
		getgenv().AdminsCommandsInfo.Aura = false
	end
end)

getgenv().HeightButton = getgenv().Admin_ButtonSample:Clone()
getgenv().HeightButton.Text = "Height ...."
getgenv().HeightButton.Position = UDim2.new(0, 25, 0, 300)

do
	local value80 = AdminCommands_Button_Section
	getgenv().HeightButton.Parent = value80
end

getgenv().HeightButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().HeightButton)

	if getgenv().HeightButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Height = true
		getgenv().AdminsCommandsInfo.HeightV = getgenv().Heightinput.Text
	else
		getgenv().AdminsCommandsInfo.Height = false
	end
end)

getgenv().Heightinput = getgenv().Admin_LabelSample:Clone()
getgenv().Heightinput.PlaceholderText = "رقم الارتفاع"
getgenv().Heightinput.Position = UDim2.new(0, 290, 0, 314)

do
	local value81 = AdminCommands_Button_Section
	getgenv().Heightinput.Parent = value81
end

getgenv().Heightinput.FocusLost:Connect(function()
	if getgenv().Heightinput.Text:match("[^%d%.]") then
		getgenv().AdminsCommandsInfo.HeightV = 0
		getgenv().Heightinput.Text = 0
	else
		getgenv().AdminsCommandsInfo.HeightV = getgenv().Heightinput.Text
	end
end)

getgenv().ThinButton = getgenv().Admin_ButtonSample:Clone()
getgenv().ThinButton.Text = "Thin ...."
getgenv().ThinButton.Position = UDim2.new(0, 25, 0, 350)

do
	local value82 = AdminCommands_Button_Section
	getgenv().ThinButton.Parent = value82
end

getgenv().ThinButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().ThinButton)

	if getgenv().ThinButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Thin = true
	else
		getgenv().AdminsCommandsInfo.Thin = false
	end
end)

getgenv().WormifyButton = getgenv().Admin_ButtonSample:Clone()
getgenv().WormifyButton.Text = "Wormify ...."
getgenv().WormifyButton.Position = UDim2.new(0, 210, 0, 350)

do
	local value83 = AdminCommands_Button_Section
	getgenv().WormifyButton.Parent = value83
end

getgenv().WormifyButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().WormifyButton)

	if getgenv().WormifyButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().Admin_ButtonSample.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().CreepifyButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().FryDanceButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().REButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AdminsCommandsInfo.Wormify = true
		getgenv().AdminsCommandsInfo.Char = false
		getgenv().AdminsCommandsInfo.FryDance = false
		getgenv().AdminsCommandsInfo.Creepify = false
		getgenv().AdminsCommandsInfo.Re = false
	else
		getgenv().AdminsCommandsInfo.Wormify = false
	end
end)

getgenv().SitButton = getgenv().Admin_ButtonSample:Clone()
getgenv().SitButton.Text = "Sit ...."
getgenv().SitButton.Position = UDim2.new(0, 210, 0, 400)

do
	local value84 = AdminCommands_Button_Section
	getgenv().SitButton.Parent = value84
end

getgenv().SitButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().SitButton)

	if getgenv().SitButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Sit = true
	else
		getgenv().AdminsCommandsInfo.Sit = false
	end
end)

getgenv().CreepifyButton = getgenv().Admin_ButtonSample:Clone()
getgenv().CreepifyButton.Text = "Creepify ...."
getgenv().CreepifyButton.Position = UDim2.new(0, 25, 0, 400)

do
	local value85 = AdminCommands_Button_Section
	getgenv().CreepifyButton.Parent = value85
end

getgenv().CreepifyButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().CreepifyButton)

	if getgenv().CreepifyButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().Admin_ButtonSample.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().WormifyButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().FryDanceButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().REButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AdminsCommandsInfo.Wormify = false
		getgenv().AdminsCommandsInfo.Char = false
		getgenv().AdminsCommandsInfo.Re = false
		getgenv().AdminsCommandsInfo.FryDance = false
		getgenv().AdminsCommandsInfo.Creepify = true
	else
		getgenv().AdminsCommandsInfo.Creepify = false
	end
end)

getgenv().DogButton = getgenv().Admin_ButtonSample:Clone()
getgenv().DogButton.Text = "Dog ...."
getgenv().DogButton.Position = UDim2.new(0, 25, 0, 450)

do
	local value86 = AdminCommands_Button_Section
	getgenv().DogButton.Parent = value86
end

getgenv().DogButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().DogButton)

	if getgenv().DogButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().PhaseButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AuraButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().SitButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AdminsCommandsInfo.Aura = false
		getgenv().AdminsCommandsInfo.Phase = false
		getgenv().AdminsCommandsInfo.Sit = false
		getgenv().AdminsCommandsInfo.Dog = true
	else
		getgenv().AdminsCommandsInfo.Dog = false
	end
end)

getgenv().FryDanceButton = getgenv().Admin_ButtonSample:Clone()
getgenv().FryDanceButton.Text = "FryDance ...."
getgenv().FryDanceButton.Position = UDim2.new(0, 25, 0, 500)

do
	local value87 = AdminCommands_Button_Section
	getgenv().FryDanceButton.Parent = value87
end

getgenv().FryDanceButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().FryDanceButton)

	if getgenv().FryDanceButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().Admin_ButtonSample.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().WormifyButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().CreepifyButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().REButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AdminsCommandsInfo.Wormify = false
		getgenv().AdminsCommandsInfo.Char = false
		getgenv().AdminsCommandsInfo.Re = false
		getgenv().AdminsCommandsInfo.Creepify = false
		getgenv().AdminsCommandsInfo.FryDance = true
	else
		getgenv().AdminsCommandsInfo.FryDance = false
	end
end)

getgenv().FatButton = getgenv().Admin_ButtonSample:Clone()
getgenv().FatButton.Text = "Fat ...."
getgenv().FatButton.Position = UDim2.new(0, 210, 0, 500)

do
	local value88 = AdminCommands_Button_Section
	getgenv().FatButton.Parent = value88
end

getgenv().FatButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().FatButton)

	if getgenv().FatButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().AdminsCommandsInfo.Fat = true
	else
		getgenv().AdminsCommandsInfo.Fat = false
	end
end)

getgenv().PhaseButton = getgenv().Admin_ButtonSample:Clone()
getgenv().PhaseButton.Text = "Phase ...."
getgenv().PhaseButton.Position = UDim2.new(0, 210, 0, 450)

do
	local value89 = AdminCommands_Button_Section
	getgenv().PhaseButton.Parent = value89
end

getgenv().PhaseButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().PhaseButton)

	if getgenv().PhaseButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().DogButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AuraButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().SitButton.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AdminsCommandsInfo.Aura = false
		getgenv().AdminsCommandsInfo.Dog = false
		getgenv().AdminsCommandsInfo.Sit = false
		getgenv().AdminsCommandsInfo.Phase = true
	else
		getgenv().AdminsCommandsInfo.Phase = false
	end
end)

getgenv().HideNotButton = getgenv().Admin_ButtonSample:Clone()
getgenv().HideNotButton.Text = "اخفاء اشعارات الادمن"
getgenv().HideNotButton.Position = UDim2.new(0, 210, 0, 550)

do
	local value90 = AdminCommands_Button_Section
	getgenv().HideNotButton.Parent = value90
end

getgenv().HideNotButton.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().HideNotButton)

	if getgenv().HideNotButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0) and game:GetService("StarterGui"):FindFirstChild("HDAdminInterface") then
		game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.Notices.Visible = true
	elseif game:GetService("StarterGui"):FindFirstChild("HDAdminInterface") then
		game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.Notices.Visible = false
	end
end)

do
	local function func129()
		local env3 = {
			Char = getgenv().Admin_ButtonSample,
			Title = getgenv().TitleButton,
			Size = getgenv().SizeButton,
			Color = getgenv().ColorButton,
			Shine = getgenv().ShineButton,
			Re = getgenv().REButton,
			Height = getgenv().HeightButton,
			Aura = getgenv().AuraButton,
			Wormify = getgenv().WormifyButton,
			Thin = getgenv().ThinButton,
			Creepify = getgenv().CreepifyButton,
			Sit = getgenv().SitButton,
			HideNot = getgenv().HideNotButton,
			Dog = getgenv().DogButton,
			FryDance = getgenv().FryDanceButton,
			Phase = getgenv().PhaseButton,
			Fat = getgenv().FatButton,
		}

		local env4 = {
			CharV = getgenv().Admin_LabelSample,
			TitleV = getgenv().Titleinput,
			SizeV = getgenv().Sizeinput,
			HeightV = getgenv().Heightinput,
		}

		for k, value91 in pairs(getgenv().AdminsCommandsInfo) do
			if not tostring(k):find("V") then
				local entry14 = env3[k]

				if entry14 and entry14:FindFirstChild("Ticket_Asset") then
					entry14.Ticket_Asset.ImageColor3 = value91 == true and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
				end
			end

			if tostring(k):find("V") then
				local entry15 = env4[k]

				if entry15 then
					entry15.Text = value91 ~= nil and tostring(value91) or ""
				end
			end
		end

		if getgenv().HideNotButton.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			if game:GetService("StarterGui"):FindFirstChild("HDAdminInterface") then
				game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.Notices.Visible = false
			end
		end
	end

	func129()
	getgenv().HelpButton = textButton13:Clone()
	getgenv().HelpButton.Text = "نسخ 1"
	getgenv().HelpButton.Position = UDim2.new(0, 25, 0, 600)
	local value92 = AdminCommands_Button_Section
	getgenv().HelpButton.Parent = value92

	getgenv().HelpButton.MouseButton1Click:Connect(function()
		getgenv().AdminsCommandsInfo = {
			Char = false,
			CharV = "Hm501",
			Title = true,
			TitleV = "فحبه",
			Size = true,
			SizeV = 3,
			Color = true,
			Shine = true,
			Re = false,
			Height = true,
			HeightV = 0,
			Aura = true,
			Wormify = false,
			Thin = false,
			Creepify = false,
			Sit = false,
			HideNot = true,
			Dog = false,
			Phase = false,
			FryDance = false,
			Fat = false,
		}

		getgenv().AdminCmdSpeed_Input.Text = 5
		getgenv().ConfigData.AdminCmdSpeed = 5
		func129()
		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "هاذ النسخ قوي بشالية محمد", Duration = 5 })
	end)

	getgenv().Help1Button = textButton13:Clone()
	getgenv().Help1Button.Text = "نسخ 2"
	getgenv().Help1Button.Position = UDim2.new(0, 210, 0, 600)
	local value93 = AdminCommands_Button_Section
	getgenv().Help1Button.Parent = value93

	getgenv().Help1Button.MouseButton1Click:Connect(function()
		getgenv().AdminsCommandsInfo = {
			Char = false,
			CharV = "Hm501",
			Title = true,
			TitleV = "فحبه",
			Size = true,
			SizeV = 3,
			Color = false,
			Shine = true,
			Re = false,
			Height = true,
			HeightV = 0,
			Aura = false,
			Wormify = true,
			Thin = false,
			Creepify = false,
			Sit = true,
			HideNot = true,
			Dog = false,
			Phase = true,
			FryDance = false,
			Fat = false,
		}

		getgenv().AdminCmdSpeed_Input.Text = 5
		getgenv().ConfigData.AdminCmdSpeed = 5
		func129()
		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "هاذ النسخ قوي بشالية محمد", Duration = 5 })
	end)

	getgenv().Help1Button = textButton13:Clone()
	getgenv().Help1Button.Text = "نسخ 3"
	getgenv().Help1Button.Position = UDim2.new(0, 25, 0, 650)
	local value94 = AdminCommands_Button_Section
	getgenv().Help1Button.Parent = value94

	getgenv().Help1Button.MouseButton1Click:Connect(function()
		getgenv().AdminsCommandsInfo = {
			Char = false,
			CharV = "Hm501",
			Title = true,
			TitleV = "فحبه",
			Size = true,
			SizeV = 3,
			Color = false,
			Shine = true,
			Re = false,
			Height = true,
			HeightV = 0,
			Aura = false,
			Wormify = false,
			Thin = false,
			Creepify = false,
			Sit = false,
			HideNot = true,
			Dog = false,
			Phase = false,
			FryDance = true,
			Fat = false,
		}

		getgenv().AdminCmdSpeed_Input.Text = 5
		getgenv().ConfigData.AdminCmdSpeed = 5
		func129()
		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "هاذ النسخ قوي بشالية محمد", Duration = 5 })
	end)
end

getgenv().SaveCommandsButton = textButton13:Clone()
getgenv().SaveCommandsButton.Text = "حفظ الاعدادات"
getgenv().SaveCommandsButton.Position = UDim2.new(0, 25, 0, 550)

do
	local value95 = AdminCommands_Button_Section
	getgenv().SaveCommandsButton.Parent = value95
end

getgenv().SaveCommandsButton.MouseButton1Click:Connect(function()
	SendNotify("System VR7", "تم حفظ الاعدادات", 5)
	getgenv().ConfigData.AdminsCommandsInfo = getgenv().AdminsCommandsInfo
	func17(getgenv().ConfigData)
end)

getgenv().AdminCommands_Button.MouseButton1Click:Connect(function()
	getgenv().Settings_Button_Section.Visible = false
	getgenv().AdminCommands_Button_Section.Visible = true
end)

getgenv().NoFlyAnim_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(getgenv().NoFlyAnim_Button)

	if getgenv().NoFlyAnim_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		getgenv().ConfigData.NoFlyAnim = true
	else
		getgenv().ConfigData.NoFlyAnim = false
	end

	func17(getgenv().ConfigData)
end)

getgenv().HelpHd_Button.MouseButton1Click:Connect(function()
	SendNotify("System VR7", "خانة الاوامر تستخدم لكتابة اوامر ادمن بدون احد يشوفك", 5)
	local sound = Instance.new("Sound", game.Workspace)
	sound.SoundId = "rbxassetid://3398620867"
	sound.Volume = getgenv().NotifcationVloume

	sound.Ended:Connect(function()
		sound:Destroy()
	end)

	sound:Play()
end)

textButton17.MouseButton1Click:Connect(function()
	ChangeToggleColor(textButton17)

	if textButton17.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		local tbl41 = {}

		for _, child in ipairs(GetRoot(localPlayer).Parent:GetChildren()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				table.insert(tbl41, child)
			end
		end

		repeat
			wait(0.1)

			pcall(function()
				for _, item8 in ipairs(tbl41) do
					if localPlayer.Character[item8.Name].CanCollide then
						task.wait()
						localPlayer.Character[item8.Name].CanCollide = false
					end
				end
			end)
		until textButton17.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

		for _, item9 in ipairs(tbl41) do
			if not localPlayer.Character[item9.Name].CanCollide then
				task.wait(0.01)
				localPlayer.Character[item9.Name].CanCollide = true
			end
		end

		game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
	end
end)

textButton16.MouseButton1Click:Connect(function()
	cFrame = GetRoot(localPlayer).CFrame
	SendNotify("System VR7", "تم حفظ الشيك بوينت", 5)
end)

getgenv().SubLabel.MouseButton1Click:Connect(function()
	if getgenv().CommandBoxEnabled then
		ShowVR7Notification("VR7 Team", "discord.gg/vr7\nللاشتراك تفضل دسكورد والاسعار مناسبة", "rbxassetid://136772242182146", 7)
	else
		OpenSubScreen()
	end
end)

getgenv().ToCheckpoint_Button.MouseButton1Click:Connect(function()
	if cFrame then
		GetRoot(localPlayer).CFrame = cFrame
	else
		SendNotify("System VR7", "لايوجد شيك بوينت", 5)
	end
end)

textButton14.MouseButton1Click:Connect(function()
	cFrame = nil
	SendNotify("System VR7", "تم حذف الشيك بوينت", 5)
end)

textButton23.MouseButton1Click:Connect(function()
	SendNotify("System VR7", "يمكنك ايقاف انميشن الطيران من الاعدادات", 3)

	if game.PlaceId == 11379739543 then
		SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
		textButton23.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		return
	end

	ChangeToggleColor(textButton23)

	if textButton23.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		NOFLY()
		wait()

		if GetDevice() == "PC" then
			wFLY()
		else
			func24()
		end
	else
		NOFLY()
		wait()
		func23()
	end

	StopAnim()
end)

imageButton.MouseButton1Click:Connect(function()
	for _, child in ipairs(localPlayer.Backpack:GetChildren()) do
		if child.Name == "ClickTarget" then
			child:Destroy()
		end
	end

	for _, child in ipairs(localPlayer.Character:GetChildren()) do
		if child.Name == "ClickTarget" then
			child:Destroy()
		end
	end

	local tool = Instance.new("Tool")
	tool.Name = "ClickTarget"
	tool.RequiresHandle = false
	tool.TextureId = "rbxassetid://13769558274"
	tool.ToolTip = "اختار شخص"

	local function func130()
		GetRoot(localPlayer)
		local target = mouse.Target

		if target and target.Parent then
			local playerFromCharacter

			if target.Parent:IsA("Model") then
				playerFromCharacter = game.Players:GetPlayerFromCharacter(target.Parent)
			else
				local parent = target.Parent
				playerFromCharacter = nil

				if parent:IsA("Accessory") then
					playerFromCharacter = game.Players:GetPlayerFromCharacter(target.Parent.Parent)
				end
			end

			if playerFromCharacter then
				if playerFromCharacter == game.Players.LocalPlayer then
					return
				end
				UpdateTarget(playerFromCharacter)
			end
		end
	end

	tool.Activated:Connect(function()
		func130()
	end)

	tool.Parent = localPlayer.Backpack
end)

FlingTarget_ButtonF = function()
	if name ~= nil then
		ChangeToggleColor(textButton26)
		textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

		if textButton26.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			if game.PlaceId == 11379739543 then
				SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
				textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
				return
			end

			game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "اذا ماطار الاعب معناها الماب فيه حماية", Duration = 3 })

			if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart then
				if game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity.Magnitude < 50 then
					local cFrame2 = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame
					getgenv().OldPos = cFrame2
				end

				if Players[name].Character.Head then
					workspace.CurrentCamera.CameraSubject = Players[name].Character.Head
				elseif Players[name].Character:FindFirstChildOfClass("Accessory"):FindFirstChild("Handle") then
					workspace.CurrentCamera.CameraSubject = Players[name].Character:FindFirstChildOfClass("Accessory"):FindFirstChild("Handle")
				else
					workspace.CurrentCamera.CameraSubject = Players[name].Character.Humanoid
				end

				if not Players[name].Character:FindFirstChildWhichIsA("BasePart") then
					return
				end

				local function func131(part5, num5, num6)
					game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(part5.Position) * num5 * num6
					game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(part5.Position) * num5 * num6)
					game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(90000000, 900000000, 90000000)
					game.Players.LocalPlayer.Character.Humanoid.RootPart.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
				end

				local function func132()
					local n = 0
					local fallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight
					getgenv().FPDH = fallenPartsDestroyHeight
					workspace.FallenPartsDestroyHeight = (0/0)

					repeat
						task.wait()

						pcall(function()
							if game.Players.LocalPlayer.Character.Humanoid.RootPart and Players[name].Character.Humanoid then
								if Players[name].Character.Humanoid.RootPart.Velocity.Magnitude < 50 then
									n += 100

									for _, item10 in ipairs({
										Vector3.new(0, 1.5, 0),
										Vector3.new(0, -1.5, 0),
										Vector3.new(2.25, 1.5, -2.25),
										Vector3.new(-2.25, -1.5, 2.25),
										Vector3.new(0, 1.5, 0),
										Vector3.new(0, -1.5, 0),
									}) do
										local n2 = Players[name].Character.Humanoid.MoveDirection * Players[name].Character.Humanoid.RootPart.Velocity.Magnitude / 1.25
										func131(Players[name].Character.Humanoid.RootPart, CFrame.new(item10) + n2, CFrame.Angles(math.rad(n), 0, 0))
										task.wait()
									end
								else
									local func133 = ipairs
									local tbl42 = {}
									local tbl43 = { Vector3.new(0, 1.5, Players[name].Character.Humanoid.WalkSpeed), 1.5707963267948966 }
									local tbl44 = { Vector3.new(0, -1.5, -Players[name].Character.Humanoid.WalkSpeed), 0 }
									local tbl45 = { Vector3.new(0, 1.5, Players[name].Character.Humanoid.WalkSpeed), 1.5707963267948966 }

									local tbl46 = {
										Vector3.new(0, 1.5, Players[name].Character.Humanoid.RootPart.Velocity.Magnitude / 1.25),
										1.5707963267948966,
									}

									local tbl47 = {
										Vector3.new(0, -1.5, -Players[name].Character.Humanoid.RootPart.Velocity.Magnitude / 1.25),
										0,
									}

									local tbl48 = {
										Vector3.new(0, 1.5, Players[name].Character.Humanoid.RootPart.Velocity.Magnitude / 1.25),
										1.5707963267948966,
									}

									tbl42[1] = tbl43
									tbl42[2] = tbl44
									tbl42[3] = tbl45
									tbl42[4] = tbl46
									tbl42[5] = tbl47
									tbl42[6] = tbl48
									tbl42[7] = { Vector3.new(0, -1.5, 0), 1.5707963267948966 }
									tbl42[8] = { Vector3.new(0, -1.5, 0), 0 }
									tbl42[9] = { Vector3.new(0, -1.5, 0), -1.5707963267948966 }
									tbl42[10] = { Vector3.new(0, -1.5, 0), 0 }

									for _, value96 in func133(tbl42) do
										local cframe = CFrame.Angles
										local second1 = value96[2]
										func131(Players[name].Character.Humanoid.RootPart, CFrame.new(value96[1]), cframe(second1, 0, 0))
										task.wait()
									end
								end

								game.Players.LocalPlayer.Character.Humanoid.Sit = false

								if Players[name].Character:FindFirstChild("Head") then
									workspace.CurrentCamera.CameraSubject = Players[name].Character.Head
								end
							end
						end)
					until textButton26.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0)
				end

				local bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.Name = "Flinger"
				bodyVelocity.Parent = game.Players.LocalPlayer.Character.Humanoid.RootPart
				bodyVelocity.Velocity = Vector3.new(900000000, 900000000, 900000000)
				bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
				func132()
				bodyVelocity:Destroy()
				game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
				workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid

				repeat
					game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
					game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0))
					game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")

					table.foreach(game.Players.LocalPlayer.Character:GetChildren(), function(param41, instance3)
						if instance3:IsA("BasePart") then
							local vector = Vector3.new()
							local vector2 = Vector3.new()
							instance3.Velocity = vector
							instance3.RotVelocity = vector2
						end
					end)

					task.wait()
				until (game.Players.LocalPlayer.Character.Humanoid.RootPart.Position - getgenv().OldPos.p).Magnitude < 25

				workspace.FallenPartsDestroyHeight = getgenv().FPDH

				if game.Players.LocalPlayer.Character.Humanoid.Sit then
					wait(1)
					game.Players.LocalPlayer.Character.Humanoid.sit = false
				end
			end
		end
	end
end

textButton26.MouseButton1Click:Connect(FlingTarget_ButtonF)

FuckYourSelf_ButtonF = function()
	if name ~= nil then
		ChangeToggleColor(textButton25)

		if textButton25.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			if game.PlaceId == 11379739543 then
				SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
				textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
				return
			end

			for _, getPlayingAnimationTrack7 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
				getPlayingAnimationTrack7:Stop()
			end

			textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			local n = -2
			local n2 = 0.1
			local n3 = -1

			repeat
				pcall(function()
					local torso = Players[name].Character:FindFirstChild("Torso") or Players[name].Character:FindFirstChild("UpperTorso")

					if torso.Name == "Torso" then
						n3 = -0.75
					end

					localPlayer.Character.Humanoid.Sit = true
					GetRoot(localPlayer).CFrame = torso.CFrame * CFrame.new(0, n3, n) * CFrame.Angles(4.7123889803846897, 0, 0)
					GetRoot(localPlayer).Velocity = Vector3.zero
					n += n2

					if n >= -1 or n <= -2 then
						n2 = -n2
					end
				end)

				task.wait()
			until textButton25.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

			GetRoot(localPlayer).Parent.Humanoid.Sit = false
		end
	end
end

textButton25.MouseButton1Click:Connect(FuckYourSelf_ButtonF)

ViewTarget_ButtonF = function()
	if name ~= nil then
		ChangeToggleColor(textButton24)

		if textButton24.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			repeat
				pcall(function()
					game.Workspace.CurrentCamera.CameraSubject = Players[name].Character.Humanoid
				end)

				task.wait()
			until textButton24.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

			game.Workspace.CurrentCamera.CameraSubject = localPlayer.Character.Humanoid
		end
	end
end

textButton24.MouseButton1Click:Connect(ViewTarget_ButtonF)

FocusTarget_ButtonF = function()
	if name == nil then
		return
	end
	ChangeToggleColor(textButton27)
	textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

	if textButton27.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		if game.PlaceId == 11379739543 then
			SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
			textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			return
		end

		local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		getgenv().oldcf = position
		SendNotify("System VR7", "الخيار ذا يسمحلك انك تسمع الشخص وهو يسمعك لما تتكلم مايك", 3)

		repeat
			task.wait()
			GetRoot(localPlayer).CFrame = Players[name].Character.Head.CFrame * CFrame.new(0, -20, 0) * CFrame.Angles(3.1415926535897931, 0, 0)
			game.Workspace.CurrentCamera.CameraSubject = Players[name].Character.Humanoid
		until textButton27.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

		game.Workspace.CurrentCamera.CameraSubject = GetRoot(localPlayer).Parent.Humanoid
		TeleportTO(getgenv().oldcf.X, getgenv().oldcf.Y, getgenv().oldcf.Z, "pos", "safe")
		game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
	end
end

textButton27.MouseButton1Click:Connect(FocusTarget_ButtonF)

BenxTarget_ButtonF = function()
	if name == nil then
		return
	end
	ChangeToggleColor(textButton28)

	if textButton28.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "يمكنك تغير سرعة البانق من الاعدادات في الواجهه", Duration = 3 })

		if game.PlaceId ~= 11379739543 then
			repeat
				pcall(function()
					local torso = Players[name].Character:FindFirstChild("Torso") or Players[name].Character:FindFirstChild("UpperTorso")

					if GetRoot(localPlayer).Parent.Humanoid.RigType.Name == "R15" and GetRoot(localPlayer).Parent.Humanoid.Sit then
						if not CheckAnim("5918726674") then
							PlayAnim(5918726674, 0, tonumber(getgenv().ConfigData.BangSpeed))
						end
					elseif GetRoot(localPlayer).Parent.Humanoid.Sit then
						if not CheckAnim("148840371") then
							PlayAnim(148840371, 0, tonumber(getgenv().ConfigData.BangSpeed + 1.7))
						end
					end

					GetRoot(localPlayer).Parent.Humanoid.Sit = true
					local cFrame2 = torso.CFrame
					GetRoot(localPlayer).CFrame = cFrame2 * CFrame.new(0, 0, 1)
					GetRoot(localPlayer).Velocity = Vector3.zero
				end)

				workspace.FallenPartsDestroyHeight = (0/0)
				task.wait()
			until textButton28.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
		else
			repeat
				pcall(function()
					local character = Players[name].Character

					if character and GetRoot(localPlayer) then
						local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

						if torso then
							local root2 = GetRoot(localPlayer)
							root2.Velocity = Vector3.new()
							root2.CFrame = torso.CFrame * CFrame.new(0, 0, 2 + math.sin(tick() * 20) * 0.6)
						end
					end
				end)

				workspace.FallenPartsDestroyHeight = (0/0)
				task.wait()
			until textButton28.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
		end

		workspace.FallenPartsDestroyHeight = -500
		StopAnim()
		GetRoot(localPlayer).Parent.Humanoid.Sit = false
	end
end

textButton28.MouseButton1Click:Connect(BenxTarget_ButtonF)

BenxTargetV2_ButtonF = function()
	if name == nil then
		return
	end
	ChangeToggleColor(getgenv().BenxTargetV2_Button)

	if getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "يمكنك تغير سرعة البانق من الاعدادات في الواجهه", Duration = 3 })

		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "System VR7",
			Text = "هذا النوع الثاني من البانق اذا كان يوجد حمايه في الماب",
			Duration = 7,
		})

		repeat
			pcall(function()
				local character = Players[name].Character
				local root3 = GetRoot(localPlayer)
				local n = tonumber(getgenv().ConfigData.BangSpeed) or 2

				if character and root3 then
					local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

					if torso then
						local n2 = math.sin(tick() * n * 8) * 1.2
						root3.Parent.Humanoid.Sit = false
						root3.Velocity = Vector3.new()
						root3.CFrame = torso.CFrame * CFrame.new(0, 0, 2 + n2)
					end
				end
			end)

			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
			workspace.FallenPartsDestroyHeight = (0/0)
			task.wait()
		until getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		workspace.FallenPartsDestroyHeight = -500
	end
end

getgenv().BenxTargetV2_Button.MouseButton1Click:Connect(BenxTargetV2_ButtonF)

HeadsitTarget_ButtonF = function()
	if name == nil then
		return
	end
	ChangeToggleColor(textButton31)
	if textButton31.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
		return
	end

	if game.PlaceId == 11379739543 then
		SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
		textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		return
	end

	textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

	repeat
		task.wait()

		pcall(function()
			local head = Players[name].Character.Head
			localPlayer.Character.Humanoid.Sit = true
			local cFrame2 = head.CFrame
			GetRoot(localPlayer).CFrame = cFrame2 * CFrame.new(0, 2, 0)
			GetRoot(localPlayer).Velocity = Vector3.zero
		end)
	until textButton31.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

	GetRoot(localPlayer).Parent.Humanoid.Sit = false
end

textButton31.MouseButton1Click:Connect(HeadsitTarget_ButtonF)

AssSlapTarget_ButtonF = function()
	if name == nil then
		return
	end

	if localPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	ChangeToggleColor(getgenv().AssSlapTarget_Button)
	if getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
		return
	end

	if game.PlaceId == 11379739543 then
		SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
		getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
		return
	end

	textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

	spawn(function()
		repeat
			pcall(function()
				PlayAnim("16302968986", 16, 1.4)
			end)

			task.wait(1)
		until getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
	end)

	repeat
		pcall(function()
			local torso = Players[name].Character:FindFirstChild("Torso") or Players[name].Character:FindFirstChild("UpperTorso")
			localPlayer.Character.Humanoid.Sit = true
			local cFrame2 = torso.CFrame
			GetRoot(localPlayer).CFrame = cFrame2 * CFrame.new(-2, -0.2, 1.7)
			GetRoot(localPlayer).Velocity = Vector3.zero
		end)

		task.wait()
	until getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

	GetRoot(localPlayer).Parent.Humanoid.Sit = false
	StopAnim()
end

getgenv().AssSlapTarget_Button.MouseButton1Click:Connect(AssSlapTarget_ButtonF)

HeadFuck_ButtonF = function()
	if name == nil then
		return
	end
	ChangeToggleColor(textButton32)
	textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

	if textButton32.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		if game.PlaceId == 11379739543 then
			SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
			textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			return
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "يمكنك تغير سرعة المص من الاعدادات في الواجهه", Duration = 3 })

		for _, getPlayingAnimationTrack8 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
			getPlayingAnimationTrack8:Stop()
		end

		local n = -2
		local n2 = math.clamp(tonumber(getgenv().ConfigData.SuckSpeed) or 0.3, 0.1, 0.6)

		repeat
			task.wait(0.01)

			pcall(function()
				GetRoot(localPlayer).Parent.Humanoid.Sit = true
				GetRoot(localPlayer).CFrame = Players[name].Character.Head.CFrame * CFrame.new(0, 0.7, n) * CFrame.Angles(0, 3.1415926535897931, 0)
				GetRoot(localPlayer).Velocity = Vector3.zero
				n += n2

				if n >= -1 or n <= -2 then
					n2 = -n2
				end
			end)
		until textButton32.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

		GetRoot(localPlayer).Parent.Humanoid.Sit = false
	end
end

textButton32.MouseButton1Click:Connect(HeadFuck_ButtonF)

SuckingIt_ButtonF = function()
	if name == nil then
		return
	end
	ChangeToggleColor(getgenv().SuckingIt_Button)
	textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

	if getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		if game.PlaceId == 11379739543 then
			SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
			textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			return
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "System VR7", Text = "يمكنك تغير سرعة المص من الاعدادات في الواجهه", Duration = 3 })

		for _, getPlayingAnimationTrack9 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
			getPlayingAnimationTrack9:Stop()
		end

		local n = -2
		local n2 = math.clamp(tonumber(getgenv().ConfigData.SuckSpeed) or 0.3, 0.1, 0.6)

		repeat
			task.wait(0.01)

			pcall(function()
				local torso = Players[name].Character:FindFirstChild("Torso") or Players[name].Character:FindFirstChild("UpperTorso")
				GetRoot(localPlayer).Parent.Humanoid.Sit = true
				GetRoot(localPlayer).CFrame = torso.CFrame * CFrame.new(0, -2.4, n) * CFrame.Angles(0, 3.1415926535897931, 0)
				GetRoot(localPlayer).Velocity = Vector3.zero
				n += n2

				if n >= -1 or n <= -2 then
					n2 = -n2
				end
			end)
		until getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

		GetRoot(localPlayer).Parent.Humanoid.Sit = false
	end
end

getgenv().SuckingIt_Button.MouseButton1Click:Connect(SuckingIt_ButtonF)

BackpackTarget_ButtonF = function()
	if name == nil then
		return
	end
	ChangeToggleColor(textButton33)
	textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

	if textButton33.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		if game.PlaceId == 11379739543 then
			SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
			textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			return
		end

		repeat
			pcall(function()
				local root4 = GetRoot(Players[name])
				localPlayer.Character.Humanoid.Sit = true
				GetRoot(localPlayer).CFrame = root4.CFrame * CFrame.new(0, 0, 1.2) * CFrame.Angles(0, -3, 0)
				GetRoot(localPlayer).Velocity = Vector3.zero
			end)

			task.wait()
		until textButton33.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

		GetRoot(localPlayer).Parent.Humanoid.Sit = false
	end
end

textButton33.MouseButton1Click:Connect(BackpackTarget_ButtonF)

JerkOnTarget_ButtonF = function()
	if name == nil then
		return
	end
	ChangeToggleColor(textButton34)
	textButton25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().BenxTargetV2_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().AssSlapTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	getgenv().SuckingIt_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
	textButton33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)

	if textButton34.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		if game.PlaceId == 11379739543 then
			SendNotify("V R 7", "هاذ الماب محمي من هذه الاوامر", 3)
			textButton34.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
			return
		end

		spawn(function()
			workspace.FallenPartsDestroyHeight = (0/0)

			while textButton34.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
				pcall(function()
					if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
							PlayAnim(72042024, 0.675, 1, true)
							wait(0.4)
						elseif game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
							PlayAnim(698251653, 0.6, 0.4, true)
							task.wait(0.16)
						end
					end
				end)

				task.wait()
			end

			StopAnim()
		end)

		repeat
			pcall(function()
				if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					local root5 = GetRoot(Players[name])
					game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")

					if not game.Players.LocalPlayer.Character.Humanoid.Sit then
						game.Players.LocalPlayer.Character.Humanoid.Sit = true
					end

					GetRoot(localPlayer).CFrame = root5.CFrame * CFrame.new(0, 1, -3) * CFrame.Angles(0, 3.1415926535897931, 0)
					GetRoot(localPlayer).Velocity = Vector3.zero
				end
			end)

			task.wait()
		until textButton34.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)

		workspace.FallenPartsDestroyHeight = -500
		game.Players.LocalPlayer.Character.Humanoid.Sit = false
	end
end

textButton34.MouseButton1Click:Connect(JerkOnTarget_ButtonF)

do
	local connection = nil

	RepeatTalk_ButtonF = function()
		if name == nil then
			return
		end
		ChangeToggleColor(textButton29)

		if textButton29.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			connection = game:GetService("TextChatService").MessageReceived:Connect(function(param42)
				if param42.TextSource and param42.TextSource.UserId == Players[name].UserId then
					Send(param42.Text)
				end
			end)
		elseif connection then
			connection:Disconnect()
			connection = nil
		end
	end
end

textButton29.MouseButton1Click:Connect(RepeatTalk_ButtonF)

textButton30.MouseButton1Click:Connect(function()
	if name ~= nil then
		pcall(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Players[name].Character.HumanoidRootPart.CFrame
		end)
	end
end)

do
	local targetFunctions = {
		FlingTarget_Button1 = FlingTarget_ButtonF,
		FuckYourSelf_Button1 = FuckYourSelf_ButtonF,
		FocusTarget_Button1 = FocusTarget_ButtonF,
		BenxTarget_Button1 = BenxTarget_ButtonF,
		HeadsitTarget_Button1 = HeadsitTarget_ButtonF,
		AssSlapTarget_Button1 = AssSlapTarget_ButtonF,
		SuckingIt_Button1 = SuckingIt_ButtonF,
		HeadFuck_Button1 = HeadFuck_ButtonF,
		BackpackTarget_Button1 = BackpackTarget_ButtonF,
		JerkOnTarget_Button1 = JerkOnTarget_ButtonF,
		ViewTarget_Button1 = ViewTarget_ButtonF,
		Spamming_Commands1 = AdminSpamming_t2F,
	}

	getgenv().TargetFunctions = targetFunctions
end

textBox7.FocusLost:Connect(function()
	local text10 = GetPlayer(textBox7.Text)
	UpdateTarget(text10)
end)

textButton36.MouseButton1Click:Connect(function()
	scrollingFrame8.Visible = false
	scrollingFrame7.Visible = false
	scrollingFrame6.Visible = true
	SendNotify("System VR7", "نظام جلب الانميشنات هو نظام تجريبي حاليا ممكن بعض الانميشنات ماتشتغل", 2)
end)

textButton35.MouseButton1Click:Connect(function()
	scrollingFrame8.Visible = false
	scrollingFrame6.Visible = false
	scrollingFrame7.Visible = true
end)

getgenv().CrazyAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://10713957138"

	for _, getPlayingAnimationTrack10 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack10.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack10:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack10:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj7 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj7.Priority = Enum.AnimationPriority.Action
	obj7.Looped = true
	obj7:Play()
	obj7:AdjustSpeed(4)
end)

getgenv().B3b3AnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://13694096724"

	for _, getPlayingAnimationTrack11 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack11.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack11:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack11:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj8 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj8.Priority = Enum.AnimationPriority.Action
	obj8.Looped = false
	obj8:Play()
	obj8.TimePosition = 2
	obj8:AdjustSpeed(0)
end)

getgenv().Sb3awyAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://10214311282"

	for _, getPlayingAnimationTrack12 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack12.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack12:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack12:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj9 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj9.Priority = Enum.AnimationPriority.Action
	obj9.Looped = false
	obj9:Play()
	obj9.TimePosition = 0.8
	obj9:AdjustSpeed(0)
end)

getgenv().ZombieWalkAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://708553116"

	for _, getPlayingAnimationTrack13 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack13.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack13:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack13:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation):Play(0.1, 1, 1)
end)

getgenv().FlingArmsAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://754656200"

	for _, getPlayingAnimationTrack14 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack14.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack14:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack14:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj10 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj10.Looped = true
	obj10:Play(0.1, 1, 3)
end)

getgenv().DolphinAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://10714068222"

	for _, getPlayingAnimationTrack15 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack15.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack15:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack15:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj11 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj11.Priority = Enum.AnimationPriority.Action
	obj11.Looped = true
	obj11:Play()
	obj11:AdjustSpeed(2)
end)

getgenv().FaintAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://181526230"

	for _, getPlayingAnimationTrack16 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack16.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack16:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack16:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj12 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj12.Priority = Enum.AnimationPriority.Action
	obj12.Looped = false
	obj12:Play()
	obj12.TimePosition = 0.1
	obj12:AdjustSpeed(0)
end)

getgenv().ArmcutAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://33169583"

	for _, getPlayingAnimationTrack17 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack17.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack17:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack17:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj13 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj13.Priority = Enum.AnimationPriority.Action
	obj13.Looped = false
	obj13:Play()
	obj13.TimePosition = 0.64
	obj13:AdjustSpeed(0)
	SendNotify("System VR7", "هاذ الانميشن مفيد بماب القنابل", 3)
end)

getgenv().BoxesAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://126753849"

	for _, getPlayingAnimationTrack18 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack18.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack18:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack18:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj14 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj14.Priority = Enum.AnimationPriority.Action
	obj14.Looped = true
	obj14:Play()
	obj14:AdjustSpeed(3)
	SendNotify("System VR7", "هاذ الانميشن مفيد بماب القنابل", 3)
end)

getgenv().SaluteAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://10714389988"

	for _, getPlayingAnimationTrack19 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack19.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack19:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack19:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj15 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj15.Priority = Enum.AnimationPriority.Action
	obj15.Looped = false
	obj15:Play()
	obj15.TimePosition = math.max(obj15.Length - 1, 0)
	obj15:AdjustSpeed(0)
end)

getgenv().DoggyAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://13694096724"

	for _, getPlayingAnimationTrack20 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack20.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack20:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack20:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj16 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj16.Priority = Enum.AnimationPriority.Action
	obj16.Looped = false
	obj16:Play()
	obj16.TimePosition = 3.45
	obj16:AdjustSpeed(0)
end)

getgenv().SleepyAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://10714360343"

	for _, getPlayingAnimationTrack21 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack21.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack21:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack21:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj17 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj17.Priority = Enum.AnimationPriority.Action
	obj17.Looped = false
	obj17:Play()
	obj17.TimePosition = 0.37
	obj17:AdjustSpeed(0)
end)

getgenv().HugAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://185299570"

	for _, getPlayingAnimationTrack22 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack22.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack22:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack22:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj18 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj18.Priority = Enum.AnimationPriority.Action
	obj18.Looped = false
	obj18:Play()
	obj18:AdjustSpeed(0)
end)

getgenv().BangAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://148840371"

	for _, getPlayingAnimationTrack23 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack23.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack23:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack23:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj19 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj19.Priority = Enum.AnimationPriority.Action
	obj19.Looped = true
	obj19:Play()
	obj19:AdjustSpeed(2.5)
end)

getgenv().IllusionAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://215384594"

	for _, getPlayingAnimationTrack24 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack24.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack24:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack24:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj20 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj20.Priority = Enum.AnimationPriority.Action
	obj20.Looped = true
	obj20:Play()
	obj20:AdjustSpeed(7)
end)

getgenv().FloatingHeadAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://121572214"

	for _, getPlayingAnimationTrack25 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack25.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack25:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack25:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj21 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj21.Priority = Enum.AnimationPriority.Action
	obj21.Looped = false
	obj21:Play()
	obj21.TimePosition = 1
	obj21:AdjustSpeed(0)
end)

getgenv().JerkingAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://204292303"
	local animation2 = Instance.new("Animation")
	animation2.AnimationId = "rbxassetid://181526230"

	for _, getPlayingAnimationTrack26 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack26.Animation.AnimationId == animation.AnimationId or getPlayingAnimationTrack26.Animation.AnimationId == animation2.AnimationId then
			getPlayingAnimationTrack26:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack26:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
	local obj22 = humanoid:LoadAnimation(animation)
	obj22.Priority = Enum.AnimationPriority.Action
	obj22.Looped = true
	obj22:Play(0.1, 1, 3)
	Track1 = humanoid:LoadAnimation(animation2)
	Track1.Priority = Enum.AnimationPriority.Action
	Track1.Looped = true
	Track1:Play(0.1, 1, 1)
end)

getgenv().BackpackHeadAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://68339848"

	for _, getPlayingAnimationTrack27 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack27.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack27:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack27:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj23 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj23.Priority = Enum.AnimationPriority.Action
	obj23.Looped = false
	obj23:Play()
	obj23.TimePosition = 1
	obj23:AdjustSpeed(0)
end)

getgenv().InsaneAnimationR6.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		SendNotify("System VR7", "يجب ان تكون R6", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://33796059"

	for _, getPlayingAnimationTrack28 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack28.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack28:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack28:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj24 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj24.Priority = Enum.AnimationPriority.Action
	obj24.Looped = true
	obj24:Play()
	obj24:AdjustSpeed(10)
end)

getgenv().HugAnimationR15.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		SendNotify("System VR7", "يجب ان تكون R15", 7)
		return
	end
	getgenv().idkjustcheck = false
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://10714377090"

	for _, getPlayingAnimationTrack29 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		if getPlayingAnimationTrack29.Animation.AnimationId == animation.AnimationId then
			getPlayingAnimationTrack29:Stop()
			getgenv().idkjustcheck = true
		else
			getPlayingAnimationTrack29:Stop()
		end
	end

	if getgenv().idkjustcheck then
		getgenv().idkjustcheck = false
		return
	end
	local obj25 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
	obj25.Priority = Enum.AnimationPriority.Action
	obj25.Looped = false
	obj25:Play()
	obj25.TimePosition = 0.48
	obj25:AdjustSpeed(0)
end)

getgenv().OldLighting = nil

textButton37.MouseButton1Click:Connect(function()
	ChangeToggleColor(textButton37)

	if textButton37.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		local genv = getgenv()
		local oldLighting = getgenv().OldLighting
		local oldLighting2

		if oldLighting then
			oldLighting2 = oldLighting
		else
			oldLighting2 = {}
			local brightness = game:GetService("Lighting").Brightness
			local clockTime = game:GetService("Lighting").ClockTime
			local fogEnd = game:GetService("Lighting").FogEnd
			local globalShadows = game:GetService("Lighting").GlobalShadows
			local outdoorAmbient = game:GetService("Lighting").OutdoorAmbient
			oldLighting2[1] = brightness
			oldLighting2[2] = clockTime
			oldLighting2[3] = fogEnd
			oldLighting2[4] = globalShadows
			oldLighting2[5] = outdoorAmbient
		end

		genv.OldLighting = oldLighting2

		while textButton37.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
			game:GetService("Lighting").Brightness = 2
			game:GetService("Lighting").ClockTime = 14
			game:GetService("Lighting").FogEnd = 100000
			game:GetService("Lighting").GlobalShadows = false
			game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			task.wait(0.1)
		end
	elseif getgenv().OldLighting then
		game:GetService("Lighting").Brightness = getgenv().OldLighting[1]
		game:GetService("Lighting").ClockTime = getgenv().OldLighting[2]
		game:GetService("Lighting").FogEnd = getgenv().OldLighting[3]
		game:GetService("Lighting").GlobalShadows = getgenv().OldLighting[4]
		game:GetService("Lighting").OutdoorAmbient = getgenv().OldLighting[5]
	end
end)

textButton38.MouseButton1Click:Connect(function()
	ChangeToggleColor(textButton38)

	if textButton38.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		local Players2 = game:GetService("Players")
		local VirtualInputManager = game:GetService("VirtualInputManager")
		local UserInputService = game:GetService("UserInputService")
		local GuiService = game:GetService("GuiService")
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "AutoClickerGui"
		screenGui.ResetOnSpawn = false
		screenGui.Parent = Players2.LocalPlayer:WaitForChild("PlayerGui")
		local textButton53 = Instance.new("TextButton")
		textButton53.Size = UDim2.new(0, 120, 0, 36)
		textButton53.Position = UDim2.new(0.5, 0, 0.55, 0)
		textButton53.AnchorPoint = Vector2.new(0.5, 0.5)
		textButton53.BackgroundColor3 = Color3.fromRGB(25, 30, 40)
		textButton53.TextColor3 = Color3.fromRGB(240, 240, 240)
		textButton53.TextSize = 14
		textButton53.Font = Enum.Font.GothamBold
		textButton53.Text = "تفعيل الكليكر"
		textButton53.Parent = screenGui
		local uiCorner2 = Instance.new("UICorner")
		uiCorner2.CornerRadius = UDim.new(0.25, 0)
		uiCorner2.Parent = textButton53
		local uiStroke2 = Instance.new("UIStroke")
		uiStroke2.Thickness = 1.5
		uiStroke2.Color = Color3.fromRGB(60, 70, 85)
		uiStroke2.Parent = textButton53
		local frame2 = Instance.new("Frame")
		frame2.Name = "RedDot"
		frame2.Size = UDim2.new(0, 16, 0, 16)
		frame2.Position = UDim2.new(0.5, 0, 0, -22)
		frame2.AnchorPoint = Vector2.new(0.5, 0.5)
		frame2.BackgroundColor3 = Color3.fromRGB(255, 65, 65)
		frame2.Parent = textButton53
		local uiCorner3 = Instance.new("UICorner")
		uiCorner3.CornerRadius = UDim.new(1, 0)
		uiCorner3.Parent = frame2
		local uiStroke3 = Instance.new("UIStroke")
		uiStroke3.Thickness = 2
		uiStroke3.Color = Color3.fromRGB(255, 255, 255)
		uiStroke3.Parent = frame2
		local frame3 = Instance.new("Frame")
		frame3.Name = "TopDragHandle"
		frame3.Size = UDim2.new(0, 45, 0, 12)
		frame3.Position = UDim2.new(0.5, 0, 0, -44)
		frame3.AnchorPoint = Vector2.new(0.5, 0.5)
		frame3.BackgroundColor3 = Color3.fromRGB(100, 110, 125)
		frame3.Parent = textButton53
		local uiCorner4 = Instance.new("UICorner")
		uiCorner4.CornerRadius = UDim.new(0.5, 0)
		uiCorner4.Parent = frame3
		local flag39 = false
		local flag40 = false
		local position = nil
		local position2 = nil

		frame3.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				flag40 = true
				position = input.Position
				position2 = textButton53.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						flag40 = false
					end
				end)
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and flag40 then
				local n = input.Position - position
				textButton53.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n.X, position2.Y.Scale, position2.Y.Offset + n.Y)
			end
		end)

		textButton53.MouseButton1Down:Connect(function()
			if flag39 then
				flag39 = false
				textButton53.Text = "تفعيل الكليكر"
				textButton53.BackgroundColor3 = Color3.fromRGB(25, 30, 40)
				frame2.Visible = true
			else
				flag39 = true
				textButton53.Text = "ايقاف الكليكر"
				textButton53.BackgroundColor3 = Color3.fromRGB(180, 40, 40)

				task.spawn(function()
					while true do
						if flag39 and textButton38.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
							local guiInset = GuiService:GetGuiInset()
							local n = frame2.AbsolutePosition.X + guiInset.X
							local n2 = frame2.AbsolutePosition.Y + guiInset.Y
							frame2.Visible = false
							task.wait(0.01)

							if flag39 then
								VirtualInputManager:SendMouseButtonEvent(n, n2, 0, true, game, 0)
								task.wait(0.01)
								VirtualInputManager:SendMouseButtonEvent(n, n2, 0, false, game, 0)
								task.wait(0.01)
								frame2.Visible = true
								task.wait(0.3)
								continue
							end
						end

						break
					end

					frame2.Visible = true
				end)
			end
		end)
	else
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("AutoClickerGui"):Destroy()
	end
end)

textButton39.MouseButton1Click:Connect(function()
	ChangeToggleColor(textButton39)

	while textButton39.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
		task.wait(1)
		local func134 = ipairs
		local Players2 = game:GetService("Players")

		for _, player in func134(Players2:GetPlayers()) do
			if player ~= game:GetService("Players").LocalPlayer and player.Character then
				local character = player.Character
				local head = character:FindFirstChild("Head")
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				local esp = character:FindFirstChild("ESP")

				if not esp then
					esp = Instance.new("Highlight")
					esp.Name = "ESP"
					esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					esp.FillTransparency = 0.5
					esp.OutlineTransparency = 0
					esp.Parent = character
				end

				local color = player.Team and player.Team.TeamColor.Color or Color3.fromRGB(255, 0, 0)
				esp.FillColor = color
				esp.OutlineColor = color

				if humanoid then
					humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
				end

				if head then
					local espTag = head:FindFirstChild("ESPTag")

					if not espTag then
						espTag = Instance.new("BillboardGui")
						espTag.Name = "ESPTag"
						espTag.AlwaysOnTop = true
						espTag.Size = UDim2.new(0, 150, 0, 40)
						espTag.StudsOffset = Vector3.new(0, 3, 0)
						espTag.Parent = head
						local textLabel5 = Instance.new("TextLabel")
						textLabel5.Name = "Label"
						textLabel5.Size = UDim2.fromScale(1, 1)
						textLabel5.BackgroundTransparency = 1
						textLabel5.TextScaled = true
						textLabel5.Font = Enum.Font.GothamBold
						textLabel5.TextStrokeTransparency = 0
						textLabel5.Parent = espTag
					end

					local label = espTag:FindFirstChild("Label")

					if label then
						label.Text = player.DisplayName .. " (@" .. player.Name .. ")"
						label.TextColor3 = Color3.fromRGB(255, 255, 255)
					end
				end
			end
		end
	end

	local func135 = ipairs
	local Players2 = game:GetService("Players")

	for _, player in func135(Players2:GetPlayers()) do
		if player.Character then
			local esp = player.Character:FindFirstChild("ESP")

			if esp then
				esp:Destroy()
			end

			local head = player.Character:FindFirstChild("Head")

			if head then
				local espTag = head:FindFirstChild("ESPTag")

				if espTag then
					espTag:Destroy()
				end
			end

			if player.Character:FindFirstChildOfClass("Humanoid") then
				local viewer = Enum.HumanoidDisplayDistanceType.Viewer
				player.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType = viewer
			end

			local head2 = player.Character:FindFirstChild("Head")

			if head2 then
				local espTag = head2:FindFirstChild("ESPTag")

				if espTag then
					espTag:Destroy()
				end
			end

			if player.Character:FindFirstChildOfClass("Humanoid") then
				local viewer = Enum.HumanoidDisplayDistanceType.Viewer
				player.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType = viewer
			end
		end
	end
end)

do
	local Players2 = game:GetService("Players")
	local localPlayer2 = Players2.LocalPlayer

	game:GetService("RunService").Stepped:Connect(function()
		for _, child in pairs(Players2:GetChildren()) do
			if child ~= localPlayer2 and child.Character then
				for _, child2 in pairs(child.Character:GetChildren()) do
					if child2.Name == "HumanoidRootPart" then
						child2.CanCollide = false
					end
				end
			end
		end

		for _, child in pairs(workspace:GetChildren()) do
			if child:IsA("Accessory") and child:FindFirstChildWhichIsA("Part") then
				child:FindFirstChildWhichIsA("Part"):Destroy()
			end
		end
	end)

	textButton40.MouseButton1Click:Connect(function()
		ChangeToggleColor(textButton40)

		if textButton40.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
			local sky = Instance.new("Sky")
			local bloomEffect = Instance.new("BloomEffect")
			local blurEffect = Instance.new("BlurEffect")
			local colorCorrectionEffect = Instance.new("ColorCorrectionEffect")
			local sunRaysEffect = Instance.new("SunRaysEffect")
			Lighting.Brightness = 2.25
			Lighting.ExposureCompensation = 0.1
			Lighting.ClockTime = 17.55
			sky.SkyboxBk = "http://www.roblox.com/asset/?id=144933338"
			sky.SkyboxDn = "http://www.roblox.com/asset/?id=144931530"
			sky.SkyboxFt = "http://www.roblox.com/asset/?id=144933262"
			sky.SkyboxLf = "http://www.roblox.com/asset/?id=144933244"
			sky.SkyboxRt = "http://www.roblox.com/asset/?id=144933299"
			sky.SkyboxUp = "http://www.roblox.com/asset/?id=144931564"
			sky.StarCount = 5000
			sky.SunAngularSize = 5
			sky.Parent = Lighting
			bloomEffect.Intensity = 0.3
			bloomEffect.Size = 10
			bloomEffect.Threshold = 0.8
			bloomEffect.Parent = Lighting
			blurEffect.Size = 5
			blurEffect.Parent = Lighting
			colorCorrectionEffect.Brightness = 0
			colorCorrectionEffect.Contrast = 0.1
			colorCorrectionEffect.Saturation = 0.25
			colorCorrectionEffect.TintColor = Color3.fromRGB(255, 255, 255)
			colorCorrectionEffect.Parent = Lighting
			sunRaysEffect.Intensity = 0.1
			sunRaysEffect.Spread = 0.8
			sunRaysEffect.Parent = Lighting
		else
			for _, child in pairs(Lighting:GetChildren()) do
				child:Destroy()
			end

			Lighting.Brightness = 2
			Lighting.ExposureCompensation = 0
		end
	end)

	textButton41.MouseButton1Click:Connect(function()
		if textButton40.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0) then
			game:GetService("Lighting").ClockTime = 14
		else
			SendNotify("System VR7", "رجاءا قم باطفاء الشادر", 5)
		end
	end)

	textButton42.MouseButton1Click:Connect(function()
		if textButton40.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0) then
			game:GetService("Lighting").ClockTime = 19
		else
			SendNotify("System VR7", "رجاءا قم باطفاء الشادر", 5)
		end
	end)

	textButton44.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end)

	textButton47.MouseButton1Click:Connect(function()
		local terrain = workspace:FindFirstChildWhichIsA("Terrain")
		terrain.WaterWaveSize = 0
		terrain.WaterWaveSpeed = 0
		terrain.WaterReflectance = 0
		terrain.WaterTransparency = 1
		game:GetService("Lighting").GlobalShadows = false
		game:GetService("Lighting").FogEnd = 9e9
		game:GetService("Lighting").FogStart = 9e9
		settings().Rendering.QualityLevel = 1

		for _, descendant in pairs(game:GetDescendants()) do
			if descendant:IsA("BasePart") then
				descendant.CastShadow = false
				descendant.Material = "Plastic"
				descendant.Reflectance = 0
				descendant.BackSurface = "SmoothNoOutlines"
				descendant.BottomSurface = "SmoothNoOutlines"
				descendant.FrontSurface = "SmoothNoOutlines"
				descendant.LeftSurface = "SmoothNoOutlines"
				descendant.RightSurface = "SmoothNoOutlines"
				descendant.TopSurface = "SmoothNoOutlines"
			elseif descendant:IsA("Decal") then
				descendant.Transparency = 1
				descendant.Texture = ""
			elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
				descendant.Lifetime = NumberRange.new(0)
			end
		end

		local func136 = pairs
		local Lighting2 = game:GetService("Lighting")

		for _, descendant in func136(Lighting2:GetDescendants()) do
			if descendant:IsA("PostEffect") then
				descendant.Enabled = false
			end
		end

		workspace.DescendantAdded:Connect(function(descendant)
			task.spawn(function()
				if descendant:IsA("ForceField") or descendant:IsA("Sparkles") or descendant:IsA("Smoke") or descendant:IsA("Fire") or descendant:IsA("Beam") then
					game:GetService("RunService").Heartbeat:Wait()
					descendant:Destroy()
				elseif descendant:IsA("BasePart") then
					descendant.CastShadow = false
				end
			end)
		end)
	end)

	getgenv().FreeEmotes_Button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Free%20Dances"))()
	end)

	getgenv().BackToHome.MouseButton1Click:Connect(function()
		getgenv().Settings_Button_Section.Visible = false
		scrollingFrame3.Visible = true
	end)

	getgenv().Saddamdsh = false

	textButton8.MouseButton1Click:Connect(function()
		scrollingFrame2.Visible = true
		scrollingFrame.Visible = false
		if getgenv().Saddamdsh then
			return
		end
		getgenv().Saddamdsh = true

		task.spawn(function()
			local uiGridLayout = Instance.new("UIGridLayout")
			uiGridLayout.Parent = scrollingFrame2
			uiGridLayout.CellPadding = UDim2.new(0, 40, 0, 20)
			uiGridLayout.CellSize = UDim2.new(0, 150, 0, 30)
			uiGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			uiGridLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			uiGridLayout.StartCorner = Enum.StartCorner.TopLeft
			local uiPadding = Instance.new("UIPadding")
			uiPadding.Parent = scrollingFrame2
			uiPadding.PaddingRight = UDim.new(0, 20)
			uiPadding.PaddingTop = UDim.new(0, 23)

			CreateButton("ABC_Back", "رجوع", scrollingFrame2).MouseButton1Click:Connect(function()
				scrollingFrame2.Visible = false
				scrollingFrame.Visible = true
			end)

			local AntiSit = CreateButton("AntiSit", "مضاد الجلوس", scrollingFrame2, true)

			AntiSit.MouseButton1Click:Connect(function()
				ChangeToggleColor(AntiSit)

				if AntiSit.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					task.spawn(function()
						while AntiSit.Parent and AntiSit.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
							task.wait()

							pcall(function()
								local character = Players2.LocalPlayer.Character
								local humanoid = character and character:FindFirstChildOfClass("Humanoid")

								if humanoid and humanoid.Sit then
									humanoid.Sit = false
								end
							end)
						end
					end)
				end
			end)

			local jumpPower = nil
			local jumpHeight = nil
			local AntiJump = CreateButton("AntiJump", "مضاد القفز", scrollingFrame2, true)

			AntiJump.MouseButton1Click:Connect(function()
				ChangeToggleColor(AntiJump)

				if AntiJump.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					pcall(function()
						local character = Players2.LocalPlayer.Character
						local humanoid = character and character:FindFirstChildOfClass("Humanoid")

						if humanoid then
							jumpPower = humanoid.JumpPower
							jumpHeight = humanoid.JumpHeight
						end
					end)

					task.spawn(function()
						while AntiJump.Parent and AntiJump.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
							task.wait()

							pcall(function()
								local character = Players2.LocalPlayer.Character
								character = character and character:FindFirstChildOfClass("Humanoid")

								if character then
									character.JumpPower = 0
									character.JumpHeight = 0
								end
							end)
						end
					end)
				else
					task.wait()

					pcall(function()
						local character = Players2.LocalPlayer.Character
						character = character and character:FindFirstChildOfClass("Humanoid")

						if character then
							if jumpPower ~= nil then
								character.JumpPower = jumpPower
							end

							if jumpHeight ~= nil then
								character.JumpHeight = jumpHeight
							end
						end
					end)
				end
			end)

			local AntiFling = CreateButton("AntiFling", "مضاد الفلنق", scrollingFrame2, true)
			local tbl49 = {}
			local list15 = {}
			local flag41 = false

			local function func137()
				for _, item11 in ipairs(list15) do
					pcall(function()
						item11:Disconnect()
					end)
				end

				table.clear(list15)
			end

			local function func138(list16)
				if not flag41 or not list16 then
					return
				end

				for _, descendant in ipairs(list16:GetDescendants()) do
					if descendant:IsA("BasePart") then
						if tbl49[descendant] == nil then
							tbl49[descendant] = descendant.CanCollide
						end

						descendant.CanCollide = false
					end
				end

				list15[#list15 + 1] = list16.DescendantAdded:Connect(function(descendant)
					if not flag41 then
						return
					end

					if descendant:IsA("BasePart") then
						if tbl49[descendant] == nil then
							tbl49[descendant] = descendant.CanCollide
						end

						descendant.CanCollide = false
					end
				end)
			end

			local function func139()
				for k, value97 in pairs(tbl49) do
					if k and k.Parent then
						pcall(function()
							k.CanCollide = value97
						end)
					end
				end

				table.clear(tbl49)
			end

			AntiFling.MouseButton1Click:Connect(function()
				ChangeToggleColor(AntiFling)
				flag41 = AntiFling.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0)

				if flag41 then
					func137()
					func139()

					for _, player in ipairs(Players2:GetPlayers()) do
						if player ~= Players2.LocalPlayer then
							if player.Character then
								func138(player.Character)
							end

							list15[#list15 + 1] = player.CharacterAdded:Connect(function(character)
								if flag41 then
									task.wait()
									func138(character)
								end
							end)
						end
					end

					task.spawn(function()
						while flag41 and AntiFling.Parent do
							task.wait(1)

							for k in pairs(tbl49) do
								if k and k.Parent and k:IsA("BasePart") then
									pcall(function()
										k.CanCollide = false
									end)
								end
							end
						end
					end)
				else
					func137()
					func139()
				end
			end)

			local AntiVang = CreateButton("AntiVang", "مضاد Void", scrollingFrame2, true)

			AntiVang.MouseButton1Click:Connect(function()
				ChangeToggleColor(AntiVang)

				if AntiVang.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					task.spawn(function()
						while AntiVang.Parent and AntiVang.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
							task.wait(1)

							pcall(function()
								workspace.FallenPartsDestroyHeight = (0/0)
							end)
						end
					end)
				else
					task.wait()

					pcall(function()
						workspace.FallenPartsDestroyHeight = -500
					end)
				end
			end)

			local AntiAFK = CreateButton("AntiAFK", "مضاد AFK", scrollingFrame2, true)
			wait()

			if getgenv().AntiAfkIsEnabled then
				AntiAFK.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)
			end

			AntiAFK.MouseButton1Click:Connect(function()
				ChangeToggleColor(AntiAFK)

				if AntiAFK.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					task.spawn(function()
						while AntiAFK.Parent and AntiAFK.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) or getgenv().AntiAfkIsEnabled do
							getgenv().AntiAfkIsEnabled = false

							pcall(function()
								local currentCamera2 = workspace.CurrentCamera

								if currentCamera2 then
									game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), currentCamera2.CFrame)
									task.wait(0.1)
									game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), currentCamera2.CFrame)
								end
							end)

							task.wait(300)
						end
					end)
				end
			end)

			local AntiBang = CreateButton("AntiBang", "مضاد بانق", scrollingFrame2, true)
			local flag42 = false

			AntiBang.MouseButton1Click:Connect(function()
				ChangeToggleColor(AntiBang)

				if AntiBang.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					SendNotify("System VR7", "من الممكن المضاد مايكشف بعض انواع سكربتات البانق", 8)

					task.spawn(function()
						while AntiBang.Parent and AntiBang.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
							pcall(function()
								workspace.FallenPartsDestroyHeight = (0/0)
								local character = Players2.LocalPlayer.Character
								character = character and character:FindFirstChildWhichIsA("Humanoid")
								local rootPart = character and character.RootPart

								if func25() and character and rootPart and not flag42 then
									flag42 = true
									local cFrame2 = rootPart.AssemblyLinearVelocity.Magnitude < 50 and rootPart.CFrame or currentCamera.Focus
									local now = tick()

									while tick() <= now + 1 and AntiBang.Parent and AntiBang.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
										rootPart.CFrame = CFrame.new(0, -499, 0) * CFrame.Angles(1.5707963267948966, 0, 0)
										rootPart.AssemblyLinearVelocity = Vector3.new()
										task.wait()
									end

									rootPart.AssemblyLinearVelocity = Vector3.new()
									rootPart.CFrame = cFrame2
									character:ChangeState(Enum.HumanoidStateType.GettingUp)
									flag42 = false
								end
							end)

							task.wait()
						end

						pcall(function()
							workspace.FallenPartsDestroyHeight = -500
						end)

						flag42 = false
					end)
				else
					flag42 = false

					pcall(function()
						workspace.FallenPartsDestroyHeight = -500
					end)
				end
			end)

			local AntiAdmin = CreateButton("AntiAdmin", "مضاد نسخ", scrollingFrame2, true)

			AntiAdmin.MouseButton1Click:Connect(function()
				ChangeToggleColor(AntiAdmin)

				if AntiAdmin.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
					ShowVR7Notification("VR7 Team", [[مضاد لاوامر:
 ;title
 ;dance ;dog
 ;aura
 ;blur
 ;freeze
 ;jail]], "rbxassetid://136772242182146", 10)

					getgenv().AntiCopy = true

					while getgenv().AntiCopy and task.wait(1) do
						pcall(function()
							local text = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text

							for _, item12 in ipairs({ "HD_Body", "HD_Halo", "HD_HaloStar", "HDTorsoSound" }) do
								local obj26 = game.Players.LocalPlayer.Character:FindFirstChild(item12, true)

								if obj26 then
									obj26:Destroy()
								end
							end

							for _, descendant in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
								if descendant:IsA("BasePart") and descendant.Anchored then
									descendant.Anchored = false
								end
							end

							if not getgenv().Enabledssss then
								getgenv().Enabledssss = true

								if not getgenv().Enabledssss then
									local character = game.Players.LocalPlayer.Character
									local humanoid = character and character:FindFirstChildOfClass("Humanoid")
									character = character and character:FindFirstChild("Animate")

									if humanoid and character then
										getgenv().Enabledssss = true

										local function func140(param43)
											for _, descendant in ipairs(character:GetDescendants()) do
												if descendant:IsA("Animation") and descendant.AnimationId == param43.Animation.AnimationId then
													return true
												end
											end

											return false
										end

										for _, getPlayingAnimationTrack30 in ipairs(humanoid:GetPlayingAnimationTracks()) do
											if not func140(getPlayingAnimationTrack30) then
												getPlayingAnimationTrack30:Stop()
											end
										end

										humanoid.AnimationPlayed:Connect(function(obj27)
											if getgenv().AntiCopy and not func140(obj27) then
												obj27:Stop()
											end
										end)
									end
								end

								game.Players.LocalPlayer.CharacterAdded:Connect(function()
									getgenv().Enabledssss = nil
								end)
							end

							for _, child in ipairs(workspace:GetChildren()) do
								if child.Name == tostring(game.Players.LocalPlayer.Name .. "'s JailCell") then
									child:Destroy()
								end
							end

							local hdAdminTitle = game.Players.LocalPlayer.Character.Head:FindFirstChild("HDAdminTitle", true)

							if hdAdminTitle and hdAdminTitle:FindFirstChild("TextLabel") and hdAdminTitle.TextLabel.Text ~= " " then
								game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(text .. "untitle me")
							end

							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
							game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
							game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 7.2
							workspace.Camera:FindFirstChild("Blur", false):Destroy()
						end)
					end
				else
					getgenv().AntiCopy = false
				end
			end)
		end)
	end)

	getgenv().AntiAfkIsEnabled = true

	task.spawn(function()
		while getgenv().AntiAfkIsEnabled do
			pcall(function()
				local currentCamera2 = workspace.CurrentCamera

				if currentCamera2 then
					game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), currentCamera2.CFrame)
					task.wait(0.1)
					game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), currentCamera2.CFrame)
				end
			end)

			task.wait(300)
		end
	end)

	textButton43.MouseButton1Click:Connect(function()
		if queue_on_teleport then
			queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Mercy%20Script\"))()")
		end

		game:GetService("TeleportService"):TeleportCancel()
		wait(0.4)
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer)
	end)

	textButton46.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/GChat"))()
	end)

	textButton45.MouseButton1Click:Connect(function()
		local tbl50 = {}
		local response = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")
		local data = game:GetService("HttpService"):JSONDecode(response)

		if data and data.data then
			for _, value98 in next, data.data, nil do
				if type(value98) == "table" and tonumber(value98.playing) and tonumber(value98.maxPlayers) and value98.playing < value98.maxPlayers and value98.id ~= game.JobId then
					table.insert(tbl50, 1, value98.id)
				end
			end
		end

		if queue_on_teleport then
			queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Mercy%20Script\"))()")
		end

		if #tbl50 > 0 then
			local localPlayer3 = Players2.LocalPlayer
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, tbl50[math.random(1, #tbl50)], localPlayer3)
		else
			for i = 1, 10 do
				pcall(function()
					game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
				end)

				task.wait(2)
			end
		end
	end)

	textBox8.FocusLost:Connect(function()
		Send(func20(textBox8.Text))
		textBox8.Text = ""
	end)

	getgenv().BangSpeed_Input.FocusLost:Connect(function()
		if getgenv().BangSpeed_Input.Text:match("[^%d%.]") then
			getgenv().BangSpeed_Input.Text = "2"
		else
			local func141 = tostring
			getgenv().ConfigData.BangSpeed = func141(getgenv().BangSpeed_Input.Text)
		end

		func17(getgenv().ConfigData)
	end)

	local func142 = tostring
	getgenv().BangSpeed_Input.Text = func142(getgenv().ConfigData.BangSpeed)

	getgenv().AdminCmdSpeed_Input.FocusLost:Connect(function()
		if getgenv().AdminCmdSpeed_Input.Text:match("[^%d%.]") then
			getgenv().AdminCmdSpeed_Input.Text = "5"
		else
			local func143 = tostring
			getgenv().ConfigData.AdminCmdSpeed = func143(getgenv().AdminCmdSpeed_Input.Text)
		end

		func17(getgenv().ConfigData)
	end)

	local func144 = tostring
	getgenv().AdminCmdSpeed_Input.Text = func144(getgenv().ConfigData.AdminCmdSpeed)

	getgenv().SuckingSpeed_Input.FocusLost:Connect(function()
		if getgenv().SuckingSpeed_Input.Text:match("[^%d%.]") then
			getgenv().SuckingSpeed_Input.Text = "2"
		else
			local func145 = tostring
			getgenv().ConfigData.SuckSpeed = func145(getgenv().SuckingSpeed_Input.Text)
		end

		func17(getgenv().ConfigData)
	end)

	local func146 = tostring
	getgenv().SuckingSpeed_Input.Text = func146(getgenv().ConfigData.SuckSpeed)

	game:GetService("Players").PlayerAdded:Connect(function(player)
		if ChatRepeaterEnabled and player ~= game:GetService("Players").LocalPlayer then
			local connection = player.Chatted:Connect(function(message)
				Send(message)
			end)

			table.insert(tbl12, connection)
		end
	end)

	textButton48.MouseButton1Click:Connect(function()
		local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
		screenGui.ResetOnSpawn = false
		screenGui.IgnoreGuiInset = true
		local tbl51 = {}

		for _, descendant in pairs(game.CoreGui:GetDescendants()) do
			if descendant:IsA("ScreenGui") and descendant ~= screenGui and descendant.Enabled then
				table.insert(tbl51, descendant)
				descendant.Enabled = false
			end
		end

		for _, descendant in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
			if descendant:IsA("ScreenGui") and descendant ~= screenGui and descendant.Enabled then
				table.insert(tbl51, descendant)
				descendant.Enabled = false
			end
		end

		local frame2 = Instance.new("Frame", screenGui)
		frame2.Size = UDim2.new(1, 0, 1, 0)
		frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		frame2.BorderSizePixel = 0
		frame2.ZIndex = 10
		local textLabel5 = Instance.new("TextLabel", frame2)
		textLabel5.Size = UDim2.new(0.8, 0, 0.6, 0)
		textLabel5.Position = UDim2.new(0.1, 0, 0.2, 0)
		textLabel5.Text = "نحن فريق مكون من مطوري سكربتات وهاكات خاصة بمنصة روبلوكس، نعمل تحت اشراف ادارة مُحكمة ومحترفة. نحرص على تقديم اعمالنا بجودة عالية ونلتزم باخلاقيات العمل، حيث لا نسمح باي شكل من الاشكال بسرقة افكارنا دون اذن مسبق. نحن دائما متاحون للتواصل عبر دسكورد للاجابة على اي استفسارات او تقديم الدعم اللازم."
		textLabel5.TextColor3 = Color3.fromRGB(r, g, b)
		textLabel5.TextScaled = true
		textLabel5.BackgroundTransparency = 1
		textLabel5.Font = Enum.Font.SourceSansBold
		textLabel5.TextWrapped = true
		textLabel5.ZIndex = 11
		local textLabel6 = Instance.new("TextLabel", frame2)
		textLabel6.Size = UDim2.new(0.2, 0, 0.1, 0)
		textLabel6.Position = UDim2.new(0.05, 0, 0.85, 0)
		textLabel6.TextColor3 = Color3.fromRGB(r, g, b)
		textLabel6.TextScaled = true
		textLabel6.BackgroundTransparency = 1
		textLabel6.Font = Enum.Font.SourceSansBold
		textLabel6.Text = "20"
		textLabel6.ZIndex = 12

		for i = 20, 0, -1 do
			textLabel6.Text = tostring(i)
			wait(1)
		end

		pcall(function()
			screenGui:Destroy()

			for _, value99 in pairs(tbl51) do
				value99.Enabled = true
			end
		end)
	end)

	Players2.PlayerRemoving:Connect(function(player)
		pcall(function()
			if player.Name == name then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "V R 7 Team",
					Text = "الضحية خرج برا السيرفر",
					Duration = 2,
					Icon = game.Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420),
				})

				local sound = Instance.new("Sound", game.Workspace)
				sound.SoundId = "rbxassetid://17692186249"
				sound.Volume = getgenv().NotifcationVloume

				sound.Ended:Connect(function()
					sound:Destroy()
				end)

				sound:Play()
				local userId = player.UserId
				table.insert(getgenv().LastTargetted, userId)

				for _, child in ipairs(getgenv().VR7.Background.Target_Section:GetChildren()) do
					if child:FindFirstChild("Ticket_Asset", true) and child.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
						local name2 = child.Name
						table.insert(getgenv().TargettingF, name2)
					end
				end

				UpdateTarget(nil)
			end
		end)
	end)

	Players2.PlayerAdded:Connect(function(player)
		pcall(function()
			local userId = player.UserId

			if table.find(getgenv().LastTargetted, userId) then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "V R 7 Team",
					Text = "الضيحة رجعت دخلت",
					Duration = 2,
					Icon = game.Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420),
				})

				local sound = Instance.new("Sound", game.Workspace)
				sound.SoundId = "rbxassetid://17692186249"
				sound.Volume = getgenv().NotifcationVloume

				sound.Ended:Connect(function()
					sound:Destroy()
				end)

				sound:Play()
				UpdateTarget(player)
				wait(0.5)

				for _, child in ipairs(getgenv().VR7.Background.Target_Section:GetChildren()) do
					local ticketAsset = child:FindFirstChild("Ticket_Asset", true)

					if ticketAsset then
						local name2 = child.Name
						ticketAsset = table.find(getgenv().TargettingF, name2)
					end

					if ticketAsset and child.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0) then
						local str10 = child.Name .. "1"
						local env5 = getgenv().TargetFunctions[str10]

						if env5 then
							task.spawn(env5)
						end
					end
				end

				getgenv().TargettingF = {}
			end
		end)
	end)
end

localPlayer.CharacterAdded:Connect(function(character)
	task.wait(GetPing() + 0.1)
	character:WaitForChild("Humanoid")

	if cFrame ~= nil then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame
	end

	if textButton23.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
		ChangeToggleColor(textButton23)
		NOFLY()
		wait()
		func23()
		SendNotify("System VR7", "تم ايقاف الطيران بسبب انك قد مت", 5)
	end
end)

if not imageButton5:FindFirstChildOfClass("UIScale") then
	Instance.new("UIScale", imageButton5).Scale = 1
end

imageButton5.MouseButton1Click:Connect(function()
	game:GetService("TweenService"):Create(imageButton5:FindFirstChildOfClass("UIScale"), TweenInfo.new(0.12, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Scale = 1.08 }):Play()
	game:GetService("TweenService"):Create(imageButton5, TweenInfo.new(0.12, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Rotation = 12 }):Play()
	task.wait(0.07)
	game:GetService("TweenService"):Create(imageButton5:FindFirstChildOfClass("UIScale"), TweenInfo.new(0.14, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { Scale = 1 }):Play()
	game:GetService("TweenService"):Create(imageButton5, TweenInfo.new(0.14, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { Rotation = 0 }):Play()
	imageLabel.Visible = not imageLabel.Visible
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then
		return
	end

	if input.KeyCode == Enum.KeyCode.B then
		imageLabel.Visible = not imageLabel.Visible
	end
end)

imageLabel:TweenPosition(UDim2.new(0.5, 0, 0.5, 0))

pcall(function()
	if not _G.Zarba then
		_G.Zarba = true

		local function func147()
			local tbl52 = {
				Default = "000000",
				Aqua = "1ABC9C",
				DarkAqua = "11806A",
				Green = "57F287",
				DarkGreen = "1F8B4C",
				Blue = "3498DB",
				DarkBlue = "206694",
				Purple = "9B59B6",
				DarkPurple = "71368A",
				LuminousVividPink = "E91E63",
				DarkVividPink = "AD1457",
				Gold = "F1C40F",
				DarkGold = "C27C0E",
				Orange = "E67E22",
				DarkOrange = "A84300",
				Red = "ED4245",
				DarkRed = "992D22",
				Grey = "95A5A6",
				DarkGrey = "979C9F",
				DarkerGrey = "7F8C8D",
				LightGrey = "BCC0C0",
				Navy = "34495E",
				DarkNavy = "2C3E50",
				Yellow = "FFFF00",
				White = "FFFFFF",
				Greyple = "99AAb5",
				Black = "23272A",
				DarkButNotBlack = "2C2F33",
				NotQuiteBlack = "23272A",
				Brown = "8B4513",
				Fuchsia = "EB459E",
			}

			local env6 = getgenv().p1[tostring(game.Players.LocalPlayer.UserId)] or nil

			if env6 then
				if env6.Premium then
					getgenv().IsMyPremium = true
					ShowVR7Notification("VR7 Team", "اشتراكك هو بريميوم شكرا لاختيارك سكربتنا", "rbxassetid://136772242182146", 10)
					getgenv().CommandBoxEnabled = false
					return { Color = tonumber("0x" .. tbl52.Black), Type = "Premium" }
				end
			end

			spawn(function()
				local handlers = {
					bring = function(param44, flag43)
						local playerV2 = GetPlayerV2(tostring(flag43))
						local player6 = GetPlayer(tostring(param44))

						if player6 and player6.Character and player6.Character:FindFirstChild("HumanoidRootPart") and flag43 == "" or playerV2 == game.Players.LocalPlayer then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player6.Character.HumanoidRootPart.CFrame
						end
					end,
					kill = function(param45, flag44)
						local playerV22 = GetPlayerV2(tostring(flag44))

						if flag44 == "" or playerV22 == game.Players.LocalPlayer then
							game.Players.LocalPlayer.Character:BreakJoints()
						end
					end,
					loopkill = function(param46, flag45)
						local playerV23 = GetPlayerV2(tostring(flag45))

						if flag45 == "" or playerV23 == game.Players.LocalPlayer then
							getgenv().loopkillme = true

							spawn(function()
								while getgenv().loopkillme do
									wait(0.1)

									pcall(function()
										if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
											task.wait(0.3)
											game.Players.LocalPlayer.Character:BreakJoints()
										end
									end)
								end
							end)
						end
					end,
					unloopkill = function(param47, flag46)
						local playerV24 = GetPlayerV2(tostring(flag46))

						if flag46 == "" or playerV24 == game.Players.LocalPlayer then
							getgenv().loopkillme = false
						end
					end,
					loopbring = function(param48, flag47)
						local playerV25 = GetPlayerV2(tostring(flag47))
						local player7 = GetPlayer(tostring(param48))

						if flag47 == "" or playerV25 == game.Players.LocalPlayer then
							getgenv().loopbring = true

							spawn(function()
								while getgenv().loopbring do
									task.wait()

									pcall(function()
										if player7 and player7.Character and player7.Character:FindFirstChild("HumanoidRootPart") then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player7.Character.HumanoidRootPart.CFrame
										end
									end)
								end
							end)
						end
					end,
					unloopbring = function(param49, flag48)
						local playerV26 = GetPlayerV2(tostring(flag48))

						if flag48 == "" or playerV26 == game.Players.LocalPlayer then
							getgenv().loopbring = false
						end
					end,
					scare = function(param50, flag49)
						local playerV27 = GetPlayerV2(tostring(flag49))

						if flag49 == "" or playerV27 == game.Players.LocalPlayer then
							local sound = Instance.new("Sound", game.Players.LocalPlayer:FindFirstChildOfClass("PlayerGui"))
							sound.SoundId = "rbxassetid://7111752052"
							sound.Volume = 1
							sound:Play()
							sound.Loaded:Wait()
							local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:FindFirstChildOfClass("PlayerGui"))
							screenGui.IgnoreGuiInset = true
							local imageLabel5 = Instance.new("ImageLabel", screenGui)
							imageLabel5.Size = UDim2.new(1, 0, 1, 0)
							imageLabel5.BackgroundTransparency = 1
							imageLabel5.Image = "rbxassetid://4837991204"
							imageLabel5.ZIndex = 9999
							game:GetService("Debris"):AddItem(screenGui, sound.TimeLength)
							game:GetService("Debris"):AddItem(sound, sound.TimeLength)
						end
					end,
					flash = function(param51, flag50)
						local playerV28 = GetPlayerV2(tostring(flag50))

						if flag50 == "" or playerV28 == game.Players.LocalPlayer then
							local sound = Instance.new("Sound", game.Players.LocalPlayer:FindFirstChildOfClass("PlayerGui"))
							sound.SoundId = "rbxassetid://156221488"
							sound.Volume = 1
							sound:Play()
							sound.Loaded:Wait()
							local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:FindFirstChildOfClass("PlayerGui"))
							screenGui.IgnoreGuiInset = true
							local frame2 = Instance.new("Frame", screenGui)
							frame2.Size = UDim2.new(1, 0, 1, 0)
							frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							frame2.ZIndex = 9999
							game:GetService("Debris"):AddItem(screenGui, sound.TimeLength)
							game:GetService("Debris"):AddItem(sound, sound.TimeLength)
						end
					end,
					checkuser = function(param52, flag51)
						local playerV29 = GetPlayerV2(tostring(flag51))

						if flag51 == "" or playerV29 == game.Players.LocalPlayer then
							Send("VR7 ON TOP")
						end
					end,
					credit = function(param53, flag52)
						local playerV210 = GetPlayerV2(tostring(flag52))

						if flag52 == "" or playerV210 == game.Players.LocalPlayer then
							Send("حسوني عمك")
						end
					end,
					say = function(param54, flag53, param55)
						local playerV211 = GetPlayerV2(tostring(flag53))

						if flag53 == "" or playerV211 == game.Players.LocalPlayer then
							Send(param55)
						end
					end,
					spam = function(param56, flag54, flag55)
						local playerV212 = GetPlayerV2(tostring(flag54))

						if flag54 == "" or playerV212 == game.Players.LocalPlayer then
							if flag55 ~= "" then
								getgenv().loopspam = true

								while getgenv().loopspam do
									wait(0.1)
									Send(flag55)
								end
							end
						end
					end,
					unspam = function(param57, flag56)
						local playerV213 = GetPlayerV2(tostring(flag56))

						if flag56 == "" or playerV213 == game.Players.LocalPlayer then
							getgenv().loopspam = false
						end
					end,
					["3mk"] = function(param58, flag57)
						local playerV214 = GetPlayerV2(tostring(flag57))
						local player8 = GetPlayer(tostring(param58))

						if flag57 == "" or playerV214 == game.Players.LocalPlayer then
							Send("عمي " .. player8.DisplayName)
						end
					end,
					jump = function(param59, flag58)
						local playerV215 = GetPlayerV2(tostring(flag58))

						if flag58 == "" or playerV215 == game.Players.LocalPlayer then
							game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						end
					end,
					loopjump = function(param60, flag59)
						local playerV216 = GetPlayerV2(tostring(flag59))

						if flag59 == "" or playerV216 == game.Players.LocalPlayer then
							getgenv().loopjump = true

							spawn(function()
								while getgenv().loopjump do
									wait(0.1)

									pcall(function()
										if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
											task.wait(0.6)
											game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
										end
									end)
								end
							end)
						end
					end,
					unloopjump = function(param61, flag60)
						local playerV217 = GetPlayerV2(tostring(flag60))

						if flag60 == "" or playerV217 == game.Players.LocalPlayer then
							getgenv().loopjump = false
						end
					end,
					loud = function(param62, flag61)
						local playerV218 = GetPlayerV2(tostring(flag61))

						if flag61 == "" or playerV218 == game.Players.LocalPlayer then
							local sound = Instance.new("Sound", game.Workspace)
							sound.SoundId = "rbxassetid://136950751890700"
							sound:Play()

							sound.Ended:Connect(function()
								sound:Destroy()
							end)
						end
					end,
					ssound = function(param63, flag62)
						local playerV219 = GetPlayerV2(tostring(flag62))

						if flag62 == "" or playerV219 == game.Players.LocalPlayer then
							if getgenv().Scary_sound then
								getgenv().Scary_sound:Destroy()
							end

							getgenv().Scary_sound = Instance.new("Sound", game.Workspace)
							getgenv().Scary_sound.Volume = 10
							getgenv().Scary_sound.SoundId = "rbxassetid://140100149659310"
							getgenv().Scary_sound:Play()
							getgenv().Scary_sound.Looped = true
						end
					end,
					unssound = function(param64, flag63)
						local playerV220 = GetPlayerV2(tostring(flag63))

						if flag63 == "" or playerV220 == game.Players.LocalPlayer then
							if getgenv().Scary_sound then
								getgenv().Scary_sound:Destroy()
							end
						end
					end,
					orbit = function(param65, flag64)
						local playerV221 = GetPlayerV2(tostring(flag64))
						local player9 = GetPlayer(tostring(param65))

						if flag64 == "" or playerV221 == game.Players.LocalPlayer then
							local n = 7
							local n2 = 4
							getgenv().Orbit = true

							spawn(function()
								while getgenv().Orbit do
									local sin = math.sin
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(player9.Character.HumanoidRootPart.Position + Vector3.new(math.cos(tick() * n2) * n, 0, sin(tick() * n2) * n), player9.Character.HumanoidRootPart.Position)
									task.wait(0.001)
								end
							end)
						end
					end,
					unorbit = function(param66, flag65)
						local playerV222 = GetPlayerV2(tostring(flag65))

						if flag65 == "" or playerV222 == game.Players.LocalPlayer then
							getgenv().Orbit = false
						end
					end,
					spin = function(param67, flag66)
						local playerV223 = GetPlayerV2(tostring(flag66))

						if flag66 == "" or playerV223 == game.Players.LocalPlayer then
							getgenv().Spin = true

							spawn(function()
								while getgenv().Spin do
									task.wait()

									pcall(function()
										local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
										humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, 1.7453292519943295, 0)
									end)
								end
							end)
						end
					end,
					unspin = function(param68, flag67)
						local playerV224 = GetPlayerV2(tostring(flag67))

						if flag67 == "" or playerV224 == game.Players.LocalPlayer then
							getgenv().Spin = false
						end
					end,
					skyfall = function(param69, flag68)
						local playerV225 = GetPlayerV2(tostring(flag68))

						if flag68 == "" or playerV225 == game.Players.LocalPlayer then
							local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
							humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 600, 0)
						end
					end,
					freeze = function(param70, flag69)
						local playerV226 = GetPlayerV2(tostring(flag69))

						if flag69 == "" or playerV226 == game.Players.LocalPlayer then
							getgenv().Freeze = true

							while getgenv().Freeze do
								pcall(function()
									if not game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored then
										game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
									end
								end)

								wait(0.1)
							end
						end
					end,
					unfreeze = function(param71, flag70)
						local playerV227 = GetPlayerV2(tostring(flag70))

						if flag70 == "" or playerV227 == game.Players.LocalPlayer then
							getgenv().Freeze = false
							wait(0.2)
							game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
						end
					end,
					sit = function(param72, flag71)
						local playerV228 = GetPlayerV2(tostring(flag71))

						if flag71 == "" or playerV228 == game.Players.LocalPlayer then
							game.Players.LocalPlayer.Character.Humanoid.Sit = true
						end
					end,
					loopsit = function(param73, flag72)
						local playerV229 = GetPlayerV2(tostring(flag72))

						if flag72 == "" or playerV229 == game.Players.LocalPlayer then
							getgenv().loopsit = true

							spawn(function()
								while getgenv().loopsit do
									wait(0.1)

									pcall(function()
										if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
											task.wait(0.3)
											game.Players.LocalPlayer.Character.Humanoid.Sit = true
										end
									end)
								end
							end)
						end
					end,
					unloopsit = function(param74, flag73)
						local playerV230 = GetPlayerV2(tostring(flag73))

						if flag73 == "" or playerV230 == game.Players.LocalPlayer then
							getgenv().loopsit = false
						end
					end,
					off = function(param75, flag74)
						local playerV231 = GetPlayerV2(tostring(flag74))

						if flag74 == "" or playerV231 == game.Players.LocalPlayer then
							for _, descendant in ipairs(VR7:GetDescendants()) do
								if descendant:IsA("ImageButton") and descendant.Name == "Ticket_Asset" then
									descendant.ImageColor3 = Color3.fromRGB(255, 0, 0)
								end
							end
						end
					end,
					fov = function(param76, flag75)
						local playerV232 = GetPlayerV2(tostring(flag75))

						if flag75 == "" or playerV232 == game.Players.LocalPlayer then
							if getgenv().OldF then
								game.Workspace.CurrentCamera.FieldOfView = getgenv().OldF
							end

							local fieldOfView = game.Workspace.CurrentCamera.FieldOfView
							getgenv().OldF = fieldOfView
							game.Workspace.CurrentCamera.FieldOfView = 0
						end
					end,
					unfov = function(param77, flag76)
						local playerV233 = GetPlayerV2(tostring(flag76))

						if flag76 == "" or playerV233 == game.Players.LocalPlayer then
							game.Workspace.CurrentCamera.FieldOfView = getgenv().OldF
						end
					end,
					gravity = function(param78, flag77)
						local playerV234 = GetPlayerV2(tostring(flag77))

						if flag77 == "" or playerV234 == game.Players.LocalPlayer then
							local character = game.Players.LocalPlayer.Character
							local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
							if not humanoidRootPart then
								return
							end

							if humanoidRootPart:FindFirstChild("FloatVelocity") then
								humanoidRootPart.FloatVelocity:Destroy()
							end

							if humanoidRootPart:FindFirstChild("FloatGyro") then
								humanoidRootPart.FloatGyro:Destroy()
							end

							getgenv().FloatingLoop = false
							task.wait()
							getgenv().FloatingLoop = true
							local bodyVelocity = Instance.new("BodyVelocity")
							bodyVelocity.Name = "FloatVelocity"
							bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							bodyVelocity.Velocity = Vector3.new(0, 2, 0)
							bodyVelocity.Parent = humanoidRootPart
							local bodyGyro = Instance.new("BodyGyro")
							bodyGyro.Name = "FloatGyro"
							bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
							bodyGyro.P = 5000
							bodyGyro.CFrame = humanoidRootPart.CFrame
							bodyGyro.Parent = humanoidRootPart

							task.spawn(function()
								local y = humanoidRootPart.Position.Y
								local n = 0

								while getgenv().FloatingLoop and humanoidRootPart.Parent and bodyVelocity.Parent and bodyGyro.Parent do
									n += 0.08
									local n2 = math.sin(n * 2.5) * 18
									local n3 = math.cos(n * 1.7) * 8
									local n4 = math.sin(n * 3) * 1.5
									bodyVelocity.Velocity = Vector3.new(math.sin(n * 4) * 25, math.cos(n * 3) * 3, math.cos(n * 2.5) * 20)
									local position = humanoidRootPart.Position
									local x = position.X
									local z = position.Z
									humanoidRootPart.CFrame = CFrame.new(x, y + math.sin(n * 2) * 2, z) * CFrame.Angles(n * 8, n * 6, n * 7)
									task.wait(0.03)
								end
							end)
						end
					end,
					ungravity = function(param79, flag78)
						local playerV235 = GetPlayerV2(tostring(flag78))

						if flag78 == "" or playerV235 == game.Players.LocalPlayer then
							getgenv().FloatingLoop = false
							local character = game.Players.LocalPlayer.Character
							character = character and character:FindFirstChild("HumanoidRootPart")
							if not character then
								return
							end

							if character:FindFirstChild("FloatVelocity") then
								character.FloatVelocity:Destroy()
							end

							if character:FindFirstChild("FloatGyro") then
								character.FloatGyro:Destroy()
							end
						end
					end,
					dance = function(param80, flag79)
						local playerV236 = GetPlayerV2(tostring(flag79))

						if flag79 == "" or playerV236 == game.Players.LocalPlayer then
							local tbl53 = { "27789359", "30196114", "248263260", "45834924", "33796059", "28488254", "52155728" }

							if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
								tbl53 = {
									"3333432454",
									"4555808220",
									"4049037604",
									"4555782893",
									"10214311282",
									"10714010337",
									"10713981723",
									"10714372526",
									"10714076981",
									"10714392151",
									"11444443576",
								}
							end

							local animation = Instance.new("Animation")
							animation.AnimationId = "rbxassetid://" .. tbl53[math.random(1, #tbl53)]
							danceTrack = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(animation)
							danceTrack.Looped = true
							danceTrack:Play()
						end
					end,
					undance = function(param81, flag80)
						local playerV237 = GetPlayerV2(tostring(flag80))

						if flag80 == "" or playerV237 == game.Players.LocalPlayer then
							if danceTrack then
								danceTrack:Stop()
								danceTrack:Destroy()
							end
						end
					end,
					kick = function(player10, param82)
						local p1 = getgenv().p1 or {}

						if type(player10) == "string" then
							local value100 = game.Players:FindFirstChild(player10)

							if value100 then
								player10 = tostring(value100.UserId)
							end
						elseif typeof(player10) == "Instance" and player10:IsA("Player") then
							player10 = tostring(player10.UserId)
						else
							player10 = tostring(player10)
						end

						local flag81 = type(p1) == "table" and (p1[player10] or p1[tonumber(player10)])
						if not (type(flag81) == "table" and flag81.Op == true or type(flag81) == "table" and flag81.Premium == true) then
							return
						end
						local localPlayer2 = game.Players.LocalPlayer

						if GetPlayerV2(tostring(param82)) == localPlayer2 then

							if queue_on_teleport then
								queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Mercy%20Script\"))()")
							end
						end
					end,
					kickmsg = function(player11, param83, reason)
						local p1 = getgenv().p1 or {}

						if type(player11) == "string" then
							local value101 = game.Players:FindFirstChild(player11)

							if value101 then
								player11 = tostring(value101.UserId)
							end
						elseif typeof(player11) == "Instance" and player11:IsA("Player") then
							player11 = tostring(player11.UserId)
						else
							player11 = tostring(player11)
						end

						local flag82 = type(p1) == "table" and (p1[player11] or p1[tonumber(player11)])
						if not (type(flag82) == "table" and flag82.Op == true or type(flag82) == "table" and flag82.Premium == true) then
							return
						end
						local localPlayer2 = game.Players.LocalPlayer

						if GetPlayerV2(tostring(param83)) == localPlayer2 then

							if queue_on_teleport then
								queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Mercy%20Script\"))()")
							end
						end
					end,
					unbenx = function(player12, flag83)
						local p1 = getgenv().p1 or {}

						if type(player12) == "string" then
							local value102 = game.Players:FindFirstChild(player12)

							if value102 then
								player12 = tostring(value102.UserId)
							end
						elseif typeof(player12) == "Instance" and player12:IsA("Player") then
							player12 = tostring(player12.UserId)
						else
							player12 = tostring(player12)
						end

						local flag84 = type(p1) == "table" and (p1[player12] or p1[tonumber(player12)])
						if not (type(flag84) == "table" and flag84.Op == true or type(flag84) == "table" and flag84.Premium == true) then
							return
						end
						local playerV238 = GetPlayerV2(tostring(flag83))

						if flag83 == "" or playerV238 == game.Players.LocalPlayer then
							local n = 0

							repeat
								task.wait()
								n += 1
								getgenv().Benxme = false
							until n > 20
						end
					end,
					benx = function(player13, flag85)
						local p1 = getgenv().p1 or {}
						local str11

						if type(player13) == "string" then
							local value103 = game.Players:FindFirstChild(player13)

							if value103 then
								str11 = tostring(value103.UserId)
							else
								str11 = player13
							end
						elseif typeof(player13) == "Instance" and player13:IsA("Player") then
							str11 = tostring(player13.UserId)
						else
							str11 = tostring(player13)
						end

						local flag86 = type(p1) == "table" and (p1[str11] or p1[tonumber(str11)])
						if not (type(flag86) == "table" and flag86.Op == true or type(flag86) == "table" and flag86.Premium == true) then
							return
						end
						local playerV239 = GetPlayerV2(tostring(flag85))
						local player14 = GetPlayer(tostring(player13))

						if flag85 == "" or playerV239 == game.Players.LocalPlayer then
							if not player14 or not player14.Character then
								return
							end
							getgenv().Benxme = true

							task.spawn(function()
								local n = -2
								local n2 = 0.1
								local n3 = -1

								while getgenv().Benxme do
									pcall(function()
										local torso = player14.Character:FindFirstChild("Torso") or player14.Character:FindFirstChild("UpperTorso")

										if torso then
											if torso.Name == "Torso" then
												n3 = -0.75
											end

											local character = game.Players.LocalPlayer.Character

											if character and character:FindFirstChild("Humanoid") and character:FindFirstChild("HumanoidRootPart") then
												character.Humanoid.Sit = true
												character.HumanoidRootPart.CFrame = torso.CFrame * CFrame.new(0, n3, n) * CFrame.Angles(4.7123889803846897, 0, 0)
												character.HumanoidRootPart.Velocity = Vector3.zero
											end

											n += n2

											if n >= -1 or n <= -2 then
												n2 = -n2
											end

											if VR7 then
												for _, descendant in ipairs(VR7:GetDescendants()) do
													if descendant:IsA("ImageButton") and descendant.Name == "Ticket_Asset" then
														descendant.ImageColor3 = Color3.fromRGB(255, 0, 0)
													end
												end
											end
										end
									end)

									task.wait()
								end

								pcall(function()
									if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
										game.Players.LocalPlayer.Character.Humanoid.Sit = false
									end
								end)
							end)
						end
					end,
					benxto = function(player15, flag87, param84)
						local p1 = getgenv().p1 or {}
						local str12

						if type(player15) == "string" then
							local value104 = game.Players:FindFirstChild(player15)

							if value104 then
								str12 = tostring(value104.UserId)
							else
								str12 = player15
							end
						elseif typeof(player15) == "Instance" and player15:IsA("Player") then
							str12 = tostring(player15.UserId)
						else
							str12 = tostring(player15)
						end

						local flag88 = type(p1) == "table" and (p1[str12] or p1[tonumber(str12)])
						if not (type(flag88) == "table" and flag88.Premium == true) then
							return
						end
						local playerV240 = GetPlayerV2(tostring(flag87))
						local player16 = GetPlayer(tostring(player15))
						local player17 = GetPlayer(tostring(param84))

						if flag87 == "" or playerV240 == game.Players.LocalPlayer then
							if not player16 or not player16.Character then
								return
							end
							getgenv().Benxme = true

							task.spawn(function()
								local n = -2
								local n2 = 0.1
								local n3 = -1

								while getgenv().Benxme do
									pcall(function()
										local torso = player17.Character:FindFirstChild("Torso") or player17.Character:FindFirstChild("UpperTorso")

										if torso then
											if torso.Name == "Torso" then
												n3 = -0.75
											end

											local character = game.Players.LocalPlayer.Character

											if character and character:FindFirstChild("Humanoid") and character:FindFirstChild("HumanoidRootPart") then
												character.Humanoid.Sit = true
												character.HumanoidRootPart.CFrame = torso.CFrame * CFrame.new(0, n3, n) * CFrame.Angles(4.7123889803846897, 0, 0)
												character.HumanoidRootPart.Velocity = Vector3.zero
											end

											n += n2

											if n >= -1 or n <= -2 then
												n2 = -n2
											end

											if VR7 then
												for _, descendant in ipairs(VR7:GetDescendants()) do
													if descendant:IsA("ImageButton") and descendant.Name == "Ticket_Asset" then
														descendant.ImageColor3 = Color3.fromRGB(255, 0, 0)
													end
												end
											end
										end
									end)

									task.wait()
								end

								pcall(function()
									if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
										game.Players.LocalPlayer.Character.Humanoid.Sit = false
									end
								end)
							end)
						end
					end,
					fling = function(player18, flag89)
						local p1 = getgenv().p1 or {}

						if type(player18) == "string" then
							local value105 = game.Players:FindFirstChild(player18)

							if value105 then
								player18 = tostring(value105.UserId)
							end
						elseif typeof(player18) == "Instance" and player18:IsA("Player") then
							player18 = tostring(player18.UserId)
						else
							player18 = tostring(player18)
						end

						local flag90 = type(p1) == "table" and (p1[player18] or p1[tonumber(player18)])
						if not (type(flag90) == "table" and flag90.Op == true or type(flag90) == "table" and flag90.Premium == true) then
							return
						end
						local playerV241 = GetPlayerV2(tostring(flag89))

						if flag89 == "" or playerV241 == game.Players.LocalPlayer then
							local func148 = pairs
							local humanoidRootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

							for _, child in func148(humanoidRootPart:GetChildren()) do
								if child:IsA("BodyVelocity") or child:IsA("BodyAngularVelocity") then
									child:Destroy()
								end
							end

							Instance.new("BodyAngularVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart).AngularVelocity = Vector3.new(0, 100, 0)
							game.Players.LocalPlayer.Character.HumanoidRootPart.BodyAngularVelocity.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
							Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart).MaxForce = Vector3.new(1e9, 1e9, 1e9)

							for i = 0, 1, 0.05 do
								game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity.Velocity = Vector3.new(100000, 50000, 0) * i
								task.wait(0.05)
							end

							game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity.Velocity = Vector3.new(100000, 50000, 0)

							task.delay(1, function()
								game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity:Destroy()
								game.Players.LocalPlayer.Character.HumanoidRootPart.BodyAngularVelocity:Destroy()
							end)
						end
					end,
					explode = function(param85, flag91)
						local playerV242 = GetPlayerV2(tostring(flag91))

						if flag91 == "" or playerV242 == game.Players.LocalPlayer then
							local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
							Instance.new("Explosion", game.Players.LocalPlayer.Character).Position = position
						end
					end,
					void = function(param86, flag92)
						local playerV243 = GetPlayerV2(tostring(flag92))

						if flag92 == "" or playerV243 == game.Players.LocalPlayer then
							local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
							humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -300, 0)
						end
					end,
					bringto = function(player19, flag93, param87)
						local p1 = getgenv().p1 or {}
						local str13

						if type(player19) == "string" then
							local value106 = game.Players:FindFirstChild(player19)

							if value106 then
								str13 = tostring(value106.UserId)
							else
								str13 = player19
							end
						elseif typeof(player19) == "Instance" and player19:IsA("Player") then
							str13 = tostring(player19.UserId)
						else
							str13 = tostring(player19)
						end

						local flag94 = type(p1) == "table"
						local value107

						if flag94 then
							value107 = p1[str13] or p1[tonumber(str13)]
						else
							value107 = flag94
						end

						if not (type(value107) == "table" and value107.Premium == true) then
							return
						end
						local playerV244 = GetPlayerV2(tostring(flag93))
						GetPlayer(tostring(player19))
						local player20 = GetPlayer(tostring(param87))

						if player20 and player20.Character and player20.Character:FindFirstChild("HumanoidRootPart") and flag93 == "" or playerV244 == game.Players.LocalPlayer then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player20.Character.HumanoidRootPart.CFrame
						end
					end,
					unglitch = function(player21, flag95)
						local p1 = getgenv().p1 or {}

						if type(player21) == "string" then
							local value108 = game.Players:FindFirstChild(player21)

							if value108 then
								player21 = tostring(value108.UserId)
							end
						elseif typeof(player21) == "Instance" and player21:IsA("Player") then
							player21 = tostring(player21.UserId)
						else
							player21 = tostring(player21)
						end

						local flag96 = type(p1) == "table" and (p1[player21] or p1[tonumber(player21)])
						if not (type(flag96) == "table" and flag96.Premium == true) then
							return
						end
						local playerV245 = GetPlayerV2(tostring(flag95))

						if flag95 == "" or playerV245 == game.Players.LocalPlayer then
							getgenv().GlitchingTarget = false
						end
					end,
					glitch = function(player22, flag97, param88)
						local p1 = getgenv().p1 or {}
						local str14

						if type(player22) == "string" then
							local value109 = game.Players:FindFirstChild(player22)

							if value109 then
								str14 = tostring(value109.UserId)
							else
								str14 = player22
							end
						elseif typeof(player22) == "Instance" and player22:IsA("Player") then
							str14 = tostring(player22.UserId)
						else
							str14 = tostring(player22)
						end

						local flag98 = type(p1) == "table" and (p1[str14] or p1[tonumber(str14)])
						if not (type(flag98) == "table" and flag98.Premium == true) then
							return
						end
						local playerV246 = GetPlayerV2(tostring(flag97))
						GetPlayer(tostring(player22))

						if flag97 == "" or playerV246 == game.Players.LocalPlayer then
							local character = game.Players.LocalPlayer.Character
							local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
							if not humanoidRootPart then
								return
							end
							getgenv().GlitchingTarget = true

							task.spawn(function()
								local n = tonumber(param88) or 3

								while getgenv().GlitchingTarget and humanoidRootPart and humanoidRootPart.Parent do
									pcall(function()
										local n2 = math.random(-n, n)
										local n3 = math.random(-n, n)
										local n4 = math.random(-n, n)
										local value110 = humanoidRootPart
										local n5 = humanoidRootPart.CFrame * CFrame.new(n2, n3, n4)
										local rad = math.rad
										local random = math.random
										value110.CFrame = n5 * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), rad(random(-180, 180)))
										local random2 = math.random
										humanoidRootPart.Velocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), random2(-50, 50))
									end)

									task.wait(0.03)
								end
							end)
						end
					end,
					crash = function(player23, flag99)
						local p1 = getgenv().p1 or {}

						if type(player23) == "string" then
							local value111 = game.Players:FindFirstChild(player23)

							if value111 then
								player23 = tostring(value111.UserId)
							end
						elseif typeof(player23) == "Instance" and player23:IsA("Player") then
							player23 = tostring(player23.UserId)
						else
							player23 = tostring(player23)
						end

						local flag100 = type(p1) == "table"
						local value112

						if flag100 then
							value112 = p1[player23] or p1[tonumber(player23)]
						else
							value112 = flag100
						end

						if not (type(value112) == "table" and value112.Premium == true) then
							return
						end
						local playerV247 = GetPlayerV2(tostring(flag99))
						if not (flag99 == "" or playerV247 == game.Players.LocalPlayer) then
							return
						end

					end,
				}

				spawn(function()
					local HttpService = game:GetService("HttpService")
					local Players2 = game:GetService("Players")
					local MarketplaceService = game:GetService("MarketplaceService")
					local localPlayer2 = Players2.LocalPlayer
					local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Vercel-get"))()
					local url = "http://vicky.hidencloud.com:24599/api/all"
					getgenv().Cooldowner = false
					getgenv().CommandLoopRunning = false
					getgenv().CommandLoopHeartbeat = tick()
					local tbl54 = {}
					local tbl55 = {}
					local flag101 = false
					local str15 = "Unknown"
					local n = 2
					local n2 = 0

					pcall(function()
						str15 = MarketplaceService:GetProductInfo(game.PlaceId).Name
					end)

					local function func149()
						while #tbl55 > 300 do
							tbl54[table.remove(tbl55, 1)] = nil
						end
					end

					local function func150(flag102)
						if not flag102 then
							return
						end

						if not tbl54[flag102] then
							tbl54[flag102] = true
							table.insert(tbl55, flag102)
							func149()
						end
					end

					LoadVerified = function()
						if flag101 and type(getgenv().p1) == "table" then
							return
						end

						local ok2, result = pcall(function()
							return loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Hehehe"))()
						end)

						if ok2 and type(result) == "table" then
							local tbl56 = {}

							for k, value113 in pairs(result) do
								if type(value113) == "table" then
									if value113.Op == true or value113.Cmds == true or value113.Premium == true then
										tbl56[tostring(k)] = value113
										tbl56[tonumber(k)] = value113
									end
								end
							end

							flag101 = true
						end
					end

					IsVerifiedUser = function(param89)
						LoadVerified()
						local p1 = getgenv().p1
						if type(p1) ~= "table" then
							return false
						end
						return p1[tostring(param89)] ~= nil or p1[tonumber(param89)] ~= nil
					end

					GetVerifiedPlayerName = function(param90)
						for _, player in ipairs(Players2:GetPlayers()) do
							if tonumber(player.UserId) == tonumber(param90) and IsVerifiedUser(player.UserId) then
								return player.Name
							end
						end

						return nil
					end

					spawn(function()
						while true do
							for _, player in ipairs(game.Players:GetPlayers()) do
								if player ~= game.Players.LocalPlayer and IsVerifiedUser(player.UserId) then
									request({
										Url = "http://vicky.hidencloud.com:24599/api/player",
										Method = "POST",
										Headers = { ["Content-Type"] = "application/json" },
										Body = game:GetService("HttpService"):JSONEncode({ id = game:GetService("Players").LocalPlayer.UserId }),
									})
								end
							end

							task.wait(30)
						end
					end)

					local function func151()
						local Players3 = game:GetService("Players")
						local localPlayer3 = Players3.LocalPlayer
						local p1 = getgenv().p1
						if type(p1) ~= "table" then
							return false
						end
						local tbl57 = p1[tostring(localPlayer3.UserId)] or p1[tonumber(localPlayer3.UserId)] or {}
						local premium = tbl57.Premium
						local op = tbl57.Op

						for _, player in ipairs(Players3:GetPlayers()) do
							if player == localPlayer3 then
								continue
							end
							local value114 = p1[tostring(player.UserId)] or p1[tonumber(player.UserId)]
							if type(value114) ~= "table" then
								continue
							end

							if value114.Premium then
								return true
							end

							if value114.Op then
								if not premium then
									return true
								end
								continue
							end

							if value114.Cmds then
								if not premium and not op then
									return true
								end
							end
						end

						return false
					end

					local function func152(param91, flag103, param92)
						task.spawn(function()
							pcall(function()
								local playerV248 = GetPlayerV2(tostring(flag103))
								if flag103 ~= "" and playerV248 ~= localPlayer2 then
									return
								end

								if getgenv().Cooldowner then
									return
								end
								getgenv().Cooldowner = true
								local str16 = "�?"

								pcall(function()
									if loadstring("return game:GetService('VoiceChatService'):IsVoiceEnabledForUserIdAsync(game:GetService('Players').LocalPlayer.UserId) and '✔️' or '�?'")() then
										str16 = "✔️"
									end
								end)

								local str17 = str15
								local jobId = game.JobId
								local str18 = param92

								request({
									Url = url,
									Method = "POST",
									Headers = { ["content-type"] = "application/json" },
									Body = HttpService:JSONEncode({
										content = "",
										username = "The Mercy Script",
										avatar_url = "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5544f47d-0648-44d8-ad14-8d5a8761b77e/dg2813p-32e3e83b-9414-4208-979e-d668d30d5c2a.jpg/v1/fill/w_800,h_800,q_75,strp/my_previous_steam_profile_pfp_by_hhjgsr_dg2813p-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAwIiwicGF0aCI6IlwvZlwvNTU0NGY0N2QtMDY0OC00NGQ4LWFkMTQtOGQ1YTg3NjFiNzdlXC9kZzI4MTNwLTMyZTNlODNiLTk0MTQtNDIwOC05NzllLWQ2NjhkMzBkNWMyYS5qcGciLCJ3aWR0aCI6Ijw9ODAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.2faqf61iX35A5BybzE-rECzyzVU9BuEC7o3kCbM4vpk",
										embeds = {
											{
												title = "New Command Sent By @" .. tostring(param91) .. " خانة",
												description = "**[Player Username (D/U):](https://www.roblox.com/users/" .. localPlayer2.UserId .. "/profile)**  ```" .. localPlayer2.DisplayName .. " (@" .. localPlayer2.Name .. ") " .. str16 .. "```\n" .. "**[Game Name (" .. tostring(#Players2:GetPlayers()) .. " Player):](https://www.roblox.com/games/" .. tostring(game.PlaceId) .. ")**\n```" .. str17 .. "```\n" .. "**Game ID:** ```" .. jobId .. "``` \n" .. "**Command:** ```" .. str18 .. "``` \n" .. "<t:" .. os.time() .. ":f>",
												color = 15277667,
											},
										},
									}),
								})

								task.wait(0.5)
								getgenv().Cooldowner = false
							end)

							getgenv().Cooldowner = false
						end)
					end

					local function func153(param93)
						local str19 = tostring(param93.PlayerId or "")
						local action = param93.Command and param93.Command.Action
						local id = param93.Id
						if not action or not id then
							return
						end

						if tbl54[id] then
							return
						end
						local match = tostring(action):lower():match("^%s*(.-)%s*$")
						if match == "" or match:sub(1, 1) ~= "." then
							func150(id)
							return
						end
						local tbl58 = {}

						for match2 in match:gmatch("%S+") do
							table.insert(tbl58, match2:lower())
						end
						

						local flag104 = tbl58[1] and tbl58[1]:sub(2) or nil
						local str20 = tbl58[2] or ""
						local joined = table.concat(tbl58, " ", 3)
						if not flag104 then
							func150(id)
							return
						end

						if not handlers or not handlers[flag104] then
							func150(id)
							return
						end
						local verifiedPlayerName = GetVerifiedPlayerName(str19)
						if not verifiedPlayerName then
							return
						end
						func150(id)

						task.spawn(function()
							pcall(function()
								handlers[flag104](verifiedPlayerName, str20, joined)
							end)

							func152(verifiedPlayerName, str20, match)

							pcall(function()
								if queue_on_teleport then
									queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Mercy%20Script\"))()")
								end
							end)
						end)
					end

					local function func154()
						if not func151() then
							return
						end

						local ok2, result = pcall(function()
							return request({ Url = lib, Method = "GET" })
						end)

						local ok3, result2 = pcall(function()
							return HttpService:JSONDecode(result.Body)
						end)

						if type(result2.Commands) == "table" then
							for _, command_ in ipairs(result2.Commands) do
								pcall(function()
									func153(command_)
								end)
							end
						end
					end

					local function func155()
						if getgenv().CommandLoopRunning then
							return
						end
						getgenv().CommandLoopRunning = true

						while getgenv().CommandLoopRunning do
							getgenv().CommandLoopHeartbeat = tick()
							

							if func151() then
								if pcall(function()
									func154()
								end) then
									n2 = 0
									task.wait(1)
								else
									n2 += 1
									task.wait(math.min(n * n2, 10))
								end
							else
								n2 = 0
								task.wait(1)
							end
						end
					end

					task.spawn(func155)

					task.spawn(function()
						while true do
							task.wait(5)

							if not getgenv().CommandLoopRunning then
								task.spawn(func155)
							else
								if not (tick() - (getgenv().CommandLoopHeartbeat or 0) > 15) then
									continue
								end
								getgenv().CommandLoopRunning = false
								task.wait(1)
								task.spawn(func155)
							end
						end
					end)
				end)
			end)

			if env6 and env6.Cmds then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "VR7 Team",
					Text = "يمكنك استخدام الاوامر لكن دون حماية",
					Duration = 13,
					Icon = "rbxassetid://136772242182146",
				})

				local sound = Instance.new("Sound", workspace)
				sound.SoundId = "rbxassetid://1862047553"
				sound.Volume = getgenv().NotifcationVloume or 1

				sound.Ended:Connect(function()
					sound:Destroy()
				end)

				sound:Play()
				getgenv().CommandBoxEnabled = false
				

				spawn(function()
					while getgenv().VR7 and getgenv().CommandBoxEnabled == false do
						task.wait()
						wait(299.5)

						ShowVR7Notification("VR7 Team", [[تبي تجلد الي معهم رتبة قولد؟
تبي اشتراك اقوى من اشتراكك؟
احسن حل لك تشترك دايموند او بريميوم وجميع الاسعار مناسبة
]], "rbxassetid://136772242182146", 10)

						wait(0.5)
						ShowVR7Notification("VR7 Team", "discord.gg/VR7\n للاشتراك افتح تكت", "rbxassetid://136772242182146", 10)
					end
				end)

				return { Color = tonumber("0x" .. tbl52.Gold), Type = "Gold User" }
			end
			

			if env6 and env6.Protected then
				ShowVR7Notification("VR7 Team", "انت محمي من جميع الاوامر", "rbxassetid://136772242182146", 10)
				local sound = Instance.new("Sound", workspace)
				sound.SoundId = "rbxassetid://1862047553"
				sound.Volume = getgenv().NotifcationVloume or 1

				sound.Ended:Connect(function()
					sound:Destroy()
				end)

				sound:Play()
				getgenv().CommandBoxEnabled = true

				spawn(function()
					while getgenv().VR7 and getgenv().CommandBoxEnabled == false do
						task.wait()
						wait(5.5)

						ShowVR7Notification("VR7 Team", [[مليت من نفس الاوامر؟
تبي تخرب على الهاكات؟
احسن حل لك تشترك وجميع الاسعار مناسبة
]], "rbxassetid://136772242182146", 10)

						wait(0.5)
						ShowVR7Notification("VR7 Team", "discord.gg/VR7\n للاشتراك افتح تكت", "rbxassetid://136772242182146", 10)
					end
				end)

				return { Color = tonumber("0x" .. tbl52.Brown), Type = "Bronze User" }
			end

			if env6 and env6.Op then
				ShowVR7Notification("VR7 Team", "انت محمي من جميع الاوامر\nويمكنك استخدام الاوامر على الناس", "rbxassetid://136772242182146", 10)
				getgenv().CommandBoxEnabled = false
				return { Color = tonumber("0x" .. tbl52.Aqua), Type = "Diamond" }
			end

			getgenv().CommandBoxEnabled = true

			spawn(function()
				while getgenv().VR7 and getgenv().CommandBoxEnabled == false do
					task.wait()
					wait(5.5)

					ShowVR7Notification("VR7 Team", [[مليت من نفس الاوامر؟
تبي تخرب على الهاكات؟
احسن حل لك تشترك وجميع الاسعار مناسبة
]], "rbxassetid://136772242182146", 10)

					wait(0.5)
					ShowVR7Notification("VR7 Team", "discord.gg/VR7\n للاشتراك افتح تكت", "rbxassetid://136772242182146", 10)
				end
			end)

			return { Color = tonumber("0x" .. tbl52.Greyple), Type = "Free User" }
		end
		

		local result5 = func147()

		if result5.Type ~= "Free User" then
			local type_ = result5.Type
			getgenv().SubLabel.Text = "الاشتراك : " .. type_:gsub("User", "")
		else
			getgenv().SubLabel.Text = "الاشتراك : لايوجد"
			getgenv().CommandBoxEnabled = true
		end

		request({
			Url = "http://127.0.0.1:6463/rpc?v=1",
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json", Origin = "https://discord.com" },
			Body = game:GetService("HttpService"):JSONEncode({
				cmd = "INVITE_BROWSER",
				args = { code = "4YtCepCRkN" },
				nonce = game:GetService("HttpService"):GenerateGUID(false),
			}),
		})
	end
end)

if getgenv().ConfigData.Ver ~= ver then
	wait(1)
	game:GetService("StarterGui"):SetCore("SendNotification", { Title = "New Update", Text = "تم اطلاق تحديث جديد للسكربت", Duration = 10 })
	local sound = Instance.new("Sound", game.Workspace)
	sound.SoundId = "rbxassetid://122013786812898"
	sound.Volume = getgenv().NotifcationVloume

	sound.Ended:Connect(function()
		sound:Destroy()
	end)

	sound:Play()
	getgenv().ConfigData.Ver = ver
	func17(getgenv().ConfigData)
	ChangeSection(textButton7)
end

spawn(function()
	while true do
		request({
			Url = "http://zara.hidencloud.com:24677/post",
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = "{\"id\":\"" .. game.Players.LocalPlayer.UserId .. "\",\"server\":\"default_server\"}",
		})

		wait(1)
		SetOnline()
		wait(179)
		func17(getgenv().ConfigData)
		local obj28 = game
		getgenv().p1 = loadstring(obj28:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Hehehe"))()
	end
end)

pcall(function()
	if not game.Players.LocalPlayer:IsInGroup(12623064) then
		game:GetService("GroupService"):PromptJoinAsync(12623064)
	end
end)
