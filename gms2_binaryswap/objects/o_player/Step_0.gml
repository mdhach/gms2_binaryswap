event_user(state)

// apply gravity to vspd
vspd += grav

block_collision(o_block)
with(o_object) {
	object_collision(other, id)
}


// apply hspd and vspd to x and y
x += hspd
y += vspd