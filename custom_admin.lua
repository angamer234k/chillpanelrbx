-- Gui to Lua
-- Version: 3.2

-- Instances:

local admin = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")

--Properties:

admin.Name = "admin"
admin.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
admin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = admin
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.841387868, 0, 0.618721485, 0)
TextLabel.Size = UDim2.new(0.158240408, 0, 0.380822033, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "try chatting ?info"
TextLabel.TextColor3 = Color3.fromRGB(33, 44, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(62, 255, 216)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 82, 104)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(79, 56, 46))}
UIGradient.Parent = TextLabel

-- Module Scripts:

local fake_module_scripts = {}

do -- admin.Commands
	local script = Instance.new('ModuleScript', admin)
	script.Name = "Commands"
	local function module_script()
		return {
			["help"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/angamer234k/chillpanelrbx/refs/heads/main/assets/commands/help.lua",false)),
			["info"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/angamer234k/chillpanelrbx/refs/heads/main/assets/commands/help.lua",false)),
		}
		
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function HREZRY_fake_script() -- admin.LocalScript 
	local script = Instance.new('LocalScript', admin)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local plr = game.Players.LocalPlayer
	local commands = require(script.Parent.Commands)
	local prefix = "?"
	
	plr.Chatted:Connect(function(msg) 
		if msg:find(prefix) then
			for _,v in commands do
				local command = prefix..v.Name
				if msg:find(command) then
					local args = msg:split(" ")
					local need_arg = v.Args
					if #args ~= need_arg then
						print("need "..need_arg.." args")
						return
					end
					v.Function(plr,args)
				end
			end
		end
	end)
end
coroutine.wrap(HREZRY_fake_script)()
local function EGNFYQQ_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	wait(3)
	script.Parent:Destroy()
end
coroutine.wrap(EGNFYQQ_fake_script)()
