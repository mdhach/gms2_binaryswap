///@description Push object

///@arg obj



var obj = argument0
var hcheck = (!check_hcollision(obj, o_block) && !check_hcollision(obj, o_enemy))

// horizontal collision check
if(place_meeting(x+hspd, y, obj)) { // check collision
	if(hcheck) { // if no horizontal collision, push object
		x += hspd * pushspd
		obj.x += hspd * pushspd
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