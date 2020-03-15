/// @description Pressure State
if(playerOnly) {
	if(place_meeting(x, y-6, o_player)) activated = true
	else activated = false
} else {
	if(place_meeting(x, y-6, o_player) || (place_meeting(x, y-6, o_object) && !o_object.hollow)) 
		activated = true
	else activated = false
}