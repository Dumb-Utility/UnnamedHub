-- https://www.roblox.com/games/7014716500/Pro-Border

function notify(Message)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "UnnamedHub Beta";
		Text = Message;
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
end

local LP = game:GetService("Players").LocalPlayer
local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

notify("This script isn't completed yet.")

local Window = gui:CreateGui()

local team = Window:AddFrame("Teams")

team:AddButton("Civilian", function() game:GetService("ReplicatedStorage").RemoteEvents.UpdateTeam:FireServer("Civilian") LP.Character:WaitForChild("Humanoid").Health = 0 end)

team:AddButton("Facility Director", function() game:GetService("ReplicatedStorage").RemoteEvents.UpdateTeam:FireServer("FacilityDirector") LP.Character:WaitForChild("Humanoid").Health = 0 end)

team:AddButton("Guard", function() game:GetService("ReplicatedStorage").RemoteEvents.UpdateTeam:FireServer("SecurityGuard") LP.Character:WaitForChild("Humanoid").Health = 0 end)

team:AddButton("Medic", function() game:GetService("ReplicatedStorage").RemoteEvents.UpdateTeam:FireServer("MedicalStaff") LP.Character:WaitForChild("Humanoid").Health = 0 end)

team:AddButton("Engineer", function() game:GetService("ReplicatedStorage").RemoteEvents.UpdateTeam:FireServer("MaintenanceCrew") LP.Character:WaitForChild("Humanoid").Health = 0 end)

team:AddButton("Scientist", function() game:GetService("ReplicatedStorage").RemoteEvents.UpdateTeam:FireServer("Scientist") LP.Character:WaitForChild("Humanoid").Health = 0 end)

team:AddButton("Task Force", function() game:GetService("ReplicatedStorage").RemoteEvents.UpdateTeam:FireServer("EmergencyResponse") LP.Character:WaitForChild("Humanoid").Health = 0 end)

local gun = Window:AddFrame("Gun")
gun:AddButton("Mod Guns", function()
for _,v in pairs(LP.Backpack:GetChildren()) do
  if v:IsA("Tool") and v:FindFirstChild("ToolType") then
    if v.ToolType.Value == "Gun" then	
local gun = v.ToolType
gun.Auto.Value = true
gun.MaxAmmo.Value = math.huge
gun.ReserveAmmo.Value = math.huge
    end
  end
end
end)
