---deobf By Adz
---deobf By Adz
---deobf By Adz
---deobf By Adz
function setTeam(teamName)
    local args = {
        [1] = "SetTeam",
        [2] = teamName
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

spawn(function()
    while wait() do
        if _G.Select_Pirates then
            setTeam("Pirates")
            _G.Select_Pirates = false  
            break
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Select_Marines then
            setTeam("Marines")
            _G.Select_Marines = false  
            break
        end
    end
end)

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.Position = UDim2.new(0.5, 0, -0.025, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "https://discord.gg/pGn6xsmfSg"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.00

UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(224.000001847744, 162.00000554323196, 255))
}
UIGradient.Parent = TextLabel

local ScreenGui = Instance.new("ScreenGui");
local DropShadowHolder = Instance.new("Frame");
local DropShadow = Instance.new("ImageLabel");
local Main = Instance.new("Frame");
local UICorner = Instance.new("UICorner");
local UIStroke = Instance.new("UIStroke");
local UIGradient = Instance.new("UIGradient");
local T = Instance.new("TextLabel");
local UIGradient1 = Instance.new("UIGradient");

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui

DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Position = UDim2.new(0.5, 0, 0.1, 0)
DropShadowHolder.Size = UDim2.new(0, 500, 0, 68)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = ScreenGui

DropShadow.Image = "rbxassetid://73482960622063"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(1, -47, 1, -47)
Main.Name = "Main"
Main.Parent = DropShadow

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Main

UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 2.5
UIStroke.Parent = Main

UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(224.000001847744, 162.00000554323196, 255))
}
UIGradient.Parent = UIStroke

T.Font = Enum.Font.GothamBold
T.Text = "Lion Hub Find Fruit"
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.TextSize = 16.5
T.TextYAlignment = Enum.TextYAlignment.Bottom
T.AnchorPoint = Vector2.new(0.5, 0)
T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
T.BackgroundTransparency = 0.9990000128746033
T.BorderColor3 = Color3.fromRGB(0, 0, 0)
T.BorderSizePixel = 0
T.Position = UDim2.new(0.5, 0, 0, 15)
T.Size = UDim2.new(0, 500, 0, 18)
T.Name = "Top"
T.Parent = Main

UIGradient1.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(224.000001847744, 162.00000554323196, 255))
}
UIGradient1.Parent = T

T.Size = UDim2.new(0, T.TextBounds.X, 0, 18)
if T.Size.X.Offset then
	DropShadowHolder.Size = UDim2.new(0, T.TextBounds.X + 68, 0, 48)
end
T:GetPropertyChangedSignal("Text"):Connect(function()
	T.Size = UDim2.new(0, T.TextBounds.X, 0, 18)
	if T.Size.X.Offset then
		DropShadowHolder.Size = UDim2.new(0, T.TextBounds.X + 68, 0, 48)
	end
end)

function SetTitle(v)
	T.Text = v
end

local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))()

NotificationLibrary:SendNotification("Warning", "Chờ xíu...", 10)
NotificationLibrary:SendNotification("Warning", "cảm ơn vì dùng Lion Hub", 10)
NotificationLibrary:SendNotification("Warning", "https://discord.gg/pGn6xsmfSg", 10)

spawn(function()
    while wait() do
        if _G.Select_Marines then
            setTeam("Marines")
            _G.Select_Marines = false  
            break
        end
    end
end)

function AutoHaki()
  local player = game:GetService("Players").LocalPlayer
  local character = player.Character
  if character and not character:FindFirstChild("HasBuso") then
    local remote = game:GetService("ReplicatedStorage").Remotes.CommF_
    if remote then
      remote:InvokeServer("Buso") 
    end
  end
end
    
    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end

function EquipWeapon(ToolSe)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
		wait(.4)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end    
    
    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end
  
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function BTP(p)
    	pcall(function()
	    	if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				repeat wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					wait(0.5)
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
				until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
			end
		end)
	end
    function TP(Pos)
        Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 300 then
            Speed = 300
        elseif Distance >= 1000 then
            Speed = 300
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
        _G.Clip = true
        wait(Distance/Speed)
        _G.Clip = false
    end

