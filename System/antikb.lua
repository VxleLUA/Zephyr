while true do
    wait()
    
    local currentPlayer = game:GetService("Players").LocalPlayer
    local currentPlayerCharacter = currentPlayer.Character
    local currentPlayerRootPart = currentPlayerCharacter and currentPlayerCharacter:FindFirstChild("HumanoidRootPart")
    
    if currentPlayerRootPart then
        if currentPlayerRootPart:FindFirstChild("BodyVelocity") then
            currentPlayerRootPart.BodyVelocity.Velocity = Vector3.new(0, 0, 0)
        end
    end
end
