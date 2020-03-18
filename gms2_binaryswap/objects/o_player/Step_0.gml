event_user(state)

if(canRadius) sprite_index = s_player_g
else sprite_index = s_player_r

// apply gravity to vspd
vspd += grav - jump

block_collision(o_block)
with(o_object) {
	object_collision(other, id)
}
platform_collision(o_platform)
block_collision(o_interactable)

if(hp > maxHp) hp = maxHp

if(hp <= 0) instance_destroy()

hspd *= global.time
vspd *= global.time

// apply hspd and vspd to x and y
x += hspd
y += vspd