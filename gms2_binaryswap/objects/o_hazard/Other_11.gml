/// @description Ground State
if(place_meeting(x, y-6, o_player)) {
	with(o_player) {
		if(canBeHurt) {
			state = player.hurt
			hp -= other.damage		
		}
	}
}

if(instance_place(x, y-6, o_object)) {
	var inst = instance_place(x, y-6, o_object)
	if(inst.destructible) {
		instance_destroy(inst)
	}
	else {
		with(inst) {
			if(!place_meeting(x+1, y, o_object) && !place_meeting(x+1, y, o_block)) x += 0.1
		}
	}
}
