-- https://www.roblox.com/games/5045567407/Nations-Roleplay

local LP = game:GetService("Players").LocalPlayer
local gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UI.lua"))()

gui.CreateGui()

AddFrame("Yes")

AddButton("Yes", "Change colors", function()
    local RGB = Color3.fromRGB(GetString("Yes", "RGB"))
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

AddTextBox("Yes", "RGB")
  
AddButton("Yes", "Just that yea", function() end)
