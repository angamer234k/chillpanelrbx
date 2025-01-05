-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local wuh = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0305997543, 0, 0.81004709, 0)
Frame.Size = UDim2.new(0.276254594, 0, 0.150235474, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-3.38032535e-08, 0, 0, 0)
TextLabel.Size = UDim2.new(1.00000012, 0, 0.404388815, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "walkspeed setter, type number below"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

wuh.Name = "wuh"
wuh.Parent = Frame
wuh.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
wuh.BorderColor3 = Color3.fromRGB(0, 0, 0)
wuh.BorderSizePixel = 0
wuh.Position = UDim2.new(0, 0, 0.300000012, 0)
wuh.Size = UDim2.new(1, 0, 0.699999988, 0)
wuh.Font = Enum.Font.SourceSans
wuh.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
wuh.PlaceholderText = "Default 16"
wuh.Text = ""
wuh.TextColor3 = Color3.fromRGB(0, 0, 0)
wuh.TextScaled = true
wuh.TextSize = 14.000
wuh.TextWrapped = true

-- Scripts:

local function ROHV_fake_script() -- wuh.LocalScript 
	local script = Instance.new('LocalScript', wuh)

	script.Parent.FocusLost:Connect(function(enterPressed: boolean) 
		if enterPressed == true then
			if tonumber(script.Parent.Text) then	
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(script.Parent.Text)
			end
		end
	end)
end
coroutine.wrap(ROHV_fake_script)()
local function JAACOIM_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

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
coroutine.wrap(JAACOIM_fake_script)()
