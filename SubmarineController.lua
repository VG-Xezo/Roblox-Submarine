local player = game:GetService("Players").LocalPlayer

local char = player.Character

if not char then
	char = player.CharacterAdded:Wait()
end

local humanoid = char:WaitForChild("Humanoid")

local cas = game:GetService("ContextActionService")

local UserInputService = game:GetService("UserInputService")

local seat = nil

local heightIncrease = 0

local KeybindConnection
local KeybindConnection2

function height(actionName)
	
	if actionName == "Up" then
		seat.Parent.ControlScript.UpVelocity.LineVelocity = 0
		seat.Parent.ControlScript.UpVelocity.LineVelocity = 10 * 1
	elseif actionName == "Down" then
		seat.Parent.ControlScript.UpVelocity.LineVelocity = 0
		seat.Parent.ControlScript.UpVelocity.LineVelocity = -10 * 1
	elseif actionName == "Stop" then
		seat.Parent.ControlScript.UpVelocity.LineVelocity = 0
	end
end

humanoid.Seated:Connect(function(active, seatPart)
	
	if active and seatPart:IsA("VehicleSeat") then
		
		seat = seatPart
		KeybindConnection = UserInputService.InputBegan:Connect(function(input, isTyping)
			if isTyping then
				return
			end
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.E then
					height("Up")
				end
				if input.KeyCode == Enum.KeyCode.Q then
					height("Down")
				end
			end
		end)
		
		KeybindConnection2 = UserInputService.InputEnded:Connect(function(input, isTyping)
			if isTyping then
				return
			end
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.E then
					height("Stop")
				end
				if input.KeyCode == Enum.KeyCode.Q then
					height("Stop")
				end
			end
		end)
		
		
	elseif not active then
		KeybindConnection:Disconnect()
		KeybindConnection2:Disconnect()
		
	end
end)
