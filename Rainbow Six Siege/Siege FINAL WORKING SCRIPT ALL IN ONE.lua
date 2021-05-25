local recoilmode = 0
local specialrecoilmode = 0

local delay1
local delay2
local delay3
local movemouse1
local movemouse2
local movemouse3
local decider

function OnEvent(event, arg)


if (event == "PROFILE_ACTIVATED") then
	EnablePrimaryMouseButtonEvents(true)
end

if (event == "MOUSE_BUTTON_PRESSED" and arg == 8 and IsKeyLockOn("scrolllock")) then
	if (specialrecoilmode >= 0 and specialrecoilmode <= 2) then
		specialrecoilmode = specialrecoilmode + 1
		OutputLogMessage("Set Special Recoil Mode: ")
		OutputLogMessage(specialrecoilmode)
		OutputLogMessage("\n")
	else
		OutputLogMessage("Error - Out of cycle range bounds for special recoil configs!\n")
	end
end

if (event == "MOUSE_BUTTON_PRESSED" and arg == 7 and IsKeyLockOn("scrolllock")) then
	if (specialrecoilmode >= 1) then
		specialrecoilmode = specialrecoilmode - 1
		OutputLogMessage("Set Special Recoil Mode: ")
		OutputLogMessage(specialrecoilmode)
		OutputLogMessage("\n")
	else
		OutputLogMessage("Error - Out of cycle range bounds for special recoil configs!\n")
	end	
end


if (event == "MOUSE_BUTTON_PRESSED" and arg == 8 and IsKeyLockOn("scrolllock") == false) then
	if (recoilmode >= 0 and recoilmode <= 8) then
		recoilmode = recoilmode + 1
		OutputLogMessage("Set Recoil Mode: ")
		OutputLogMessage(recoilmode)
		OutputLogMessage("\n")
	else
		OutputLogMessage("Error - Out of cycle range bounds!\n")
	end
end

if (event == "MOUSE_BUTTON_PRESSED" and arg == 7 and IsKeyLockOn("scrolllock") == false) then
	if (recoilmode >= 1) then
		recoilmode = recoilmode - 1
		OutputLogMessage("Set Recoil Mode: ")
		OutputLogMessage(recoilmode)
		OutputLogMessage("\n")
	else
		OutputLogMessage("Error - Out of cycle range bounds!\n")
	end	
end


--    Mode 0     --		"Red"
if (recoilmode == 0) then
	delay1 = 6
	delay2 = 6
	movemouse1 = 1 
	movemouse2 = 1

end
--    Mode 1     --		"Dark Red"
if (recoilmode == 1) then
	delay1 = 4
	delay2 = 4
	movemouse1 = 1 
	movemouse2 = 1
end
--    Mode 2     --		"Orange"
if (recoilmode == 2) then
	delay1 = 4
	delay2 = 3
	movemouse1 = 1 
	movemouse2 = 1
end
--    Mode 3     --		"Dark Yellow"
if (recoilmode == 3) then
	delay1 = 3
	delay2 = 3
	movemouse1 = 1 
	movemouse2 = 1
end
--    Mode 4     --		"Light Blue"
if (recoilmode == 4) then
	delay1 = 4
	delay2 = 5
	movemouse1 = 1 
	movemouse2 = 2
end
--    Mode 5     --		"Purple"
if (recoilmode == 5) then
	delay1 = 5
	delay2 = 6
	movemouse1 = 2 
	movemouse2 = 2
end
--    Mode 6     --		"Yellow"
if (recoilmode == 6) then
	delay1 = 4
	delay2 = 5
	movemouse1 = 2 
	movemouse2 = 2
end
--    Mode 7     --		"Pink"
if (recoilmode == 7) then
	delay1 = 3
	delay2 = 3
	movemouse1 = 2 
	movemouse2 = 2
end
--    Mode 8     --		"Green"
if (recoilmode == 8) then
	delay1 = 3
	delay2 = 2
	movemouse1 = 2 
	movemouse2 = 2
end
--    Mode 9     --		"Dark Grey"
if (recoilmode == 9) then
	delay1 = 3
	delay2 = 4
	movemouse1 = 3 
	movemouse2 = 3
end


--    Mode 10    --		"L85A2 (Thatcher + Sledge)"
if (specialrecoilmode == 0) then
	delay1a = 4
	delay2a = 5
	delay3a = 4
	movemouse1a = 1 
	movemouse2a = 2
	movemouse3a = 2
	decider = 1
end
--    Mode 11    --		"556XI (Thermite)"
if (specialrecoilmode == 1) then
	delay1a = 7
	delay2a = 7
	delay3a = 7
	movemouse1a = 3 
	movemouse2a = 2
	movemouse3a = 2
	decidera = 1
end
--    Mode 12    --		"TYPE-89 (Hibana)"
if (specialrecoilmode == 2) then
	delay1a = 5
	delay2a = 7
	delay3a = 6
	movemouse1a = 2 
	movemouse2a = 3
	movemouse3a = 3
	decidera = -1
end
--    Mode 13    --		"MK17 (Blackbeard)"
if (specialrecoilmode == 3) then
	delay1a = 6
	delay2a = 7
	delay3a = 7
	movemouse1a = 3 
	movemouse2a = 2
	movemouse3a = 5
	decidera = 1
end

if IsKeyLockOn("scrolllock") == true then
	if IsKeyLockOn("numlock") == true then
		if IsMouseButtonPressed(3)then
			repeat	
				if IsMouseButtonPressed(1) then
					repeat
						Sleep(math.random(delay1a - 1, delay1a + 1))
						MoveMouseRelative(1, movemouse1a)
						Sleep(math.random(delay2a - 1, delay2a + 1))
						MoveMouseRelative(-1, movemouse2a)
						Sleep(math.random(delay3a - 1, delay2a + 1))
						MoveMouseRelative(decidera, movemouse3a)
					until not IsMouseButtonPressed(1)
				end				
			until not IsMouseButtonPressed(3)
		end		
	end
end

if IsKeyLockOn("scrolllock") == false then
	if IsKeyLockOn("numlock") == true then
		if IsMouseButtonPressed(3)then
			repeat	
				if IsMouseButtonPressed(1) then
					repeat
						Sleep(math.random(delay1 - 1, delay1 + 1))
						MoveMouseRelative(1, movemouse1)
						Sleep(math.random(delay2 - 1, delay2 + 1))
						MoveMouseRelative(-1, movemouse2)
					until not IsMouseButtonPressed(1)
				end				
			until not IsMouseButtonPressed(3)
		end		
	end
end
end