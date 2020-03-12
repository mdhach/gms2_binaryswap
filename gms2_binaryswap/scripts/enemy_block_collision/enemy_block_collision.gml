///@description Similar to block_collision script, however it is used for enemies.
// Reverses hspd instead of setting to 0

///@arg obj



var obj = argument0


// horizontal collision check
if (place_meeting(x+hspd, y, obj)) { // check if colliding
	while(!place_meeting(x+sign(hspd), y, obj)) { // check if no collision
		x += sign(hspd) // add 1 or -1
	}
	hspd = -hspd // if collision, reverse the hspd
}

// vertical collision check
if(place_meeting(x, y+vspd, obj)) {
	while(!place_meeting(x, y+sign(vspd), obj)) {
		y += sign(vspd)
	}
	vspd = 0
}