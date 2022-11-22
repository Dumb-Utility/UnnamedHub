if not game:IsLoaded() then game.Loaded:Wait() end

local Global = getgenv and getgenv() or _G

local ID = string.reverse(tostring(game:GetService("Players").LocalPlayer.UserId))


local loaded = false
local AlreadyLoaded = false

for _,v in pairs(game:GetService("CoreGui"):GetChildren()) do
if v:IsA("ScreenGui") and v:GetAttribute("Loaded") ~= nil then
	AlreadyLoaded = true	
end
end

if AlreadyLoaded == false then
	AlreadyLoaded = Global.__UH__IsLoaded
end

if AlreadyLoaded == true or Global.__UH__UI ~= nil then
error("UnnamedHub is already loaded")
return
end

local Decryptor = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedStorage/main/Decryptor.lua"))()

function notify(Message)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "UnnamedHub";
		Text = Message;
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
end

local Request = (syn and syn.request) or request or http_request
if not Request then notify("Not HTTP Found") return end

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

function Welcome()
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

local games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/games.lua"))()

for _,v in pairs(games.games) do
  if v == game.PlaceId then
    -- Syn support for others exploits.
    -- loadstring(game:HttpGet("https://irisapp.ca/api/Scripts/IrisBetterCompat.lua"))()
	local su, err =  pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/games/"..tostring(game.PlaceId)..".lua"))()	
		end)
	if su == false then
		local h
		local su, err = pcall(function()
			h = Request({
				Url = "https://unnamedhub.cf/api/games/free/"..tostring(v),
				Method = "GET",  
			Headers = {
				["playeruserid"] = ID
			}
			}).Body
		end)
		if su == true then
		loaded = true
		Decryptor:LoadScript(h)
		Welcome()
		end
	else
     loaded = true
	 Welcome()
	end
end
  end

if loaded == false then notify("This game isn't supported.") end
