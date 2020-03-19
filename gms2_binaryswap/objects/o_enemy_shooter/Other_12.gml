/// @description attack state
event_inherited()

if(sprite_index == move_sprite_r) sprite_index = atk_sprite_r
else if(sprite_index == move_sprite_l) sprite_index = atk_sprite_l

selfHurt = false

if(alarm[0] < 0) {
	instance_create_layer(x, y, "Projectiles", o_slow_bullet)
	alarm[0] = attackCD
	if(alarm[3] < 0) alarm[3] = safeFrames
	//if(alarm[4] < 0) alarm[4] = attackDuration
}