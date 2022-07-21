local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

local use = game:GetService("RunService").Stepped:Connect(function()   end)
local use2 = game:GetService("RunService").Stepped:Connect(function()   end)
local use3 = game:GetService("RunService").Stepped:Connect(function()   end)

function GetPlayer(player: string)
    if not type(player) == "string" then return end
    player = player:lower()
    local Plr = {}
if player == "all" then
        for _, User in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Plr, User)
     end        
elseif player == "others" then
        for _, User in pairs(game:GetService("Players"):GetPlayers()) do
            if User == game:GetService("Players").LocalPlayer then continue end
            table.insert(Plr, User)
        end
else       
    for _, User in pairs(game:GetService("Players"):GetPlayers()) do
           if string.sub(string.lower(User.Name), 0, string.len(player)) == string.lower(player) then
                  table.insert(Plr, User)
           end
    end
end
    return Plr
end 

function SetTime(Player: Player, Time: number)
    if not Player:IsA("Player") or Player == nil then return end
    if Player == LP then
        ReplicatedStorage.StarterTime:FireServer(Time)
    else
        if type(Time) == "number" then Time = tostring(Time) end
        if not type(Time) == "string" then return end
        ReplicatedStorage.GiveTime:FireServer(Player.Name, Time)
    end
end

function KickPlayer(Player: Player)
    if not Player:IsA("Player") or Player == nil or Player == LP then return end
       ReplicatedStorage.KickPlayer:FireServer(Player.Name)
end

local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local plr = Window:AddFrame("Game")

plr:AddButton("Infinite Time", function()
    SetTime(LP, math.huge)
end)

User = plr:AddTextBox("Player") 
GiveTime = plr:AddTextBox("Time To Give")

plr:AddButton("Give Time", function()
    local Tim = GiveTime:GetString()
    if User:GetString() == nil or User:GetString() == "" then
        return 
    end
    if Tim == nil then return end
    local Old = LP["3456trewejfhgjfijfhngkmfjhsjkf9oekro0irtkr4tuyjd"].value
    SetTime(LP, math.huge)
    wait()
    local Player = GetPlayer(User:GetString())
    if Player == nil or Player == {} then return end
    for _, v in pairs(Player) do
        SetTime(v, Tim)
        wait()
        SetTime(LP, math.huge)
    end
    wait()
    SetTime(LP,Old)
end)

plr:AddButton("Kick", function()
    local Player = GetPlayer(User:GetString())
    if Player == nil or Player == {} then return end
    for _, v in pairs(Player) do
        if v.Name == LP.Name then continue end
        KickPlayer(v)
    end
end)
