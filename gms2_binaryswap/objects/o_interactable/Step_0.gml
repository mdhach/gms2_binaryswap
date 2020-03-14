if(state == interactable.pressure) {
	if(place_meeting(x, y-6, o_player) || place_meeting(x, y-6, o_object)) activated = true
	else activated = false
}

if(state == interactable.lever) {
	if(collision_circle(x, y, 25, o_player, false, true)) {
		with(o_player) {
			if(mouse_left && collision_circle(mouse_x, mouse_y, 25, other, false, true)) {
				other.activated = true
			}
		}
	}
}