function MinhDepZai(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/315, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 200 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end

    function CheckNearestTeleporter(aI)
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        vcspos = aI.Position
        min = math.huge
        min2 = math.huge
        local y = game.PlaceId
        if y == 2753915549 then
            OldWorld = true
        elseif y == 4442272183 then
            NewWorld = true
        elseif y == 7449423635 then
            ThreeWorld = true
        end  
        if World3 then
            TableLocations = {
                ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
                ["Hydra"] = Vector3.new(5661.5302734375, 1013.3587036132812, -334.9619140625),
                ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
                ["Great Tree"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
                ["Ngu1"] = Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
                ["ngu2"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
            }
        elseif World2 then
            TableLocations = {
                ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
                ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
                ["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                ["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
            }
        elseif World1 then
            TableLocations = {
                ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
                ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
                ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
                ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
            }
        end
        TableLocations2 = {}
        for r, v in pairs(TableLocations) do
            TableLocations2[r] = (v - vcspos).Magnitude
        end
        for r, v in pairs(TableLocations2) do
            if v < min then
                min = v
                min2 = v
            end
        end
        for r, v in pairs(TableLocations2) do
            if v < min then
                min = v
                min2 = v
            end
        end
        for r, v in pairs(TableLocations2) do
            if v <= min then
                choose = TableLocations[r]
            end
        end
        min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if min2 <= min3 then
            return choose
        end
    end
    
    function requestEntrance(aJ)
        args = {"requestEntrance", aJ}
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
        oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        char = game.Players.LocalPlayer.Character.HumanoidRootPart
        char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)
        task.wait(0.5)
    end
    
    function AntiLowHealth(aK)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
            aK,
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
        )
        wait()
    end
    TweenSpeed = 300
    function topos(aL)
        pcall(function()
                if game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and  game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
                    if not TweenSpeed then
                        TweenSpeed = 300
                    end
                    DefualtY = aL.Y
                    TargetY = aL.Y
                    targetCFrameWithDefualtY = CFrame.new(aL.X, DefualtY, aL.Z)
                    targetPos = aL.Position
                    oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
                    if Distance <= 300 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = aL
                    end
                    local aM = CheckNearestTeleporter(aL)
                    if aM then
                        pcall(function()
                                tween:Cancel()
                            end)
                        requestEntrance(aM)
                    end
                    b1 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        local tweenfunc = {}
                        local aN = game:service "TweenService"
                        local aO =
                            TweenInfo.new((targetPos -game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /TweenSpeed,Enum.EasingStyle.Linear)
                        tween = aN:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],aO,{CFrame = targetCFrameWithDefualtY})
                        tween:Play()
                        function tweenfunc:Stop()
                            tween:Cancel()
                        end
                        tween.Completed:Wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    else
                        local tweenfunc = {}
                        local aN = game:service "TweenService"
                        local aO =
                            TweenInfo.new((targetPos -game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /TweenSpeed,Enum.EasingStyle.Linear)
                        tween = aN:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],aO,{CFrame = aL})
                        tween:Play()
                        function tweenfunc:Stop()
                            tween:Cancel()
                        end
                        tween.Completed:Wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                    if not tween then
                        return tween
                    end
                    return tweenfunc
                end
            end
        )
    end
IngoreY = true
Type = 1
spawn(function()
    while wait(.1) do
		if Type == 1 then
			Pos = CFrame.new(0,PosY,-30)
		elseif Type == 2 then
			Pos = CFrame.new(30,PosY,0)
		elseif Type == 3 then
			Pos = CFrame.new(0,PosY,30)	
		elseif Type == 4 then
			Pos = CFrame.new(-30,PosY,0)
        end
        end
    end)

spawn(function()
    while wait(0.5) do
        Type = 1
        wait(0.4)
        Type = 2
        wait(0.3)
        Type = 3
        wait(0.4)
        Type = 4
        wait(0.2)
        Type = 5
        wait(0.3)
    end
end)

