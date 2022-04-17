if not game:IsLoaded() then game.Loaded:Wait() end

local DevBuild = false
local loaded = false
local AlreadyLoaded = false

for _,v in pairs(game:GetService("CoreGui"):GetChildren()) do
if v:IsA("ScreenGui") and v:GetAttribute("Loaded") ~= nil then
	AlreadyLoaded = true	
end
end

if AlreadyLoaded == true then
error("UnnamedHub is already loaded")
return
end

function notify(Message)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "UnnamedHub Beta";
		Text = Message;
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
end

if game:GetService("Players").LocalPlayer.UserId ~= 2820225419 and DevBuild == true then notify("UnnamedHub isn't ready for release yet.") return end

local games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/games.lua"))()

for _,v in pairs(games.games) do
  if v == game.PlaceId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/games/"..tostring(game.PlaceId)..".lua"))()
	notify("Welcome "..game:GetService("Players").LocalPlayer.Name)
        --warn("UnnamedHub loaded !")
	notify("Press Right Shift to show the ui")
        loaded = true
    break
  end
end

if loaded == false then notify("This game isn't supported.") end
