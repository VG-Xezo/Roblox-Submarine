local proximityPromt = script.Parent
local seat = proximityPromt.Parent
seat:GetPropertyChangedSignal("Occupant"):Connect(function() 
    if seat.Occupant then
        proximityPromt.Enabled = false
    else
        proximityPromt.Enabled = true
    end
end)

proximityPromt.Triggered:Connect(function(player)
    seat:Sit(player.Character.Humanoid)
end)
