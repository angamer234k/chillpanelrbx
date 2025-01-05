-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ws = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local f = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.331349105, 0, 0.331463099, 0)
Frame.Size = UDim2.new(0.336230129, 0, 0.33623004, 0)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(50, 50, 50)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 30, 30))}
UIGradient.Rotation = 90
UIGradient.Parent = Frame

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(-0.0145618943, 0, 0, 0)
title.Size = UDim2.new(1.02912271, 0, 0.151359037, 0)
title.Font = Enum.Font.Highway
title.Text = "Sillybilly"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 14.000
title.TextWrapped = true

UICorner_2.Parent = title

ws.Name = "ws"
ws.Parent = Frame
ws.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ws.BorderColor3 = Color3.fromRGB(0, 0, 0)
ws.BorderSizePixel = 0
ws.Position = UDim2.new(0.0635963157, 0, 0.235401034, 0)
ws.Size = UDim2.new(0.875391126, 0, 0.100000009, 0)
ws.Font = Enum.Font.Ubuntu
ws.Text = "Walkspeed setter"
ws.TextColor3 = Color3.fromRGB(0, 0, 0)
ws.TextSize = 14.000

UICorner_3.Parent = ws

f.Name = "f"
f.Parent = Frame
f.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
f.BorderColor3 = Color3.fromRGB(0, 0, 0)
f.BorderSizePixel = 0
f.Position = UDim2.new(0.0635963157, 0, 0.401246071, 0)
f.Size = UDim2.new(0.875391126, 0, 0.100000009, 0)
f.Font = Enum.Font.Ubuntu
f.Text = "Fling"
f.TextColor3 = Color3.fromRGB(0, 0, 0)
f.TextSize = 14.000

UICorner_4.Parent = f

-- Scripts:

local function EQSNNW_fake_script() -- ws.LocalScript 
	local script = Instance.new('LocalScript', ws)

	script.Parent.Activated:Connect(function() 
		loadstring(game:HttpGet("https://raw.githubusercontent.com/angamer234k/chillpanelrbx/refs/heads/main/walkspeed.lua",false))()
	end)		
end
coroutine.wrap(EQSNNW_fake_script)()
local function WBLTDB_fake_script() -- Frame.wah 
	local script = Instance.new('LocalScript', Frame)

	-- Shout out to domboss37 for drag script
	--// Services
	local Players = game:GetService('Players')
	local UIS = game:GetService("UserInputService")
	
	--// Variables
	local UI = script.Parent
	
	local Player = Players.LocalPlayer
	local Mouse = Player:GetMouse()
	
	local Hovered = false
	local Holding = false
	local MoveCon = nil
	
	local InitialX, InitialY, UIInitialPos
	
	--// Functions
	
	local function Drag()
		if Holding == false then MoveCon:Disconnect(); return end
		local distanceMovedX = InitialX - Mouse.X
		local distanceMovedY = InitialY - Mouse.Y
	
		UI.Position = UIInitialPos - UDim2.new(0, distanceMovedX, 0, distanceMovedY)
	end
	
	--// Connections
	
	UI.MouseEnter:Connect(function()
		Hovered = true
	end)
	
	UI.MouseLeave:Connect(function()
		Hovered = false
	end)
	
	UIS.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Holding = Hovered
			if Holding then
				InitialX, InitialY = Mouse.X, Mouse.Y
				UIInitialPos = UI.Position
	
				MoveCon = Mouse.Move:Connect(Drag)
			end
		end
	end)
	
	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Holding = false
		end
	end)
end
coroutine.wrap(WBLTDB_fake_script)()
local function RTYZAL_fake_script() -- f.LocalScript 
	local script = Instance.new('LocalScript', f)

	script.Parent.Activated:Connect(function() 
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		for _,v in ipairs(char:GetChildren()) do
			if v:IsA("Part") then
				v.CustomPhysicalProperties = PhysicalProperties.new(100,0,0)
			end
		end
	end)		
end
coroutine.wrap(RTYZAL_fake_script)()
