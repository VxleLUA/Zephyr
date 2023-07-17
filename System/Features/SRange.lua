local headSize = 11
local color = Color3.new(1, 1, 1)
local player = game.Players.LocalPlayer

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

updateRange(9)
