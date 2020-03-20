/// @description hurt state
if(hspd > 0)
	hspd -= 1
else if(hspd < 0)
	hspd += 1

if(alarm[2] < 0) {
	canBeHurt = false
	canFlash = true
	vspd = -15
	alarm[2] = iFrames
}