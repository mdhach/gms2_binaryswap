///@description attack state
if(sprite_index == s_enemy_m_r) sprite_index = s_enemy_a_r
else if(sprite_index == s_enemy_m_l) sprite_index = s_enemy_a_l

selfHurt = false

if(canFire) {
	instance_create_layer(x, y, "Projectiles", o_projectile)
	canFire = false
}
if(alarm[0] < 0) alarm[0] = fireCD
if(alarm[3] < 0) alarm[3] = safeFrames
if(alarm[4] < 0) alarm[4] = attackDuration