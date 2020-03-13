/// @description hurt state
if(hspd > 0)
	hspd -= 1
else if(hspd < 0)
	hspd += 1
else if(alarm[2] < 0)
	alarm[2] = invTime