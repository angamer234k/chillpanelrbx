-- Gui to Lua
-- Version: 3.2

-- Instances:

local wah = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ws = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local f = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local cs = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")

--Properties:

wah.Name = "wah"
wah.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
wah.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
wah.ResetOnSpawn = false

Frame.Parent = wah
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

cs.Name = "cs"
cs.Parent = Frame
cs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cs.BorderColor3 = Color3.fromRGB(0, 0, 0)
cs.BorderSizePixel = 0
cs.Position = UDim2.new(0.0635962784, 0, 0.604955256, 0)
cs.Size = UDim2.new(0.875391126, 0, 0.100000009, 0)
cs.Font = Enum.Font.Ubuntu
cs.Text = "Custom admin :O"
cs.TextColor3 = Color3.fromRGB(255, 255, 255)
cs.TextSize = 18.000
cs.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
cs.TextStrokeTransparency = -0.080
cs.TextWrapped = true

UICorner_5.Parent = cs

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.22, Color3.fromRGB(121, 0, 137)), ColorSequenceKeypoint.new(0.48, Color3.fromRGB(0, 255, 247)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(164, 173, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
UIGradient_2.Parent = cs

-- Scripts:

local function NCJUDN_fake_script() -- ws.LocalScript 
	local script = Instance.new('LocalScript', ws)

	script.Parent.Activated:Connect(function() 
		loadstring(game:HttpGet("https://raw.githubusercontent.com/angamer234k/chillpanelrbx/refs/heads/main/walkspeed.lua",false))()
	end)		
end
coroutine.wrap(NCJUDN_fake_script)()
local function NKINXX_fake_script() -- Frame.wah 
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
coroutine.wrap(NKINXX_fake_script)()
local function YVTT_fake_script() -- f.LocalScript 
	local script = Instance.new('LocalScript', f)

	script.Parent.Activated:Connect(function() 
		-- ty danyad22
		loadstring(game:HttpGet("https://raw.githubusercontent.com/danyad22/Fling/refs/heads/main/main.lua",false))()
	end)		
end
coroutine.wrap(YVTT_fake_script)()
local function TOCPM_fake_script() -- cs.LocalScript 
	local script = Instance.new('LocalScript', cs)

	script.Parent.Activated:Connect(function() 
		loadstring(game:HttpGet("https://raw.githubusercontent.com/angamer234k/chillpanelrbx/refs/heads/main/custom_admin.lua",false))()
	end)		
end
coroutine.wrap(TOCPM_fake_script)()
