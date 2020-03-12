/// @description move state
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)
mouse_left = mouse_check_button_pressed(mb_left)
mouse_right = mouse_check_button(mb_right)

// get move integer and apply walkspd
var move = key_right - key_left
hspd = move * walkspd

// jump logic
if((place_meeting(x, y+1, o_block)) && key_jump) {
	vspd -= jumpHeight
}

// swap logic
if(mouse_right && canRadius) {
	if(mouse_left) {
		var target = o_block // init target to o_block
		
		// check mouse_left collision with specific target(s)
		if(collision_point(mouse_x, mouse_y, o_enemy, true, false)) {
			target = o_enemy // change target to specified
		} else if(collision_point(mouse_x, mouse_y, o_object, true, false)) {
			target = o_object // change target to specified
		}
		
		if(collision_circle(x, y, 300, target, false, true)) {
			canSwap = true
		} else {
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
			canRadius = false
		}
	}
} else {
	canSwap = false
	if(alarm[0] < 0) alarm[0] = radiusCD
}