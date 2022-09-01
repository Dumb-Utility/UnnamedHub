

local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local use = game:GetService("RunService").Stepped:Connect(function()   end)
local use2 = game:GetService("RunService").Stepped:Connect(function()   end)

local sw = Window:AddFrame("Sword")

sw:AddButton("Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

sw:AddCheckBox("Use Sword", function() use:Disconnect() end, function() 
    use = game:GetService("RunService").Stepped:Connect(function()
game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
game:GetService("ReplicatedStorage").Events.UpdateData:InvokeServer()
    end)
end)

sw:AddButton("Buy Next", function() game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Swords") end)

local ba = Window:AddFrame("Backpack")

ba:AddButton("Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

ba:AddButton("Buy Next", function() game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Backpacks") end)

local gen = Window:AddFrame("General")

gen:AddButton("Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

gen:AddButton("Sell", function()
    local hi = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
     game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(game:GetService("Workspace").Locations.Sell.CFrame)
    wait(0.5)
     game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(hi)
    end)

gen:AddButton("To Boss Area", function() 
    game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(game:GetService("Workspace").Locations.ArenaBase.CFrame)
end)

gen:AddCheckBox("Boss Farm", function() use2:Disconnect() end, function() 
    use2 = game:GetService("RunService").Stepped:Connect(function()
      if not game:GetService("Workspace"):FindFirstChild("Boss") then return end
      if not game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then game:GetService("Players").LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool").Parent = game:GetService("Players").LocalPlayer.Character end
local items = game:GetService("Workspace").Boss.Clothing.LeftUpperLeg:GetChildren()
local randomItem = items[math.random(1, #items)]
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(randomItem.CFrame)
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").RemoteClick:FireServer()
    end)
end)
