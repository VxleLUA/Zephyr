local ExcludedUserIDs = {
    1471956520,
    500197503,
    405388687
}

local function RunScriptForPlayer(excludedUserIDs)
    local player = game.Players.LocalPlayer -- Get the local player
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

RunScriptForPlayer(ExcludedUserIDs)
