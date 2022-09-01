-- https://www.roblox.com/games/5045567407/Nations-Roleplay

local LP = game:GetService("Players").LocalPlayer

function notify(Message)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "UnnamedHub";
		Text = Message;
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
end

local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local y = Window:AddFrame("Yes")

function StringToRGB(text)
local color = text:split(",", "")
if not #color == 3 then return nil end
local RG1 = color[1]
local RG2 = color[2]
local RG3 = color[3]
return Color3.fromRGB(RG1, RG2, RG3)
end

y:AddButton("Change colors", function()
       -- print("[RGB STRING] =>", GetString("Yes", "RGB"))
    local RGB = StringToRGB(r:GetString())
    if RGB == nil then notify("Format must be RGB value") return end
       -- print("[RGB] =>", RGB)
    if not LP.Character:FindFirstChild("PaintBucket") then LP.Backpack.PaintBucket.Parent = LP.Character warn("Auto equipped the PaintBucket") end

for i, v in pairs(game:GetService("Workspace").Provinces:GetChildren()) do
   task.spawn(function()
   local args = {
       [1] = "PaintPart",
       [2] = {
           ["Part"] = v,
           ["Color"] = RGB
       }
   }
   
   -- Double check cuz I felt like it
   if not LP.Character:FindFirstChild("PaintBucket") then LP.Backpack.PaintBucket.Parent = LP.Character warn("Auto equipped the PaintBucket") end
   
   LP.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))
   end)
  end
end)

r = y:AddTextBox("RGB")
  
y:AddButton(" ", function() end)

local p = y:AddTextBox("Player Name")
local t = y:AddTextBox("Text")

y:AddButton("Change Name", function()
local Player = string.lower(p:GetString())
local NewName = t:GetString()
local ok = false
if Player == "all" then
		ok = true
		for _,australia in pairs(game:GetService("Players"):GetPlayers()) do
		     	local hi = australia.Character:FindFirstChildWhichIsA("Model")
			hi.ServerHandler:FireServer(NewName)
		end
end
		
if Player == "others" then
		ok = true
		for _,australia in pairs(game:GetService("Players"):GetPlayers()) do
			   if v.Name ~= LP.Name then
		     	local hi = australia.Character:FindFirstChildWhichIsA("Model")
			hi.ServerHandler:FireServer(NewName)
			end
		end
end
	
if ok == false then
for _, australia in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(australia.Name), 0, string.len(Player)) == string.lower(Player) then
			local hi = australia.Character:FindFirstChildWhichIsA("Model")
			hi.ServerHandler:FireServer(NewName)
		end
	end
end
end)
