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
	if(inst.destructible)
		instance_destroy(inst)
	else if(!instance_place(inst.x+6, y, o_block) || !instance_place(inst.x+6, y, o_object)) 
		inst.x += 0.1
}