/// @description hurt state
if(alarm[2] < 0) {
	canBeHurt = false
	canFlash = true
	if(vspd >= 0)
		vspd -= 20
	alarm[2] = iFrames
}

if(hspd > 0)
	hspd -= 1
else
	hspd += 1