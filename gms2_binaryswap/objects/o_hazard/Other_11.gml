/// @description Ground State
if(place_meeting(x, y-6, o_player)) {
	with(o_player) {
		if(canBeHurt) {
			state = player.hurt
			hp -= other.damage		
		}
	}
}