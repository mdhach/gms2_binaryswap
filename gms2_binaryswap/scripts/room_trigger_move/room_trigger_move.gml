///@description Move object based on trigger.
// Intended for room controller.

///@arg trigger
///@arg object
///@arg object_y
///@arg amount
///@arg yspeed


var trigger = argument0
var object = argument1
var object_y = argument2
var amount = argument3
var yspeed = argument4

var target_y = object_y - amount

if(trigger.activated) {
		if(object.y > target_y) object.y -= yspeed
} else {
		if(object.y < object_y) object.y += yspeed
}