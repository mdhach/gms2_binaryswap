event_user(state)

vspd += grav

block_collision(o_interactable)
block_collision(o_object)
block_collision(o_block)

if(inRange && canAttack) state = enemy.attack

hspd *= global.time
vspd *= global.time

x += hspd
y += vspd

if(hp < 0) instance_destroy()