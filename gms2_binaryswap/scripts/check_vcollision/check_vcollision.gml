///@description Checks horizontal collision
// Returns boolean

///@arg obj1
///@arg obj2



var obj1 = argument0
var obj2 = argument1

if(!place_meeting(obj1.x, obj1.y+4, obj2) && !place_meeting(obj1.x, y-4, obj2)) {
	return false
} else {
	return true
}