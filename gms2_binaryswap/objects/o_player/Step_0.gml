key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)
mouse_left = mouse_check_button_pressed(mb_left)

// get move integer and apply walkspd
var move = key_right - key_left
hspd = move * walkspd

// apply gravity to vspd
vspd = vspd + grav

block_collision(hspd, vspd, self, o_block)

// apply hspd and vspd to x and y
x += hspd
y += vspd

// jump logic
if((place_meeting(x, y+1, o_block)) && key_jump) {
	vspd -= jumpHeight
}

// swap logic
if(mouse_left) {
	if(collision_point(mouse_x, mouse_y, o_enemy, true, false)) {
		var tempx = x
		var tempy = y
		x = o_enemy.x
		y = o_enemy.y-10
		o_enemy.x = tempx
		o_enemy.y = tempy-10
	}
}