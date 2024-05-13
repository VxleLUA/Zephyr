local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Evo",
    LoadingTitle = "Evo Developer",
    LoadingSubtitle = "by VxleLUA",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "Evo Save"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "...",
       SaveKey = true,
       GrabKeyFromSite = true,
       Key = "https://raw.githubusercontent.com/VxleLUA/Evo/main/MainScript/Data/Key.lua"
    }
})
