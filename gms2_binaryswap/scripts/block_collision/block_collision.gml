///@description Non-traversable collision

///@arg obj



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

// unstuck
if(place_meeting(x, y, obj)) {
	for(var i = 0; i<1000; ++i) {
		// right
		if(!place_meeting(x+i, y, obj)) {
			x += i
			break
		}
		// left
		if(!place_meeting(x-i, y, obj)) {
			x -= i
			break
		}
		// up
		if(!place_meeting(x, y-i, obj)) {
			y -= i
			break
		}
		// down
		if(!place_meeting(x, y+i, obj)) {
			y += i
			break
		}
		// top right
		if(!place_meeting(x+i, y-i, obj)) {
			x += i
			y -= i
			break
		}
		// top left
		if(!place_meeting(x-i, y-i, obj)) {
			x -= i
			y -= i
			break
		}
		// bottom right
		if(!place_meeting(x+i, y+i, obj)) {
			x += i
			y += i
			break
		}
		// bottom left
		if(!place_meeting(x-i, y+i, obj)) {
			x -= i
			y += i
			break
		}
	}
}