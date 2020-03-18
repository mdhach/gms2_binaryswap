event_user(state)

inRange = collision_circle(x, y, aggroDist, o_player, false, true) // checks if player is nearby

vspd += grav

block_collision(o_interactable)
block_collision(o_object)
block_collision(o_block)

hspd *= global.time
vspd *= global.time

x += hspd
y += vspd

if(hp < 0) instance_destroy()