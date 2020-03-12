///@description Non-traversable collision

///@arg obj



var obj = argument0

// horizontal collision check
if (place_meeting(x+hspd, y, obj)) { // check if obj1 and obj are colliding
	while(!place_meeting(x+sign(hspd), y, obj)) { // check if no collision
		x += sign(hspd) // add 1 or -1
	}
	hspd = 0 // set hspd to 0
}

// vertical collision check
if(place_meeting(x, y+vspd, obj)) {
	while(!place_meeting(x, y+sign(vspd), obj)) {
		y += sign(vspd)
	}
	vspd = 0 // set vspd to 0
}