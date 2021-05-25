--[[ 


 _       __    __                      
| |     / /   / /_   ___    _____  ___ 
| | /| / /   / __ \ / _ \  / ___/ / _ \
| |/ |/ /   / / / //  __/ / /    /  __/
|__/|__/   /_/ /_/ \___/ /_/     \___/ 
                                                     
   (_)   _____
  / /   / ___/
 / /   (__  ) 
/_/   /____/  
             
                                                            _     __  ___ 
   ____ ___    __  __          _____  ___   _____  ____    (_)   / / /__ \
  / __ `__ \  / / / /         / ___/ / _ \ / ___/ / __ \  / /   / /   / _/
 / / / / / / / /_/ /         / /    /  __// /__  / /_/ / / /   / /   /_/  
/_/ /_/ /_/  \__, /         /_/     \___/ \___/  \____/ /_/   /_/   (_)    
            /____/                                                        
                                                  


            _____                               _  _      ___     ___     ___     ___  
           |  ___|  _   _   _ __ ___    ___   _| || |_   / _ \   ( _ )   ( _ )   ( _ ) 
  _____    | |_    | | | | | '_ ` _ \  / __| |_  ..  _| | | | |  / _ \   / _ \   / _ \ 
 |_____|   |  _|   | |_| | | | | | | | \__ \ |_      _| | |_| | | (_) | | (_) | | (_) |
           |_|      \__,_| |_| |_| |_| |___/   |_||_|    \___/   \___/   \___/   \___/ 
                                                                                       
                                           


SCRIPT HAS BEEN TESTED USING 800 DPI AND 0.53 IN GAME SENS


Please read:

	I had to bind the thumb button to middle mouse to make perfect rapid fire work.
	
		Why? 

		BECAUSE LUA IS SO SHIT I CANT CANCEL A WHILE LOOP BREAK WITH A MOUSE ARGUMENT EVEN

CONTROLS:


* IN SCRIPT *

- RECOIL DELETER : Boolean capslock (or whatever you change the keylock to be)
- PERFECT RAPID FIRE : Thumb button / dpi shifter
- BURST FIRE : G5



* IN PROFILE *
- BUNNY HOP : Hold G4
- FAST WEAPON SWAP / CANCEL RELOAD : Press G8 
- PLAY / PAUSE MEDIA : G9
- SWITCH TO GUN AND OFF GUN : G8
- SWITCH TO KNIFE AND OFF KNIFE : G7

]]--


local keylock = "capslock" -- change to capslock, numlock or scrolllock
local scriptswap = 5 -- which extra mouse button to swap recoil script

local recoilmode = true


if recoilmode == true then
	OutputLogMessage("Started with normal script\n")
	end
if recoilmode == false then
	OutputLogMessage("Started with lower script\n")
end

function OnEvent(event, arg)
EnablePrimaryMouseButtonEvents(true);



-- PERFECT RAPID FIRE V2
if IsMouseButtonPressed(2) then
OutputLogMessage("Toggled on perfect rapid fire\n")
repeat
PressMouseButton(1)
Sleep(math.random(100,110))
ReleaseMouseButton(1)
Sleep(math.random(130,140))
until not IsMouseButtonPressed(2)
end
-- END OF PERFECT RAPID FIRE V2

if (event == "MOUSE_BUTTON_PRESSED" and arg == scriptswap) then
	recoilmode = not recoilmode

	if recoilmode == true then
		OutputLogMessage("Switched to normal script\n")
		end
	if recoilmode == false then
		OutputLogMessage("Switched to lower script\n")
	end

end


-- WTF WHERE IS MY RECOIL

-- NORMAL SCRIPT
if (IsKeyLockOn(keylock) == true and recoilmode == true) then 
	if IsMouseButtonPressed(1) then
		repeat
			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(20,22))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(22,24))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(23,27))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(25,29))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(26,29))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(29,32))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(7,10))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(20,25),math.random(7,10))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-20,-15),math.random(7,10))
		
		until IsMouseButtonPressed(1)
	end
end
-- END OF NORMAL SCRIPT

-- LOWER SCRIPT

if (IsKeyLockOn(keylock) == true and recoilmode == false) then 
	if IsMouseButtonPressed(1) then
		repeat
			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(20,22))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(20,22))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(20,22))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(20,22))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(17,20))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(15,17))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-1,1),math.random(5,7))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(20,25),math.random(5,7))

			Sleep(math.random(90,105)) if not IsMouseButtonPressed(1) then break end
			MoveMouseRelative(math.random(-20,-15),math.random(3,5))
		

		until IsMouseButtonPressed(1)
	end
end
-- END OF NORMAL SCRIPT

-- END OF WTF WHERE IS MY RECOIL


end