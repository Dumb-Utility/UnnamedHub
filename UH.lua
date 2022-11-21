local UH = {}

function UH:Load(T: string)
    if T:lower() == "beta" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/Beta/UH.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedHub/main/UH.lua"))()
    end
end

return UH
