/// @description move state
event_inherited()

if(hspd == 0)
	hspd = choose(-walkspd, walkspd)
if(alarm[5] < 0) alarm[5] = moveDuration

if(hspd > 0) sprite_index = move_sprite_r
else if(hspd < 0) sprite_index = move_sprite_l