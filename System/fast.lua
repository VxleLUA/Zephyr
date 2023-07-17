local walkspeed = 100

-- Get the LocalPlayer
local player = game:GetService("Players").LocalPlayer
local character = player.Character
local humanoid = character and character:FindFirstChild("Humanoid")

-- Check if the LocalPlayer and the Humanoid exist
if humanoid then
    -- Loop to continuously set the walkspeed
    while true do
        humanoid.WalkSpeed = walkspeed
        wait()
    end
end
