///@description Receives horizontal speed(hspd), vertical speed(vspd), and two objects to check collision.

///@arg hspd
///@arg vspd
///@arg obj
///@arg collider



var hspd = argument0
var vspd = argument1
var obj1 = argument2
var obj2 = argument3

// horizontal collision check
if (place_meeting(obj1.x+hspd, obj1.y, obj2)) { // check if obj1 and obj2 are colliding
	while(!place_meeting(obj1.x+sign(hspd), obj1.y, obj2)) { // check if no collision
		obj1.x += sign(hspd) // add 1 or -1
	}
	obj1.hspd = 0; // if obj1 and obj2 are colliding, set hspd to 0
}

// vertical collision check
if(place_meeting(obj1.x, obj1.y+vspd, obj2)) {
	while(!place_meeting(obj1.x, obj1.y+sign(vspd), obj2)) {
		obj1.y += sign(vspd)
	}
	obj1.vspd = 0; // if obj1 and obj2 are colliding, set vspd to 0
}