/// @description Pressure State
if(!playerOnly) {
	if(instance_exists(instance_place(x, y-6, o_object))) {
		var inst = instance_place(x, y-6, o_object)
		if(!inst.hollow) activated = true
	} else if(place_meeting(x, y-6, o_player)) activated = true
	else activated = false
} else if(playerOnly) {
	if(place_meeting(x, y-6, o_player)) activated = true
	else activated = false
}