/// @description hurt state
if(hspd > 0)
	hspd -= 1
else if(hspd < 0)
	hspd += 1
else {
	alarm[2] = invTime
}