local whitelist = {
    "a2", 
    "a1", 
    "a3", 
    "a4", 
    "Amethyst_Noob", 
    "1233XxTomixxX1233", 
    "Indexell", 
    "Sahba12y", 
    "LegitDoors001", 
    "wompwompnodadnomom"
}

local player = game.Players.LocalPlayer

if table.find(whitelist, player.Name) then
    player:Kick("nuh uh blacklisted noob")
end

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Terror mode succesfully executed.",true)
wait(3)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Recommended to execute on door 0.",true)
wait(3)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Terror mode will load. Please wait while it does. Loading assets each by each.",true)
wait(3)

--[[

	NOTICEMENT!!!! (READ)
		YOU ARE ALLOWED TO PUBLISH IT AT YOUR SERVER.
		YOU ARE ALLOWED TO MODIFY IT BUT YOU ARE NOT ALLOWED TO PUBLISH MODIFIED VERSION.
		Authorized People (can do anything): BasicallyAlex#8579, MuhammadGames#0017, Seek#4541, yessir12112131#0628
		I recommend you publishing this script with loadstring.
		MADE BY iCherryKardess#0001

]]

-- Noticement
--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Script made by iCherryKardes. You might need to reexecute if you are at door 51.")

local Candle = game:GetObjects("rbxassetid://11630702537")[1]
		Candle.Parent = game.Players.LocalPlayer.Backpack
		local plr = game.Players.LocalPlayer
		local Char = plr.Character or plr.CharacterAdded:Wait()
		local Hum = Char:FindFirstChild("Humanoid")
		local RightArm = Char:FindFirstChild("RightUpperArm")
		local LeftArm = Char:FindFirstChild("LeftUpperArm")
		local RightC1 = RightArm.RightShoulder.C1
		local LeftC1 = LeftArm.LeftShoulder.C1
		local AnimIdle = Instance.new("Animation")
		AnimIdle.AnimationId = "rbxassetid://9982615727"
		AnimIdle.Name = "IDleloplolo"
		local cam = workspace.CurrentCamera
		Candle.Handle.Top.Flame.GuidingLighteffect.EffectLight.LockedToPart = true
		Candle.Handle.Material = Enum.Material.Salt
		local track = Hum.Animator:LoadAnimation(AnimIdle)
		track.Looped = true
		local Equipped = false
		for i, v in pairs(Candle:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
			if v:IsA("Light") then
			    v.Range = 30
		        v.Brightness += 1
			end
		end
		Candle.Equipped:Connect(function()
			for _, v in next, Hum:GetPlayingAnimationTracks() do
				v:Stop()
			end
			Equipped = true
        -- RightArm.Name = "R_Arm"
			track:Play()
        -- RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
		end)
		Candle.Unequipped:Connect(function()
			RightArm.Name = "RightUpperArm"
			track:Stop()
			Equipped = false
        -- RightArm.RightShoulder.C1 = RightC1
		end)
		cam.ChildAdded:Connect(function(screech)
			if screech.Name == "Screech" then
				if not Equipped then
					return
				end
				if Equipped then
					game:GetService("Debris"):AddItem(screech, 0.05)
				end
			end
		end)
		Candle.TextureId = "rbxassetid://89978023786816"

Candle.Parent = game.Players.LocalPlayer.Backpack

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded candle.",true)
wait(1)

local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")

local function spookify(part)
   if part:IsDescendantOf(Players.LocalPlayer.Character) then
      return
   end
end

for _, v in pairs(game:GetDescendants()) do
   spookify(v)
end

game.DescendantAdded:Connect(function(v)
   spookify(v)
end)

Lighting.Ambient = Color3.fromRGB(20, 0, 0)
Lighting.OutdoorAmbient = Color3.fromRGB(5, 0, 0)
Lighting.Brightness = 0.3
Lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
Lighting.ColorShift_Top = Color3.fromRGB(50, 0, 0)
Lighting.FogColor = Color3.fromRGB(20, 0, 0)
Lighting.FogEnd = 50
Lighting.FogStart = 10
Lighting.EnvironmentSpecularScale = 0
Lighting.ExposureCompensation = -0.5

local bloom = Instance.new("BloomEffect", Lighting)
bloom.Intensity = 2
bloom.Threshold = 0.7
bloom.Size = 24

local blur = Instance.new("BlurEffect", Lighting)
blur.Size = 4

local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://844208899"
sound.Volume = 0.05
sound.Looped = true
sound:Play()

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded ambience.",true)
wait(1)

local imageId = "rbxassetid://109612716769779"
local soundId = "rbxassetid://3619734707"
local Players = game:GetService("Players")
local lastFlashTime = 0

local function flashImage()
    local screenGui = Instance.new("ScreenGui", Players.LocalPlayer.PlayerGui)
    local imageLabel = Instance.new("ImageLabel", screenGui)
    imageLabel.Size = UDim2.new(0, 200, 0, 200)
    imageLabel.Position = UDim2.new(0.5, -100, 0.5, -100)
    imageLabel.Image = imageId
    imageLabel.BackgroundTransparency = 1
    imageLabel.Visible = true

    local sound = Instance.new("Sound", workspace)
    sound.SoundId = soundId
    sound:Play()

    wait(0.1)
    sound:Stop()
    screenGui:Destroy()
end

game:GetService("RunService").Heartbeat:Connect(function()
    local currentTime = tick()
    if currentTime - lastFlashTime >= 30 then
        lastFlashTime = currentTime
        flashImage()
    end
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded fakeout.",true)
wait(1)

local imageId = "rbxassetid://110811029376157"
local soundId = "rbxassetid://72206182804682"
local Players = game:GetService("Players")

local screenGui = Instance.new("ScreenGui", Players.LocalPlayer.PlayerGui)
local imageLabel = Instance.new("ImageLabel", screenGui)
imageLabel.Size = UDim2.new(1.5, 0, 1.5, 0)
imageLabel.Position = UDim2.new(-0.25, 0, -0.25, 0)
imageLabel.Image = imageId
imageLabel.BackgroundTransparency = 1
imageLabel.Visible = true

local sound = Instance.new("Sound", workspace)
sound.SoundId = soundId
sound:Play()

wait(2)
sound:Stop()
screenGui:Destroy()

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded static.",true)
wait(1)

local currentRooms = game.Workspace:WaitForChild("CurrentRooms")
local soundId = "rbxassetid://7227570135"
local soundPlayed = false

local function checkModels()
    local modelsToCheck = {"14", "44", "57", "88"}
    for _, modelName in ipairs(modelsToCheck) do
        if currentRooms:FindFirstChild(modelName) and not soundPlayed then
            soundPlayed = true
            local sound = Instance.new("Sound", workspace)
            sound.SoundId = soundId
            sound:Play()
            task.wait(3)
            sound:Destroy()

            local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

            local entity = spawner.Create({
                Entity = {
                    Name = "Xreaper",
                    Asset = "https://github.com/Idk-lol2/Xreaper/raw/refs/heads/main/Xreaper.rbxm?raw=true?raw=true",
                    HeightOffset = 0
                },
                Lights = {
                    Flicker = {
                        Enabled = false,
                        Duration = 10
                    },
                    Shatter = false,
                    Repair = false
                },
                Earthquake = {
                    Enabled = false
                },
                CameraShake = {
                    Enabled = true,
                    Range = 100,
                    Values = {2, 30, 0.5, 3}
                },
                Movement = {
                    Speed = 450,
                    Delay = 5,
                    Reversed = false
                },
                Rebounding = {
                    Enabled = false,
                    Type = "Ambush",
                    Min = 1,
                    Max = 2,
                    Delay = 2
                },
                Damage = {
                    Enabled = true,
                    Range = 40,
                    Amount = 250
                },
                Crucifixion = {
                    Enabled = true,
                    Range = 40,
                    Resist = true,
                    Break = true
                },
                Death = {
                    Type = "Guiding",
                    Hints = {"So... You've died to XReaper.", "An alert will play.", "If you hear it , hide.", "Do not get out until he is gone. The hotel is a hard place!"},
                    Cause = ""
                }
            })

            entity:Run()
            task.wait(30)

            local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/fix%20bage.txt"))()

            achievementGiver({
                Title = "Leaper",
                Desc = "Is that guy crazy?",
                Reason = "Survive XReaper.",
                Image = "rbxassetid://116133585929674"
            })
        end
    end
end

game:GetService("RunService").Heartbeat:Connect(function()
    checkModels()
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded XReaper.",true)
wait(1)

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.ResetOnSpawn = false

local imageLabel = Instance.new("ImageLabel", screenGui)
imageLabel.Size = UDim2.new(1.5, 0, 1.5, 0)
imageLabel.Position = UDim2.new(-0.25, 0, -0.25, 0)
imageLabel.Image = "rbxassetid://122909277867535"
imageLabel.BackgroundTransparency = 1
imageLabel.Visible = true
imageLabel.ImageTransparency = 0.3

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded coverup.",true)
wait(1)

local currentRooms = game.Workspace:WaitForChild("CurrentRooms")

currentRooms.ChildAdded:Connect(function(child)
    if child.Name == "98" or child.Name == "92" or child.Name == "96" or child.Name == "93" then
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Nightmare Rush",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/NightmareRush.rbxm?raw=true",
                HeightOffset = 0
            },
            Lights = {
                Flicker = {
                    Enabled = true,
                    Duration = 30
                },
                Shatter = true,
                Repair = false
            },
            Earthquake = {
                Enabled = true
            },
            CameraShake = {
                Enabled = true,
                Range = 150,
                Values = {5, 5, 1, 1}
            },
            Movement = {
                Speed = 290,
                Delay = 15,
                Reversed = false
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 1,
                Max = 3,
                Delay = 6
            },
            Damage = {
                Enabled = true,
                Range = 40,
                Amount = 175
            },
            Crucifixion = {
                Enabled = true,
                Range = 40,
                Resist = false,
                Break = true
            },
            Death = {
                Type = "Guiding",
                Hints = {"Truly a terror, isn't it?", "You've died to nightmare rush...", "Signs are displayed and it's fast.", "Use what you learned from ambush!"},
                Cause = ""
            }
        })

        entity:Run()
        wait(45)

        local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/fix%20bage.txt"))()

        achievementGiver({
            Title = "Terrorifying",
            Desc = "GET OUT-",
            Reason = "Survive Nightmare Rush.",
            Image = "rbxassetid://89066122172432"
        })
    end
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded nightmare rush.",true)
wait(1)

local imageId = "rbxassetid://110811029376157"
local soundId = "rbxassetid://72206182804682"
local Players = game:GetService("Players")

local currentRooms = game.Workspace:WaitForChild("CurrentRooms")

currentRooms.ChildAdded:Connect(function(child)
    if child.Name == "18" or child.Name == "11" or child.Name == "67" or child.Name == "47" then
        local screenGui = Instance.new("ScreenGui", Players.LocalPlayer.PlayerGui)
        local imageLabel = Instance.new("ImageLabel", screenGui)
        imageLabel.Size = UDim2.new(1.5, 0, 1.5, 0)
        imageLabel.Position = UDim2.new(-0.25, 0, -0.25, 0)
        imageLabel.Image = imageId
        imageLabel.BackgroundTransparency = 1
        imageLabel.Visible = true

        local sound = Instance.new("Sound", workspace)
        sound.SoundId = soundId
        sound:Play()

        wait(0.7)
        sound:Stop()
        screenGui:Destroy()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teilsthebfdifan/Modhub-assets/refs/heads/main/GlitchRushSpawn"))()
    end
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded another rush.",true)
wait(1)

local currentRooms = game.Workspace:WaitForChild("CurrentRooms")

currentRooms.ChildAdded:Connect(function(child)
    if child.Name == "41" or child.Name == "65" then
    
        for _, descendant in pairs(currentRooms:GetDescendants()) do
    if descendant:IsA("PointLight") or descendant:IsA("SpotLight") or descendant:IsA("SurfaceLight") then
        descendant:Destroy()
    end
end
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Depth",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Depth.rbxm?raw=true",
                HeightOffset = 0
            },
            Lights = {
                Flicker = {
                    Enabled = false,
                    Duration = 30
                },
                Shatter = true,
                Repair = false
            },
            Earthquake = {
                Enabled = true
            },
            CameraShake = {
                Enabled = true,
                Range = 150,
                Values = {5, 5, 1, 1}
            },
            Movement = {
                Speed = 650,
                Delay = 5,
                Reversed = false
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 6,
                Max = 12,
                Delay = 1
            },
            Damage = {
                Enabled = true,
                Range = 40,
                Amount = 175
            },
            Crucifixion = {
                Enabled = true,
                Range = 40,
                Resist = false,
                Break = true
            },
            Death = {
                Type = "Guiding",
                Hints = {"Truly a terror, isn't it?", "You've died to depth...", "Lights turn dark when it comes..", "Use what you learned from ambush!"},
                Cause = ""
            }
        })

        entity:Run()
        wait(45)

        local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/fix%20bage.txt"))()

        achievementGiver({
            Title = "Depth of deepness",
            Desc = "Maybe the cave wasn't the place...",
            Reason = "Survive Depth.",
            Image = "rbxassetid://134838125333812"
        })
    end
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded depth.",true)
wait(1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAcceleration/Comet-Development/refs/heads/main/Doors/Game/PlayerHealthbars.lua"))()

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded healthbar.",true)
wait(1)

local currentRooms = game.Workspace:WaitForChild("CurrentRooms")

currentRooms.ChildAdded:Connect(function(child)
    if child.Name == "51" or child.Name == "101" then
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Silence",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Silence.rbxm?raw=true",
                HeightOffset = 0
            },
            Lights = {
                Flicker = {
                    Enabled = false,
                    Duration = 30
                },
                Shatter = true,
                Repair = false
            },
            Earthquake = {
                Enabled = true
            },
            CameraShake = {
                Enabled = false,
                Range = 150,
                Values = {5, 5, 1, 1}
            },
            Movement = {
                Speed = 30,
                Delay = 3,
                Reversed = false
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 6,
                Max = 12,
                Delay = 3
            },
            Damage = {
                Enabled = true,
                Range = 8,
                Amount = 10
            },
            Crucifixion = {
                Enabled = true,
                Range = 40,
                Resist = false,
                Break = true
            },
            Death = {
                Type = "Guiding",
                Hints = {"Truly a terror, isn't it?", "You've died to silence.", "It causes trouble at door 50 and 100..", "Don't be near it!"},
                Cause = ""
            }
        })

        entity:Run()
        wait(180)

        local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/fix%20bage.txt"))()

        achievementGiver({
            Title = "Silencing whispers",
            Desc = "Not even itself can be quiet.",
            Reason = "Survive Silence.",
            Image = "rbxassetid://109612716769779"
        })
    end
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded silence.",true)
wait(1)

