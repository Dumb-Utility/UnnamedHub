local Decryptor = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedStorage/main/Decryptor.lua"))()


UH = {}

function UH:Load(T: string)
    local Source
    if T:lower() == "beta" then
        Source = game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/Beta/Loader.lua")
    else
        Source = game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/Loader.lua")
    end
    Decryptor:LoadScript(Source)
end

return UH
