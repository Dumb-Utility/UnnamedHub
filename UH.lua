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

function promtDicordInvite(inv)
    	local httpService = game:GetService("HttpService")
    	local httpRequest = (syn and syn.request) or (httpService and httpService.request) or (http_request)
    
    	if not httpRequest then if setclipboard then setclipboard("https://discord.gg/"..inv) end  if toclipboard then toclipboard("https://discord.gg/"..inv) end notify("Invite copied to clipboard.")  return end
    	
    	    httpRequest({
        		Url = "http://127.0.0.1:6463/rpc?v=1",
        		Method = "POST",
        
        		Headers = {
        			['Content-Type'] = 'application/json',
        			Origin = 'https://discord.com'
        		},
        
        		Body = httpService:JSONEncode({
        			cmd = 'INVITE_BROWSER',
        			nonce = httpService:GenerateGUID(false),
        			args = {code = inv}
        		})
        	})
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
	local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = function(who, buttonpressed)
	--print("invoke received by "..who)
		if who == "Yes" then
		    promtDicordInvite("3eEAN4Qr42")
		else
		    
		end
end

game:GetService("StarterGui"):SetCore(
		"SendNotification",
		{
			Title = "UnnamedHub",
			Duration = 10,
			Text = "Do you want to join the discord server?",
			Button1 = "Yes",
			Button2 = "No",
			Callback = Bindable
		}
	)
end
    break
  end
end

if loaded == false then notify("This game isn't supported.") end
