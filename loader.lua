-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh-- heheh
-- Gui to Lua
-- Version: 3.2

-- Instances:

local wait_load = Instance.new("ScreenGui")

--Properties:

wait_load.Name = "wait_load"
wait_load.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
wait_load.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Scripts:

local function MPJVS_fake_script() -- wait_load.LocalScript 
	local script = Instance.new('LocalScript', wait_load)

	if not game:IsLoaded() then
		-- Gui to Lua
		-- Version: 3.2
	
		-- Instances:
	
		local TextLabel = Instance.new("TextLabel")
		local UIGradient = Instance.new("UIGradient")
	
		--Properties:
	
		TextLabel.Parent = game.StarterGui.wait_load
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = "ChillPanel is waiting for game to load.."
		TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true
	
		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(55, 29, 109)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 73, 106))}
		UIGradient.Rotation = -109
		UIGradient.Parent = TextLabel
		repeat task.wait() until game:IsLoaded()
		wait(1)
		TextLabel:Destroy()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/angamer234k/chillpanelrbx/refs/heads/main/main_gui.lua",false))
	end
end
coroutine.wrap(MPJVS_fake_script)()
