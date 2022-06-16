# Roblox-Submarine

Project Breakdown

The Submarine uses a LinearVelocity to move forward/backward. It uses an angular velocity to turn. This is handled in ControlScript.lua.

To move up/down it uses another LinearVelocity and this is handled in SubmarineController.lua which resides on the client.

The submarine has a tendency to rotate weirdly so this is corrected in CorrectSubmarine.lua. This script also prevents the player from rising above the water in my game.

PromptScript.lua is just the script which is parented to the proximity prompt in my submarine and lets the player drive it.
