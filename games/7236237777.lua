local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local SpeedMul = 1

local use = game:GetService("RunService").Stepped:Connect(function()   end)

function Notify(title, message, color)
    SideColor3 = color
    if typeof(color) ~= "Color3" or color == nil then SideColor3 = nil end
    require(LP.PlayerScripts.UIFramework.NotificationSystem).CreateNotifiction.NewNotification({
		Text = message, -- Lower text
		Title = title, -- Upper text
		AccentColor = SideColor3 or Color3.new(0.243137, 0.231372, 0.227450), -- Color on the side
		Time = 6 -- Time until notification is gone
	});
end

local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local plr = Window:AddFrame("Player")
local car = Window:AddFrame("Vehicule")
local teleport = Window:AddFrame("Teleportation")


plr:AddButton("AutoClicker", function()
	if LP.PlayerScripts["Anti-Autoclicker"].Disabled == true then Notify("UnnamedHub - Notice", "Already disabled.") return end
LP.PlayerScripts["Anti-Autoclicker"].Disabled = true
Notify("UnnamedHub - Notice", "Anti Auto Clicker has been disabled.")
end)

plr:AddCheckBox("Gas Range+", function() use:Disconnect() use = nil Notify("UnnamedHub - Notice", "Infinite Gas Range disabled.") end, function()
    use = game:GetService("RunService").Stepped:Connect(function()
        if LP.Character == nil then LP.CharacterAdded:Wait() end
        local Character = LP.Character
        if Character:FindFirstChild("Gas") then
			if Character.Gas:FindFirstChild("Attach") and Character.Gas:IsA("Tool") then
			    Character.Gas.Attach:Destroy()
			end
		end
        end)

		Notify("UnnamedHub - Notice", "Infinite Gas Range enabled.")
end)

MoneyMod = plr:AddNumberBox("Get Money", function()
    local Money = MoneyMod:GetNumber() or 1
	if not LP.PlayerGui:FindFirstChild("GasUI") then Notify("UnnamedHub - Warning", "You need to interact with a gas station first !") return end

    LP.PlayerGui.GasUI.RemoteEvent:FireServer(nil, "Pay", Money * -1, 0)
end)

plr:AddButton("Respawn", function()
	local pos = LP.Character:GetPrimaryPartCFrame()
	local LPTeam = LP.Team.Name:lower()
    game:GetService("ReplicatedStorage").Client.SwitchTeam:FireServer(LPTeam)
	Notify("UnnamedHub - Notice", "Respawning...")
end)

plr:AddButton("Refresh", function()
	Notify("UnnamedHub - Notice", "Refreshing...")
	local pos = LP.Character:GetPrimaryPartCFrame()
	local LPTeam = LP.Team.Name:lower()
    game:GetService("ReplicatedStorage").Client.SwitchTeam:FireServer(LPTeam)
	e = LP.CharacterAdded:Connect(function()
		repeat task.delay() until LP.Character:FindFirstChild("HumanoidRootPart")
		LP.Character:SetPrimaryPartCFrame(pos)
		e:Disconnect()
	end)

end)

----------------------------------------------------------------------------------------

car:AddButton("Car GodMode", function()
    
if not game:GetService("Workspace").Vehicles:FindFirstChild(game:GetService("Players").LocalPlayer.Name.."'s Car") then Notify("UnnamedHub - Notice", "No owned car found.") return end


if not game:GetService("Workspace").Vehicles[game:GetService("Players").LocalPlayer.Name.."'s Car"].Body["Vehicle Damage Model"].Main:FindFirstChild("TouchInterest") then Notify("UnnamedHub - Notice", "Car is already god-modded.") return end

game:GetService("Workspace").Vehicles[game:GetService("Players").LocalPlayer.Name.."'s Car"].Body["Vehicle Damage Model"].Main.TouchInterest:Destroy()
Notify("UnnamedHub - Notice", "Car has been godmodded.")
end)

CarMod = car:AddNumberBox("Mod Speed", function()
    SpeedMul = CarMod:GetNumber() or 1
    Notify("UnnamedHub - Notice", "Changed Car Speed.")
end)

GasMod = car:AddNumberBox("Get Gas", function()
    local Gas = GasMod:GetNumber() or 1
	if not LP.PlayerGui:FindFirstChild("GasUI") then Notify("UnnamedHub - Notice", "You need to interact with a gas station first !") return end

    LP.PlayerGui.GasUI.RemoteEvent:FireServer(nil, "Pay", 0, Gas)

    Notify("UnnamedHub - Notice", "Gas Added")
end)

PlayerCar = car:AddTextBox("Player Name")

function GetCar()
	local player = PlayerCar:GetString()
	print(player)

	for _, australia in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(australia.Name), 0, string.len(player)) == string.lower(player) then
            player = australia.Name
		end
	end

	local found = false
	local car = nil

	for _,v in pairs(game:GetService("Workspace").Vehicles:GetChildren()) do
		print(v)
		if v:FindFirstChild(player.."'s Car") then
			found = true
			car = v
		end
	end

	if found == false then
		for _,v in pairs(game:GetService("Workspace").Vehicles:GetChildren()) do
			if v.Configuration.Owner.Value == player then
				found = true
				car = v
			end
		end
	end

	if found == false then warn("No car found") return nil end

	print(car)
    return car
end

car:AddButton("Fix Car", function()
	local car = GetCar()
	if car == nil then Notify("UnnamedHub - Notice", "You must input a valid player name.") return end
	Notify("UnnamedHub - Notice", "Vehicule Fixed.")
	car.Broke.Value = false
end)

car:AddButton("Get ownership", function()
	local car = GetCar()
	if car == nil then Notify("UnnamedHub - Notice", "You must input a valid player name.") return end
	car.Configuration.Owner.Value = LP.Name
	Notify("UnnamedHub", "Car owner has changed.")
end)

car:AddButton("Horn", function()
	local car = GetCar()
	if car == nil then Notify("UnnamedHub - Notice", "You must input a valid player name.") return end
	if not car:FindFirstChild("Horn") then Notify("UnnamedHub - Notice", "The user's car isn't supported yet.") return end
	car.Horn:FireServer("Horn", true)
end)



Notify("Unnamed Hub - Loader", "Press Right Shift to open the gui")

--------------------------------------------

local met = getrawmetatable(game)
setreadonly(met,false)
local old = met.__newindex
met.__newindex = function(t,k,v)
   if tostring(t) == "#AV" then
       if k == "angularvelocity" or k == "maxTorque" then
          return old(t,k,Vector3.new(v.X*SpeedMul,v.Y*SpeedMul,v.Z*SpeedMul))
       end
   end
   return old(t,k,v)
end
