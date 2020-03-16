///@description Triggers conveyor to activate
// Intended for room controller.

///@arg trigger
///@arg 1d_array
///@arg direction
///@arg image_speed
///@arg groundspeed



var trigger = argument0
var args = argument1 // array of conveyor objects
var dir = argument2 // direction + if true, - if false
var xspeed = argument3 // image_speed of args objects
var gspeed = argument4 // refers to groundspd in o_hazard

if(dir == true) {
	for(var i = 0; i < array_length_1d(args); i++) {
		if(trigger.activated) {
			if(args[i].image_speed < 1) {
				args[i].image_speed = xspeed
				args[i].groundspd = gspeed
			}
		} else {
			if(args[i].image_speed != 0) args[i].image_speed = 0
		}
	}
}

if(dir == false) {
	for(var i = 0; i < array_length_1d(args); i++) {
		if(trigger.activated) {
			if(args[i].image_speed > -1) {
				args[i].image_speed = -xspeed
				args[i].groundspd = gspeed
			}
		} else {
			if(args[i].image_speed != 0) args[i].image_speed = 0
		}
	}
}