///@description Platform collision. Allows player to jump through, but not fall through.

///@arg obj

// in progress...

var obj = argument0

// horizontal collision check
if (place_meeting(x+hspd, y, obj)) {
	while(!place_meeting(x+sign(hspd), y, obj)) {
		x += sign(hspd)
	}
	hspd = 0
}

// vertical collision check
if(place_meeting(x, y+vspd, obj)) {
	while(!place_meeting(x, y+sign(vspd), obj)) {
		y += sign(vspd)
	}
	vspd = 0
}
