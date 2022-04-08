if not game:IsLoaded() then game.Loaded:Wait() end

local DevBuild = false

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
	notify("Press Right Shift to show the ui")
    break
  end
end
