/// @description attack state
event_inherited()

if(sprite_index == move_sprite_r) sprite_index = atk_sprite_r
else if(sprite_index == move_sprite_l) sprite_index = atk_sprite_l

selfHurt = false

if(alarm[0] < 0) {
	var inst = instance_create_layer(x, y, "Projectiles", projectile)
	if(!projectileSwap) {
		with(inst) canSwap = false
	}
	alarm[0] = attackCD
	if(alarm[3] < 0) alarm[3] = safeFrames
}