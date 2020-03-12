key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)
mouse_left = mouse_check_button_pressed(mb_left)
mouse_right = mouse_check_button(mb_right)

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
if(mouse_right) {
	if(mouse_left) {
		var target = o_block // init target to o_block
		
		// check mouse_left collision with specific target(s)
		if(collision_point(mouse_x, mouse_y, o_enemy, true, false) && collision_circle(x, y, 300, o_enemy, false, true)) {
			target = o_enemy // change target to specified
			canSwap = true
		}
		else {
			canSwap = false
		}
		
		// swap with target logic
		if((target != o_block) && canSwap) {
			var tempx = x
			var tempy = y
			x = target.x
			y = target.y-10
			target.x = tempx
			target.y = tempy-10
		}
	}
} else {
	canSwap = false
}