if(sprite_index == s_checkpoint_inactive) image_angle += 3
else image_angle += 10

if(place_meeting(x, y, o_player)) {
	global.checkpoint = id
	global.checkpointX = x
	global.checkpointY = y
	global.checkpointR = room
}

if(global.checkpointR == room) {
	if(global.checkpoint == id) {
		sprite_index = s_checkpoint_active
	} else {
		sprite_index = s_checkpoint_inactive
	}
}