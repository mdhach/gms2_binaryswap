vspd += grav

block_collision(o_block)
block_collision(o_object)

x += hspd
y += vspd

if(hp < 0) instance_destroy()