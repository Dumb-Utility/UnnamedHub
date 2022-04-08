
local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/WIP/main/UI.lua"))()

gui.CreateGui()

AddFrame("Launcher")
AddButton("Launcher", "Remove Cooldown", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.Cooldown = 0
end)

AddNumberBox("Launcher", "Rocket Speed", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.RocketSpeed = GetNumber("Launcher", "Rocket Speed")
end)

AddNumberBox("Launcher", "Rockets", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.ShotgunAmount = GetNumber("Launcher", "Rockets")
end)


AddFrame("Bomb")
AddButton("Bomb", "Remove Cooldown", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Bomb.Stats)
    a.Cooldown = 0
end)

AddButton("Bomb", "Mod Bomb", function() 
  local a = require(game:GetService("Players").LocalPlayer.Backpack.Bomb.Stats)
    a.BlastRadius = 500
    a.BlastForce = 1000
end)



AddFrame("General")

AddButton("General", "Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

AddNumberBox("General", "Add Levels", function() 
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, GetNumber("General", "Add Levels"))
end)

AddNumberBox("General", "Add Coins", function() 
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, GetNumber("General", "Add Coins"))
end)
