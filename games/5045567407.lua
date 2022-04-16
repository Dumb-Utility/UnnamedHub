-- https://www.roblox.com/games/5045567407/Nations-Roleplay

local LP = game:GetService("Players").LocalPlayer
local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

gui.CreateGui()

AddFrame("Yes")

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

AddButton("Yes", "Change colors", function()
       -- print("[RGB STRING] =>", GetString("Yes", "RGB"))
    local RGB = StringToRGB(GetString("Yes", "RGB"))
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

AddTextBox("Yes", "RGB")
  
AddButton("Yes", "Just that yea", function() end)

AddTextBox("Yes", "Player Name")
AddTextBox("Yes", "Text")

AddButton("Yes", "Change Name", function()
local Player = GetString("Yes", "Player Name")
local NewName = GetString("Yes", "Text")
for _, australia in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(australia.Name), 0, string.len(Player)) == string.lower(Player) then
			local hi = australia.Character:FindFirstChild:FindFirstChildWhichIsA("Model")
			hi.ServerHandler:FireServer(NewName)
		end
	end
end)
