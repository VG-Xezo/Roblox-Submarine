local submarine = script.Parent.Parent:WaitForChild("Model")
local primarypart = submarine:WaitForChild("PrimaryPart")
local upvelocity = script.Parent.Parent.ControlScript.UpVelocity

local bg = Instance.new("BodyGyro")
bg.Parent = primarypart
bg.CFrame = primarypart.CFrame

while true do
	if primarypart.CFrame.Y > 116 then
		primarypart.CFrame = CFrame.new(primarypart.CFrame.X, 115.6, primarypart.CFrame.Z) * primarypart.CFrame.Rotation
		upvelocity.LineVelocity = 0
	end
	wait()
end