spawn(function()
    while wait(.1) do
        Frame = 1
        wait(0.4)
        Frame = 2
        wait(0.4)
        Frame = 3
        wait(0.3)
        Frame = 4
        wait(0.4)
        Frame = 5
        wait(0.3)
    end
end)

Type = 1
spawn(function()
    while wait(.1) do
        if Frame == 1 then
            Check = CFrame.new(0,50,0)
		elseif F == 2 then
			Check = CFrame.new(0,0,-100)
		elseif F == 3 then
			Check = CFrame.new(100,0,0)
		elseif F == 4 then
			Check = CFrame.new(0,0,100)	
		elseif F == 5 then
			Check = CFrame.new(-100,0,0)
		elseif F == 6 then
			Check = CFrame.new(0,50,0)
        end
        end
    end)

spawn(function()
    while wait(.1) do
        F = 1
        wait(0.5)
        F = 2
        wait(0.5)
        F = 3
        wait(0.5)
        F = 4
        wait(0.5)
        F = 5
        wait(0.5)
    end
end)


function TPB(CFgo)
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
tween = tween_s:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, info, {CFrame = CFgo})
tween:Play()

local tweenfunc = {}

function tweenfunc:Stop()
    tween:Cancel()
end

return tweenfunc
end

function TPP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

function EquipWeaponGun()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Gun" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
                local K = Instance.new("Part",game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1,0.5,1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
            local S,g = pcall(function()
            local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
            q:Play()
        end)
        if not S then 
            return g
        end
        game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                else 
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
	    end)
    end)
    end

    spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_Bone2 or _G.LionFixDrive or _G.Nechieu or _G.AutoFarmBossHallow or _G.Auto_Bone2 or Over or Over2 or Run or Run2 or _G.AutoKata or _G.AutoLevel2 or _G.AutoFarmNearest or _G.AutoBoss or _G.Farmfast or _G.Tweenfruit or _G.Auto_Dungeon or _G.Kill_V4 or _G.killnoskill or _G.AutoQuestRace or _G.RaDaoKhi or _G.Luom_Gear or _G.DaoBiLon or _G.AutoSecondSea or _G.Auto_EvoRace or _G.Auto_Dragon_Trident or _G.Auto_Kill_Ply or _G.Teleport or _G.Eli_Ngu or _G.Chuate_Bac_Giang or _G.AutoCarvender or _G.Di_nghia_vu_quan_su or _G.AutoEctoplasm or _G.Kiem_Lua or Auto_Ki_Di or _G.AutoPole or _G.AutoPlayerHunter or _G.AutoMaterial or _G.Auto_Saber or _G.TweenToKitsune or _G.Auto_Nha_Dien or _G.TeleportNPC or _G.AutoDarkDagger or _G.ChonHaki or _G.RaidPirate or _G.AutoObservation or _G.AutoFarm or _G.AutoHakiV2 or _G.CollectAzure or _G.CitizenQuest or _G.TeleportIsland or _G.TeleportPly or _G.LionAutoDriveBoat or _G.FarmBoneAcient or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.AutoSwordMastery or _G.AutoCame or _G.autoLawRaid or _G.Auto_Seabest or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AutoShip or _G.bjirFishBoat or _G.bjirFishBoat or _G.AutoSeaBest or _G.TweenFro or Grab_Chest1 or Grab_Chest2 or _G.AutoFarmBoss == true then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                end
            end
        end)
    end)
  
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.Auto_Bone2 or _G.LionFixDrive or _G.Nechieu or _G.AutoFarmBossHallow or Over or Over2 or Run or Run2 or _G.AutoKata or _G.AutoLevel2 or _G.AutoBoss or _G.Farmfast or _G.Tweenfruit or _G.Auto_Dungeon or _G.Kill_V4 or _G.killnoskill or _G.AutoQuestRace or _G.RaDaoKhi or _G.Luom_Gear or _G.DaoBiLon or _G.AutoSecondSea or _G.Auto_EvoRace or _G.Auto_Dragon_Trident or _G.BayDao or _G.Eli_Ngu or _G.Chuate_Bac_Giang or _G.AutoCarvender or _G.Di_nghia_vu_quan_su or _G.AutoEctoplasm or _G.Kiem_Lua or Auto_Ki_Di or _G.Khi_Dot_Len_Dien or _G.AutoPlayerHunter or _G.FarmBoneAcient or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.AutoSwordMastery or _G.TweenToKitsune or _G.Auto_Nha_Dien or _G.AutoMaterial or _G.TeleportNPC or _G.AutoDarkDagger or _G.AutoFarm or _G.ChonHaki or _G.RaidPirate or _G.AutoObservation or _G.AutoHakiV2 or _G.CollectAzure or _G.CitizenQuest or _G.TeleportIsland or _G.TeleportPly or _G.CacRace or _G.LionAutoDriveBoat or _G.LionAutoDriveBoat2 or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AutoShip or _G.AutoSeaBest or _G.autoLawRaid or _G.Auto_Seabest or _G.Buoi == true then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)   
    
