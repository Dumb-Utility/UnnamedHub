if not game:IsLoaded() then game.Loaded:Wait() end

function notify(Message)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "UnnamedHub";
		Text = Message;
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
end

if game:GetService("Players").LocalPlayer.UserId ~= 2820225419 then notify("UnnamedHub isn't ready for release yet.") return end

notify("Welcome "..game:GetService("Players").LocalPlayer.Name)

local games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/games.lua"))()

print(games.games)

for _,v in pairs(games.games) do
  if v == game.PlaceId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/games/"...tostring(game.PlaceId).."lua"))()
    break
  end
end
