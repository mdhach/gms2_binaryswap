/// @description Lever State
if(collision_circle(x, y, 25, o_player, false, true) && !activated) {
	with(o_player) {
		if(mouse_left && collision_circle(mouse_x, mouse_y, 25, other, false, true)) {
			other.activated = true
			if(other.alarm[0] < 0) other.alarm[0] = other.reuseTime
		}
	}
		
}