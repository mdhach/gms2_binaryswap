///@description Checks horizontal collision
// Returns boolean

///@arg obj1
///@arg obj2



var obj1 = argument0
var obj2 = argument1

if(!place_meeting(obj1.x+4, obj1.y, obj2) && !place_meeting(obj1.x-4, y, obj2)) {
	return false
} else {
	return true
}