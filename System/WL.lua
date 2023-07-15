local ExcludedUserIDs = {
    147195652012,
    500197503,
    555555555
}

local function RunScriptForPlayers(excludedUserIDs)
    local localPlayer = game.Players.LocalPlayer

    for _, player in ipairs(game.Players:GetPlayers()) do
        if player == localPlayer then
            -- Skip the local player
            continue
        end

        local isExcluded = false
        for _, userID in ipairs(excludedUserIDs) do
            if player.UserId == userID then
                isExcluded = true
                break
            end
        end
        
        if isExcluded then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Zephyr/main/System/Main.lua"))()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Zephyr/main/System/Note2.lua"))()
            print("Running script for excluded player: " .. player.Name)
        else
            print("WL failed")
            loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Zephyr/main/System/Note.lua"))()
            print("Running script for included player: " .. player.Name)
        end
    end
end

RunScriptForPlayers(ExcludedUserIDs)
