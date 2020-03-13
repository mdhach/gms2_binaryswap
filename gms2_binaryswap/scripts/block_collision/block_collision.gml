///@description Non-traversable collision

///@arg obj



var obj = argument0

// horizontal collision check
if (place_meeting(id.x+hspd, id.y, obj)) {
	while(!place_meeting(id.x+sign(hspd), id.y, obj)) { // check if no collision
		id.x += sign(hspd) // add 1 or -1
	}
	hspd = 0 // set hspd to 0
}

// vertical collision check
if(place_meeting(id.x, id.y+vspd, obj)) {
	while(!place_meeting(id.x, id.y+sign(vspd), obj)) {
		id.y += sign(vspd)
	}
	vspd = 0 // set vspd to 0
}