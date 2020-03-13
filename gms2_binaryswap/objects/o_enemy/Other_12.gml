/// @description hurt state
if(hspd > 0)
	hspd -= 2
else if(hspd < 0)
	hspd += 2

if(alarm[2] < 0 && !place_meeting(x, y+1, o_object)) alarm[2] = iFrames
