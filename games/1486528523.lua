local CarLocked = true
local CanPaint = false
local SpeedMul = 1
local Stealer = false
local Old
local stealing = false
local currentSteal

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local Camera = game:GetService("Workspace").Camera
local mouse = LP:GetMouse()

local CarESP = false

local api = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Error-Cezar/Roblox-Scripts/main/API.lua")) ()

function notify(Message)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "UnnamedHub Beta";
		Text = Message;
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
end

if not setreadonly or not getrawmetatable then
    notify("Your exploit does not support this script.")
    return
end


function Click()
    if Stealer == false then return end
    local touch = mouse.Target
    local vehicule = nil
    local seat = nil
    local a = touch
    local found = false
    repeat 
        if a.Parent == game:GetService("Workspace") then error("no car found") return end
        if a:FindFirstChild("DriveSeat") and a:FindFirstChild("A-Chassis Tune") then vehicule = a
            found = true
        else
            a = a.Parent
        end
    until found == true
    if not vehicule then error("no car") return end
    seat = vehicule:FindFirstChild("DriveSeat") 
    if seat.Occupant ~= nil then error("seat not avaiable") return end
      if seat.Occupant == nil then
        currentSteal = vehicule
        stealing = true
        seat:Sit(LP.Character.Humanoid)
    seat:GetPropertyChangedSignal("Occupant"):Connect(function()
        repeat wait() until LP.Character.Humanoid.Jump == true
        wait()
        stealing = false   
        LP.Character:SetPrimaryPartCFrame(Old)
        LP.Character.Humanoid.WalkSpeed = 0
        Camera.CameraSubject = vehicule
           
    end)
      end
end
    
    mouse.Button1Down:connect(Click)

    local function autoJump()
        local Char = LP.Character
        local Human = Char:FindFirstChild("Humanoid")
		if Char and Human then
			local check1 = workspace:FindPartOnRay(Ray.new(Human.RootPart.Position-Vector3.new(0,1.5,0), Human.RootPart.CFrame.lookVector*3), Human.Parent)
			local check2 = workspace:FindPartOnRay(Ray.new(Human.RootPart.Position+Vector3.new(0,1.5,0), Human.RootPart.CFrame.lookVector*3), Human.Parent)
			if (check1 or check2) and stealing == true then
				Human.Jump = true
			end
		end
	end
	autoJump()

    game:GetService("RunService").RenderStepped:Connect(autoJump)

--------------------------------------------

local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local car = Window:AddFrame("Vehicule")

car:AddButton("Unlock cars", function()
    CarLocked = false
end)

car:AddButton("Lock cars", function()
    CarLocked = true
end)

CarMod = car:AddNumberBox("Mod Speed", function()
    SpeedMul = CarMod:GetNumber() or 1
    notify("Done.")
end)

car:AddButton("Car ESP", function()
    CarESP = not CarESP
    print(CarESP)
    if CarESP == true then
        for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == "Look Ma, A Car!" and v:IsA("Model") then
                local car = v:FindFirstChildWhichIsA("Model")
                api:PartEsp(true, car)
            end
        end
    else
        api:PartEsp(false)
    end
end)

car:AddButton("Car Stealer", function()
    Stealer = not Stealer
    notify("Car stealed has been set to "..tostring(Stealer))
end)

local plr = Window:AddFrame("Local Player")

plr:AddButton("Die", function()
    LP.Character.Humanoid.Health = 0
    end)

ws = plr:AddNumberBox("Walkspeed", function()
    LP.Character.Humanoid.WalkSpeed = ws:GetNumber()
end)

-- game:GetService("Players").ErrorCezar.Backpack["BERETTA M9A3"].ConfigMods.CConfig

spectate = plr:AddTextBox("Spectate")

plr:AddButton("Spectate", function()
    local hi = false 
    local Player = spectate:GetString()
    for _, australia in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(australia.Name), 0, string.len(Player)) == string.lower(Player) then
            Camera.CameraSubject = australia.Character
            hi = true
		end
	end

    if hi == false then notify("No player found.") end

end)

plr:AddButton("Unspectate", function() 
    Camera.CameraSubject = LP.Character
end)

--------------------------------------------

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
    local args = { ... }
    local method = getnamecallmethod()
    if method == "FireServer" then
        if self.Name == "SpawnCar" then
            print(CanPaint)
            print(CarLocked)
            if CarLocked == false then
                if args[1] ~= "SpawnCar" and args[1] ~= "Selected" then args[1] = "SpawnCar" end
            end
        end
    end
    return old(self, unpack(args))
end)
--setreadonly(mt, true)


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