function Click()
        if not _G.FastAttack then
            local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
            local CombatFramework = debug.getupvalues(Module)[2]
            local CaMobNamehake = require(game.ReplicatedStorage.Util.CameraShaker)
            CaMobNamehake:Stop()
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.timeToNextAttack = 0
            CombatFramework.activeController.hitboxMagnitude = 180
            game:GetService 'VirtualUser':CaptureController()
            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end
    
spawn(function()
        while wait() do
            if Over or _G.Auto_Bone2 or _G.Kill_V4 or _G.killnoskill or _G.Auto_Kill_Ply == true then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                end)
            end    
        end
    end)    
    
    function InstancePos(pos)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end    
   spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)
    
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end) 

local PlayerName = game.Players.LocalPlayer.DisplayName
require(game.ReplicatedStorage.Notification).new("<Color=Blue>" ..PlayerName.. "<Color=/>"):Display()



setfpscap(60)

local MinhDepZai = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
local CakePos = CFrame.new(-1978.45715, 251.535294, -12395.2979)
local JackBoCon = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
local Domdom = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
local LongMa = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
local MuaTh = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)

local Players = game:GetService("Players")
local playerCount = #game:GetService("Players"):GetPlayers()

local placeId = game.PlaceId
local jobId = game.JobId

local CheckLuOcCho = #game:GetService("Players"):GetPlayers()

_G.BringMode = 300
PosY = 45
AutoHaki()

spawn(function()
	function MinhDepZai()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
	end
end)

function StopTween(target)
        if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
        end
        end

