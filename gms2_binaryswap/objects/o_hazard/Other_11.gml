/// @description Conveyor State
if(place_meeting(x, y-8, o_player)) {
	with(o_player) {
		if(canBeHurt) {
			state = player.hurt
			hp -= other.damage		
		}
	}
}

if(instance_place(x, y, o_enemy)) {
	var inst = instance_place(x, y, o_enemy)
	with(inst) {
		if(canBeHurt) {
			state = enemy.hurt
			hp -= other.damage
		}
	}
}

if(instance_place(x, y, o_object)) {
	var inst = instance_place(x, y-6, o_object)
	if(inst.destructible) {
		instance_destroy(inst)
	}
	else {
		with(inst) {
			if(!place_meeting(x+1, y, o_object) && !place_meeting(x+1, y, o_block)) {
				show_debug_message(other.image_speed)
				if(other.image_speed > 0) x += other.groundspd
				else {
					if(other.image_speed < 0)
						x -= other.groundspd
				}
			}
		}
	}
}
