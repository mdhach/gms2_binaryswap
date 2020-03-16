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
			if(!place_meeting(x+1, y, o_object) && !place_meeting(x+1, y, o_block)) {
				show_debug_message(other.image_speed)
				if(other.image_speed == 1) x += 0.1
				else x -= 0.1
			}
		}
	}
}