function GetDistance(q)
    if type(q) == "instance" then
        if Instance:IsA("BasePart") or Instance:IsA("Part") then
            return (q.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        elseif Instance:FindFirstChild("HumanoidRootPart") then
            return (q.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        else
            for r, v in pairs(q:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("Part") then
                    return (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
        end
    else
        return (q - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    end
end

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then 
			return true
		end
		return false
	end
end

local function round(num)
    return math.floor(num + 0.5)
end

function UpdateDevilChams()
    for _, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") and v:FindFirstChild("Handle") then
                    local handle = v.Handle
                    local espName = 'NameEsp' .. Number
                    
                    if not handle:FindFirstChild(espName) then
                        local bill = Instance.new('BillboardGui', handle)
                        bill.Name = espName
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = handle
                        bill.AlwaysOnTop = true

                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.TextSize = 14 
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = Enum.TextYAlignment.Top
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        name.Text = string.format("%s\n%d Distance", v.Name, round((game:GetService("Players").LocalPlayer.Character.Head.Position - handle.Position).Magnitude / 3))
                    else
                        local name = handle[espName].TextLabel
                        name.Text = string.format("%s\n%d Distance", v.Name, round((game:GetService("Players").LocalPlayer.Character.Head.Position - handle.Position).Magnitude / 3))
                    end
                end
            else
                if v:FindFirstChild("Handle") and v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle['NameEsp' .. Number]:Destroy()
                end
            end
        end)
    end
end

spawn(function()
    pcall(function()
        while wait() do
            if _G.Tweenfruit then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
                        Load.Text = "Keep Fruit Success"
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
                        Load.Text = "Keep Fruit Success"
                    end
                end
            end
        end
    end)
end)

function Hop()
    local PlaceID = game.PlaceId
    local JobID = game.JobId
    local AllIDs = {}
    local Cursor = ""
    local Hour = os.date("!*t").hour
    
    local function SaveIDs()
        pcall(function()
            writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
        end)
    end
    local function LoadIDs()
        local success, data = pcall(function()
            return readfile("NotSameServers.json")
        end)
        if success then
            AllIDs = game:GetService("HttpService"):JSONDecode(data)
        else
            AllIDs = {Hour}
            SaveIDs()
        end
    end
    local function CheckForFruit()
        local hasFruit = false
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Model") and v.Name:lower():find("fruit") then
                hasFruit = true
                break
            end
        end
        return hasFruit
    end
    local function TPReturner()
        local Site
        if Cursor == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. Cursor))
        end
        if Site.nextPageCursor then
            Cursor = Site.nextPageCursor
        end
        for _, v in pairs(Site.data) do
            local ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                local alreadyVisited = false
                for _, existing in pairs(AllIDs) do
                    if ID == existing then
                        alreadyVisited = true
                        break
                    end
                end

                if not alreadyVisited then
                    table.insert(AllIDs, ID)
                    SaveIDs()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    wait(5) 
                    
                    if CheckForFruit() then
                        print("Fruit found in server:", ID)
                        break
                    else
                        print("No fruit found, searching next server.")
                        table.remove(AllIDs, #AllIDs) 
                    end
                end
            end
        end
    end

    local function TeleportLoop()
        while wait() do
            pcall(TPReturner)
        end
    end
    LoadIDs()
    TeleportLoop()
end

    
spawn(function()
    while wait(.1) do
        if _G.Tweenfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                UpdateDevilChams()
                    topos(v.Handle.CFrame)
                    else
                    wait(6)
                    Hop()
                end
            end
        end
    end
end)

spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Tweenfruit then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end 
            end
        end)
    end)
    
spawn(function()
	while wait() do
		if Rejoin_Boost then
				getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				 end)
			end
		end
	end)
	
spawn(function()
	while wait() do
		if Rejoin_Boost then
			pcall(function()
				game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
				
				shared = {}
				shared.BC_1 = true
				shared.BC_2 = nil

				if shared.BC_1 and shared.BC_2 == nil then
					local Workspace = game:GetService("Workspace")
					local Lighting = game:GetService("Lighting")
					local Terrain = Workspace.Terrain
					local Players = game:GetService("Players")
					local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

					Terrain.WaterWaveSize = 0
					Terrain.WaterWaveSpeed = 0
					Terrain.WaterReflectance = 0
					Terrain.WaterTransparency = 0

					Lighting.GlobalShadows = false
					Lighting.FogEnd = math.huge
					Lighting.Brightness = 0

					settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
					settings().Rendering.GraphicsMode = Enum.GraphicsMode.NoGraphics

					for _, v in pairs(Workspace:GetDescendants()) do
						if v:IsA("BasePart") then
							v.Material = Enum.Material.Plastic
							v.Reflectance = 0
							v.CastShadow = false
						elseif v:IsA("Decal") or v:IsA("Texture") then
							v.Texture = ""
							v.Transparency = 1
						elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
							v.LightInfluence = 0
							v.Texture = ""
							v.Lifetime = NumberRange.new(0)
						elseif v:IsA("Explosion") then
							v.BlastPressure = 0
							v.BlastRadius = 0
						elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
							v.Enabled = false
						elseif v:IsA("MeshPart") then
							v.Material = Enum.Material.Plastic
							v.Reflectance = 0
							v.TextureID = ""
							v.CastShadow = false
							v.RenderFidelity = Enum.RenderFidelity.Performance
						elseif v:IsA("SpecialMesh") then
							v.TextureID = ""
						elseif v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Accessory") then
							v:Destroy()
						end
					end

					for _, v in pairs(Lighting:GetDescendants()) do
						if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
							v.Enabled = false
						end
					end

					for _, v in pairs(Character:GetDescendants()) do
						if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Accessory") then
							v:Destroy()
						end
					end
				end
			end)
		end
	end
end)


