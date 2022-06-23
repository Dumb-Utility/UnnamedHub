-- https://www.roblox.com/games/5045567407/Nations-Roleplay

local LP = game:GetService("Players").LocalPlayer
local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

local Window = gui:CreateGui()

local y = Window:AddFrame("Yes")

function StringToRGB(text)
local length1=string.find(text,",")
length1=length1-1
local num1=string.sub(text,1,length1)
local length2=string.find(text,",",length1+2)
length2=length2-1
local num2=string.sub(text,length1+2,length2)
local num3=string.sub(text,length2+2,string.len(text))
local color=num1,num2,num3
    -- print("[StringToRGB] =>", color)
return color
end

y:AddButton("Change colors", function()
       -- print("[RGB STRING] =>", GetString("Yes", "RGB"))
    local RGB = StringToRGB(r:GetString())
       -- print("[RGB] =>", RGB)
    if not LP.Character:FindFirstChild("PaintBucket") then LP.Backpack.PaintBucket.Parent = LP.Character warn("Auto equipped the PaintBucket") end

for i, v in pairs(game:GetService("Workspace").Provinces:GetChildren()) do
   task.spawn(function()
   local args = {
       [1] = "PaintPart",
       [2] = {
           ["Part"] = v,
           ["Color"] = Color3.fromRGB(RGB)
       }
   }
   
   -- Double check cuz I felt like it
   if not LP.Character:FindFirstChild("PaintBucket") then LP.Backpack.PaintBucket.Parent = LP.Character warn("Auto equipped the PaintBucket") end
   
   LP.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))
   end)
  end
end)

r = y:AddTextBox("RGB")
  
y:AddButton("Just that yea", function() end)

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
