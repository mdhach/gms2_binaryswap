event_user(state)

vspd += grav

inRange = collision_circle(x, y, aggroDist, o_player, false, true) // checks if player is nearby

block_collision(o_interactable)
block_collision(o_object)
block_collision(o_block)
block_collision(o_enemy_block)

hspd *= global.time
vspd *= global.time

x += hspd
y += vspd

if(hp < 0) instance_destroy()