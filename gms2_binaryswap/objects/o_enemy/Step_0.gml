event_user(state)

vspd += grav

block_collision(o_block)
block_collision(o_object)

if(collision_circle(x, y, aggroDist, o_player, false, true) && canFire) state = enemy.attack

x += hspd
y += vspd

if(hp < 0) instance_destroy()