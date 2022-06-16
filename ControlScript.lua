local seat = script.Parent.VehicleSeat

local steerAngle = 30
local speed = 60

seat.Changed:Connect(function()
	script.AngularVelocity.AngularVelocity = Vector3.new(0, -1 * seat.Steer, 0)
	script.LinearVelocity.LineVelocity = 50 * seat.Throttle
end)
