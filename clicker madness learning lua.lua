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

function buyEgg(eggType)
    spawn(function() 
            while wait() do
            if not buyEgg then break end;
            remotePath.EggService.Purchase:FireServer(eggType)
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

local b = w:CreateFolder("Farming") 

local c = w:CreateFolder("Eggs") 

local d = w:CreateFolder("Teleports")

b:DestroyGui()


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
        buyEgg('basic')
    end
end)


d:Button("TpTO Desert",function()
    tpWORLD("Desert")
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