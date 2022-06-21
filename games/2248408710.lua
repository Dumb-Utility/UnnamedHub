
local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local la = Window:AddFrame("Launcher")
la:AddButton("Remove Cooldown", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.Cooldown = 0
end)

RocketSpeed = la:AddNumberBox("Rocket Speed", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.RocketSpeed = RocketSpeed:GetNumber()
end)

NumberThing = la:AddNumberBox("Launcher", "Rockets", function() 
    local a = require(game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats)
    a.ShotgunAmount = NumberThing:GetNumber()
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

gen:AddButton("Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

Levels = gen:AddNumberBox("Add Levels", function() 
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, Levels:GetNumber())
end)

Coins = gen:AddNumberBox("Add Coins", function() 
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, Coins:GetNumber())
end)
