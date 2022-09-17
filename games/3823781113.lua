

local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local LP = game:GetService("Players").LocalPlayer
local DJ = false
local use = game:GetService("RunService").Stepped:Connect(function()   end)
local use2 = game:GetService("RunService").Stepped:Connect(function()   end)

local sw = Window:AddFrame("Sword")

sw:AddButton("Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

sw:AddCheckBox("Use Sword", function(state) 
    if state == false then
        use:Disconnect() 
        return
    end
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

gen:AddButton("Remove Warning", function()
    local x = LP.PlayerGui.Gui.Submenus.BackpackFull
    x:GetPropertyChangedSignal("Visible"):Connect(function()
        x.Visible = false
    end)
end)

gen:AddButton("Sell", function()
    local hi = LP.Character:GetPrimaryPartCFrame()
    LP.Character:SetPrimaryPartCFrame(game:GetService("Workspace").Locations.Sell.CFrame)
    wait(0.5)
    LP.Character:SetPrimaryPartCFrame(hi)
end)

gen:AddButton("To Boss Area", function() 
    LP.Character:SetPrimaryPartCFrame(game:GetService("Workspace").Locations.ArenaBase.CFrame)
end)

gen:AddCheckBox("Infinite Jump", function(state)
    DJ = state
end)

local Farm = Window:AddFrame("Farming")

Farm:AddButton("Unlock Islands", function()
    for _,v in pairs(workspace.IslandDoors:GetChildren()) do
        if not v:FindFirstChild("P2") then continue end
        if workspace.Locations.Islands:FindFirstChild(v.Name) then continue end
        if game.Players.LocalPlayer.GameplayPaused == true then
        repeat wait() until game.Players.LocalPlayer.GameplayPaused == false
        wait()
        end
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.P2.Value)
        wait()
        end
end)

Farm:AddButton("Capture Flags", function()
    local Char = LP.Character
    for _,v in pairs(workspace.Flags:GetChildren()) do
        local Own = v.OwnerValue
        if not v:FindFirstChild("Base") then return end
        if Own.Value == LP.Name then continue end
        Char:SetPrimaryPartCFrame(v.Base.CFrame)
        repeat
            if Char.Humanoid.Health < 0 then warn("Humanoid died !") return end
            wait()
        until Own.Value == LP.Name 
        wait(10)
    end
end)


Farm:AddCheckBox("Boss Farm", function(state)
    if state == false then
        use2:Disconnect()
        return
    end 
    use2 = game:GetService("RunService").Stepped:Connect(function()
            if not game:GetService("Workspace"):FindFirstChild("Boss") then return end
            if not LP.Character:FindFirstChildWhichIsA("Tool") then LP.Backpack:FindFirstChildWhichIsA("Tool").Parent = LP.Character end
            local items = game:GetService("Workspace").Boss.Clothing.LeftUpperLeg:GetChildren()
            local randomItem = items[math.random(1, #items)]
            LP.Character:SetPrimaryPartCFrame(randomItem.CFrame)
            LP.Character:FindFirstChildWhichIsA("Tool").RemoteClick:FireServer()
    end)
end)


local target = LP.PlayerScripts["Double Jump"].MaxJumps
local OldIndex
OldIndex = hookmetamethod(game, "__index", function(Self, Key)
if not checkcaller() and Self == target and DJ == true then
if Key == "Value" then
    return math.huge
end
end
return OldIndex(Self, Key)
end)
