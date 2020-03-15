event_user(state)

if(canRadius) sprite_index = s_player_g
else sprite_index = s_player_r

// apply gravity to vspd
vspd += grav - jump

block_collision(o_block)
with(o_object) {
	object_collision(other, id)
}
block_collision(o_interactable)

if(hp > maxHp) hp = maxHp

if(hp <= 0) instance_destroy()

// apply global time to speeds
hspd *= global.time
vspd *= global.time

// clamp to prevent super speed
hspd = clamp(hspd, -50, 50)
if(!mouse_right) {
	vspd = clamp(vspd, -20, 30)
}
else if(mouse_right) {
	vspd = clamp(vspd, -50, 30)
}

// apply hspd and vspd to x and y
x += hspd
y += vspd