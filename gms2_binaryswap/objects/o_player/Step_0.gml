event_user(state)

// apply gravity to vspd
vspd += grav

block_collision(o_block)
object_collision(o_object)

// apply hspd and vspd to x and y
x += hspd
y += vspd