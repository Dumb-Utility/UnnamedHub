

local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

gui.CreateGui()

--notify("Press Right Shift to show the ui")

local use = game:GetService("RunService").Stepped:Connect(function()   end)
local use2 = game:GetService("RunService").Stepped:Connect(function()   end)

AddFrame("Sword")

AddButton("Sword", "Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

AddCheckBox("Sword", "Use Sword", function() use:Disconnect() end, function() 
    use = game:GetService("RunService").Stepped:Connect(function()
game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
game:GetService("ReplicatedStorage").Events.UpdateData:InvokeServer()
    end)
end)

AddButton("Sword", "Buy Next", function() game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Swords") end)

AddFrame("Backpack")

AddButton("Backpack", "Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

AddButton("Backpack", "Buy Next", function() game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Backpacks") end)

AddFrame("General")

AddButton("General", "Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

AddButton("General", "Sell", function()
    local hi = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
     game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(game:GetService("Workspace").Locations.Sell.CFrame)
    wait(0.5)
     game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(hi)
    end)

AddButton("General", "To Boss Area", function() 
    game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(game:GetService("Workspace").Locations.ArenaBase.CFrame)
end)

AddCheckBox("General", "Boss Farm", function() use2:Disconnect() end, function() 
    use2 = game:GetService("RunService").Stepped:Connect(function()
      if not game:GetService("Workspace"):FindFirstChild("Boss") then return end
      if not game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then game:GetService("Players").LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool").Parent = game:GetService("Players").LocalPlayer.Character end
local items = game:GetService("Workspace").Boss.Clothing.LeftUpperLeg:GetChildren()
local randomItem = items[math.random(1, #items)]
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(randomItem.CFrame)
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").RemoteClick:FireServer()
    end)
end)
