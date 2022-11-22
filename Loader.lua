if not game:IsLoaded() then game.Loaded:Wait() end

local Global = getgenv and getgenv() or _G

   local ID = string.reverse(tostring(game:GetService("Players").LocalPlayer.UserId))
   local Locked = false
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
         Title = "UnnamedHub - Paid";
         Text = Message;
         Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
      end

      local Request = (syn and syn.request) or request or http_request
      if not Request then notify("Not HTTP Found") return end

      local games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/Beta/games.lua"))()

      for _,v in pairs(games.games) do
         if v == game.PlaceId then
            local r = Request({
               Url = "https://unnamedhub.cf/api/games/"..tostring(v),
               Method = "GET",
               Headers = {
                  ["playeruserid"] = ID
               }
            }).Body
            Decryptor:LoadScript(r)
            loaded = true
         end
      end


      if loaded == false then notify("This game isn't supported.") end
