/// @description Platform State
if(place_meeting(x, y-6, o_player)) {
	if(o_player.vspd != 0) o_player.vspd = 0
	o_player.vspd -= 30
}
if(!playerOnly) {
	if(instance_exists(instance_place(x, y-6, o_object))) {
		var inst = instance_place(x, y-6, o_object)
		if(inst.hollow) {
			if(inst.vspd != 0) inst.vspd = 0
			inst.vspd -= 20
		}
	}
}