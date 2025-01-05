-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0604982115, 0, 0.0777777433, 0)
Frame.Size = UDim2.new(0.220805302, 0, 0.582720339, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(-3.0689435e-08, 0, 0, 0)
TextButton.Size = UDim2.new(0.300000012, 0, 0.200000003, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner.Parent = TextButton

UICorner_2.Parent = Frame

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(107, 107, 107)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(77, 77, 77))}
UIGradient.Parent = Frame

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0880178139, 0, 0.25570038, 0)
ScrollingFrame.Size = UDim2.new(0.815427184, 0, 0.632849693, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 5, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Standard prefix ?<br/> To get commands, visit the documentation."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 21.000
TextLabel.TextWrapped = true
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

-- Scripts:

local function HWTEGW_fake_script() -- TextButton.panic 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.Activated:Connect(function() 
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(HWTEGW_fake_script)()
local function HSVY_fake_script() -- Frame.drag 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
end
coroutine.wrap(HSVY_fake_script)()
