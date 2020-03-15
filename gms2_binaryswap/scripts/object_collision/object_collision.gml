///@description Push object

///@arg obj



var obj1 = argument0
var obj2 = argument1
var hcheck = (check_hcollision(obj2, o_block) && check_hcollision(obj2, o_enemy) && check_hcollision(obj2, o_object))

// horizontal collision check
with(obj1) {
	if(place_meeting(x+hspd, y, obj2)) {
		if(hcheck && obj2.moveable && !obj2.hollow) { // if no horizontal collision && moveable, push object
			x += hspd * pushspd * global.time
			obj2.x += hspd * pushspd * global.time
		} else if(hcheck && obj2.moveable && obj2.hollow) {
			x += hspd * global.time
			obj2.x += hspd * global.time
		}
		hspd = 0
	}
}

// vertical collision check
with(obj1) {
	if(place_meeting(x, y+vspd, obj2)) {
		while(!place_meeting(x, y+sign(vspd), obj2)) {
			y += sign(vspd)
		}
		vspd = 0
	}
}
