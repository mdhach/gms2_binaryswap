if(state == interactable.pressure && usable) {
	if(place_meeting(x, y-2, o_player) || place_meeting(x, y-2, o_object)) activated = true
	else activated = false
	
	if(!reusable) usable = false
}