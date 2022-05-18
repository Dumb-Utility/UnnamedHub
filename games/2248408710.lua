
local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local la = Window:AddFrame("Launcher")
la:AddButton("Remove Cooldown", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.Cooldown = 0
end)

la:AddNumberBox("Rocket Speed", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.RocketSpeed = GetNumber("Launcher", "Rocket Speed")
end)

la:AddNumberBox("Launcher", "Rockets", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.ShotgunAmount = GetNumber("Launcher", "Rockets")
end)


local bomb = Window:AddFrame("Bomb")
bomb:AddButton("Remove Cooldown", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Bomb.Stats)
    a.Cooldown = 0
end)

bomb:AddButton("Mod Bomb", function() 
  local a = require(game:GetService("Players").LocalPlayer.Backpack.Bomb.Stats)
    a.BlastRadius = 500
    a.BlastForce = 1000
end)



local gen = Window:AddFrame("General")

gen:AddButton("General", "Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

gen:AddNumberBox("General", "Add Levels", function() 
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, GetNumber("General", "Add Levels"))
end)

gen:AddNumberBox("General", "Add Coins", function() 
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, GetNumber("General", "Add Coins"))
end)
