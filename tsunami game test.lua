
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/508droid/AikaV3rm-UI-Lib/main/Lib.lua')))()

local w = library:CreateWindow("tsunami :3")
local h = library:CreateWindow("Teleports")
local g = w:CreateFolder("kill gui")

local a = h:CreateFolder("caves")

g:DestroyGui()

a:Button("cave?",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-177.249969, 124.449997, -23, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)