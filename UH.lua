local UH = {}

function UH:Load(T: string)
    if T:lower() == "beta" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/Beta/Loader.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/Loader.lua"))()
    end
end

return UH
