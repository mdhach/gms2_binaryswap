vspd += grav

block_collision(o_block)
block_collision(o_player)
block_collision(o_object)
block_collision(o_interactable)

if(destructible)
	if(hp <= 0)
		instance_destroy()

x += hspd
y += vspd