///@description Push object

///@arg obj



var obj = argument0

// horizontal collision check
if (place_meeting(x+hspd, y, obj)) { // check collision
	hspd *= pushspd // appy pushspd
	obj.hspd = hspd
} else {
	obj.hspd = 0
}

// vertical collision check
if(place_meeting(x, y+vspd, obj)) {
	while(!place_meeting(x, y+sign(vspd), obj)) {
		y += sign(vspd)
	}
	vspd = 0
}