spawn(function()
    pcall(function()
        while wait() do
            if _G.TeleMirage then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    topos(CFrame.new(
                        game:GetService("Workspace").Map.MysticIsland.Center.Position.X,
                        500,
                        game:GetService("Workspace").Map.MysticIsland.Center.Position.Z
                    ))
                    NotificationLibrary:SendNotification("Warning", "Tween Mirage Island: On", 10)
                end
            end
        end
    end)
end)


spawn(function()
    while wait() do
        pcall(function()
            if _G.Moon then
                wait(0.5)
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
            end
        end)
    end
end)


spawn(function()
    pcall(function()
        while wait() do
            if _G.V3 then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end
    end)
end)


spawn(function()
    pcall(function()
        while wait() do
            if _G.Luom_Gear then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for _, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                        if v:IsA("MeshPart") and v.Material == Enum.Material.Neon then
                            topos(v.CFrame)
                        end
                    end
                end
            end
        end
    end)
end)


spawn(function()
    pcall(function()
        while wait() do
            if _G.PullLever then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    _G.Speak = true
                    _G.Tweenfruit = false
                    wait(30)
                    _G.TeleMirage = true
                    _G.Moon = true
                    _G.V3 = true
                    for _, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                        if v:IsA("MeshPart") and v.Material == Enum.Material.Neon then
                            _G.Luom_Gear = true
                            _G.TeleMirage = false
                            _G.Moon = false
                            _G.V3 = false
                        end
                    end
                else
                    _G.Tweenfruit = true
                end
            end
        end
    end)
end)


spawn(function()
    while wait() do
        if _G.Speak then
            pcall(function()
                function topos(Pos)
                    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    end
                    pcall(function()
                        tween = game:GetService("TweenService"):Create(
                            game.Players.LocalPlayer.Character.HumanoidRootPart,
                            TweenInfo.new(Distance / 250, Enum.EasingStyle.Linear),
                            { CFrame = Pos }
                        )
                    end)
                    tween:Play()
                    if Distance <= 250 then
                        tween:Cancel()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
                    end
                    if _G.StopTween == true then
                        tween:Cancel()
                        _G.Clip = false
                    end
                end

                function two(gotoCFrame)
                    pcall(function()
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    end)
                    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
                        pcall(function()
                            tweenz:Cancel()
                        end)
                        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
                    else
                        local tween_s = game:service("TweenService")
                        local info = TweenInfo.new(
                            (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude / 999999,
                            Enum.EasingStyle.Linear
                        )
                        tween, err = pcall(function()
                            tweenz = tween_s:Create(
                                game.Players.LocalPlayer.Character["HumanoidRootPart"],
                                info,
                                { CFrame = gotoCFrame }
                            )
                            tweenz:Play()
                        end)
                        if not tween then
                            return err
                        end
                    end
                end
                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125)
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                wait(1)
                two(CFrame.new(-5043.92432, 316.20578, -2994.26904))
                wait(1)
                topos(CFrame.new(-5355.62256, 313.715485, -2495.17383))
                wait(4)
                two(CFrame.new(-5501.28369, 1090.39294, -2465.23438))
                two(CFrame.new(-5844.28418, 1074.10681, -2100.07422))
                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "Check"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "Begin"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                wait(1)

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695)
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695)
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695)
                wait(1.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.3555, 14896.5352, 102.624695)
                two(CFrame.new(28608.6953, 14898.1895, 105.982483))
                wait(1)
                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "TeleportBack"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

                wait(1.5)
                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "Teleport"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                wait(2)

                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125)
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                wait(1)
                two(CFrame.new(-5043.92432, 316.20578, -2994.26904))
                topos(CFrame.new(-5355.62256, 313.715485, -2495.17383))

                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "Check"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "Continue"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                NotificationLibrary:SendNotification("Warning", "Completed Function", 10)
                _G.Speak = false
            end)
        end
    end
end)


