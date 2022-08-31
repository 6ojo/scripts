getgenv().autoTap = false
getgenv().autoRebirth = false
getgenv().buyEgg = false

local remotePath = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices



function doTap()
    spawn(function()
        while autoTap == true do    
            local args = {[1] = 1}
            remotePath.ClickService.Click:FireServer(unpack(args))
            wait()
        end
    end)
end

function autoRebirth(rebirthAmount)
    spawn(function() 
        while getgenv().autoRebirth == true do
            remotePath.RebirthService.BuyRebirths:FireServer(rebirthAmount)
            wait()
        end
    end)
end

function autoEgg()
        spawn(function()
            while getgenv().buyEgg == true do
            local args = {[1] = "basic"}
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
            wait()
        end
    end)
end

function getCurrentPOS()
    local plyr =game.Players.LocalPlayer
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame
    end
end



function tpTO(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then 
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end

function tpWORLD(world)
    if game:GetService("Workspace").Worlds:FindFirstChild(world) then
        tpTO(game:GetService("Workspace").Worlds[world].Teleport.CFrame)
    end
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/508droid/AikaV3rm-UI-Lib/main/Lib.lua')))()

local w = library:CreateWindow("clicker madness") -- Creates the window

local h = library:CreateWindow("Teleports")

local b = w:CreateFolder("Farming") 

local c = w:CreateFolder("Eggs") 

local d = h:CreateFolder("Worlds")

local f = h:CreateFolder("Flags")

local g = w:CreateFolder("Kill GUI")

g:DestroyGui()




b:Toggle("Auto Click",function(bool)
    getgenv().autoTap = bool
    print('Autoclicker is ', bool)
    if bool then
        doTap()
    end
end)


b:Toggle("Auto Rebirth",function(bool)
    getgenv().autoRebirth = bool
    print('Auto Rebirth is ', bool)
    if bool then
        autoRebirth(1000)
    end
end)

c:Toggle("Buy Pets",function(bool)
    getgenv().buyEgg = bool
    print('Buy egg is', bool)
    if bool then
        autoEgg('basic')
    end
end)


d:Button("Desert",function()
    tpWORLD("Desert")
end)

d:Button("King Of The Hill",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(546.829285, 32.5418358, -171.094543, 0.991042912, 2.59883386e-08, -0.133543625, -3.6088057e-08, 1, -7.32080991e-08, 0.133543625, 7.73717019e-08, 0.991042912)
end)

d:Button("Lava",function()
    tpWORLD('Lava')
end)

d:Button("Desert",function()
    tpWORLD('Desert')
end)

d:Button("Ocean",function()
    tpWORLD('Ocean')
end)

d:Button("Winter",function()
    tpWORLD('Winter')
end)

d:Button("Toxic",function()
    tpWORLD('Toxic')
end)

d:Button("Candy",function()
    tpWORLD('Candy')
end)

d:Button("Forest",function()
    tpWORLD('Forest')
end)

d:Button("Storm",function()
    tpWORLD('Storm')
end)

d:Button("Blocks",function()
    tpWORLD('Blocks')
end)

d:Button("Space",function()
    tpWORLD('Space')
end)

d:Button("Dominus",function()
    tpWORLD('Dominus')
end)

d:Button("Infinity",function()
    tpWORLD('Infinity')
end)

d:Button("Future",function()
    tpWORLD('Future')
end)

d:Button("City",function()
    tpWORLD('City')
end)

d:Button("Moon",function()
    tpWORLD('Moon')
end)

d:Button("Fire",function()
    tpWORLD('Fire')
end)

f:Button("Flag 1",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1812.66833, 5.94157887, -701.883423, 0.435264885, 5.54593065e-08, -0.90030247, -4.70777373e-08, 1, 3.88403052e-08, 0.90030247, 2.54783803e-08, 0.435264885)
end)

f:Button("Flag 2",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2213.58154, 9.27691078, 1045.22473, -0.383481801, 2.12517257e-08, -0.9235484, 1.66964522e-08, 1, 1.60781397e-08, 0.9235484, -9.25430843e-09, -0.383481801)
end)

f:Button("Flag 3",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-300.728241, 11.826931, 2152.1936, 0.834384918, 2.43967015e-08, -0.55118221, -2.35648798e-08, 1, 8.58975557e-09, 0.55118221, 5.82137982e-09, 0.834384918)
end)

f:Button("Flag 4",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2301.40283, 6.28167963, 454.5495, 0.5158301, -1.83355056e-08, -0.856690884, -6.78843648e-08, 1, -6.2277195e-08, 0.856690884, 9.02803734e-08, 0.5158301)
end)

f:Button("Flag 5",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1758.51453, 6.64162922, -2077.84839, 0.00632569334, -2.55268482e-08, -0.999979973, 5.85883519e-09, 1, -2.54902961e-08, 0.999979973, -5.69747449e-09, 0.00632569334)
end)

f:Button("Flag 6",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1353.79492, 5.86158705, -2215.92871, 0.0763586834, 2.0991811e-08, -0.997080386, 3.95002324e-08, 1, 2.40782949e-08, 0.997080386, -4.1223494e-08, 0.0763586834)
end)

f:Button("Flag 7",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1736.17468, 6.27692842, 3291.23779, 0.242773727, -3.95026589e-09, -0.970082939, 1.22565564e-12, 1, -4.07178424e-09, 0.970082939, 9.87333215e-10, 0.242773727)
end)

f:Button("Flag 8",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-329.431305, 8.88165092, -2668.85669, -0.84351939, 3.11675059e-08, -0.537098706, 6.30612789e-08, 1, -4.1009045e-08, 0.537098706, -6.84620574e-08, -0.84351939)
end)

f:Button("Flag 9",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2921.05298, 8.9668951, -816.144287, 0.039141275, 1.44872194e-08, -0.999233663, -1.79463253e-08, 1, 1.37953489e-08, 0.999233663, 1.73926047e-08, 0.039141275)
end)

f:Button("Flag 10",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2361.19702, 6.31163406, 2956.03711, 0.820406139, -1.42075853e-08, 0.571781278, -2.50769983e-09, 1, 2.84460491e-08, -0.571781278, -2.47711682e-08, 0.820406139)
end)

f:Button("Flag 11",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1040.36304, 12.7660866, 2204.26636, -0.619036257, 1.81921933e-09, -0.785362422, 7.49091567e-10, 1, 1.7259606e-09, 0.785362422, 4.8012383e-10, -0.619036257)
end)

f:Button("Flag 12",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2216.41211, 23.7668247, -1835.90015, -0.186992005, 3.90937736e-08, 0.982361436, 2.66299001e-08, 1, -3.47267246e-08, -0.982361436, 1.9666567e-08, -0.186992005)
end)

f:Button("Flag 13",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1047.29468, 6.0768919, 553.452148, 0.0641621798, 1.51397579e-08, -0.997939467, -1.82400193e-08, 1, 1.39982816e-08, 0.997939467, 1.73042736e-08, 0.0641621798)
end)

-- b:Toggle("Toggle",function(bool)
--     shared.toggle = bool
--     print(shared.toggle)
-- end)

-- b:Slider("Slider",{
--     min = 10; -- min value of the slider
--     max = 50; -- max value of the slider
--     precise = true; -- max 2 decimals
-- },function(value)
--     print(value)
-- end)

-- b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
--     print(mob)
-- end)

-- b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
--     print("Yes")
-- end)

-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
--     print(color)
-- end)

-- b:Box("Box","number",function(value) -- "number" or "string"
--     print(value)
-- end)