if not game:IsLoaded() then game.Loaded:Wait() end

function notify(Message)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "UnnamedHub";
		Text = Message;
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
end

if game:GetService("Players").LocalPlayer.UserId ~= 2820225419 then notify("UnnamedHub isn't ready for release yet.") return end

notify("Welcome "..game:GetService("Players").LocalPlayer.Name)