local currentRooms = game.Workspace:WaitForChild("CurrentRooms")

currentRooms.ChildAdded:Connect(function(child)
    if child.Name == "76" or child.Name == "70" then
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Paralysis",
                Asset = "https://github.com/Teilsthebfdifan/Modhub-assets/blob/main/idkhois.rbxm?raw=true",
                HeightOffset = 0
            },
            Lights = {
                Flicker = {
                    Enabled = true,
                    Duration = 3
                },
                Shatter = true,
                Repair = false
            },
            Earthquake = {
                Enabled = false
            },
            CameraShake = {
                Enabled = false,
                Range = 150,
                Values = {5, 5, 1, 1}
            },
            Movement = {
                Speed = 450,
                Delay = 15,
                Reversed = false
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 9,
                Max = 12,
                Delay = 0.2
            },
            Damage = {
                Enabled = true,
                Range = 50,
                Amount = 50
            },
            Crucifixion = {
                Enabled = true,
                Range = 40,
                Resist = false,
                Break = true
            },
            Death = {
                Type = "Guiding",
                Hints = {"Truly a terror, isn't it?", "You've died to paralysis.", "It is very fast and tricky..", "It rebounds , so pretend it's ambush!"},
                Cause = ""
            }
        })

        entity:Run()
        wait(70)

        local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/fix%20bage.txt"))()

        achievementGiver({
            Title = "nuh uh",
            Desc = "It's not the moment i will die1!",
            Reason = "Survive Paralysis.",
            Image = "rbxassetid://97447209528494"
        })
    end
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded paralysis.",true)
wait(1)

local currentRooms = game.Workspace:WaitForChild("CurrentRooms")

currentRooms.ChildAdded:Connect(function(child)
    if child.Name == "61" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/---%3D%3D%3D%3D%3D%3D%20a-60%20agresiv%20spawner%20%3D%3D%3D%3D%3D%3D---.txt"))()
    end
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded A-60.",true)
wait(1)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded everything.",true)
wait(5)

local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/fix%20bage.txt"))()

achievementGiver({
    Title = "Terror begins.",
    Desc = "You are not ready for this.",
    Reason = "Use Terror Mode.",
    Image = "rbxassetid://116133585929674"
})