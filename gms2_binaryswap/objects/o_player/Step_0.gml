event_user(state)

// apply gravity to vspd
vspd += grav - jump

block_collision(o_block)
with(o_object) {
	object_collision(other, id)
}

if(hp > maxHp) hp = maxHp

if(hp <= 0) instance_destroy()

vspd = clamp(vspd, -50, 50)

// apply hspd and vspd to x and y
x += hspd * global.time
y += vspd * global.time
show_debug_message(vspd * global.time)