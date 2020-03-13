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
if((place_meeting(x, y+1, o_block) || place_meeting(x, y+1, o_object)) && key_jump) {
	vspd -= jumpHeight
}

// swap logic
if(mouse_right && canRadius) {
	var inst = collision_circle(x, y, 300, o_swappable, false, true); // checks to see if the target is within radius
	if (inst) inst.canSwap = true
	
	if(mouse_left) {
		var target = instance_position( mouse_x, mouse_y, all ); // checks for any object at the mouse pointer

		// check of target has the 'canSwap' variable set to true
		if(variable_instance_get(target, "canSwap")) {
			var tempx = x
			var tempy = y
			x = target.x
			y = target.y-10
			target.x = tempx
			target.y = tempy-10
			target.canSwap = false
			canRadius = false
		}
	}
} else {
	canSwap = false
	if(alarm[0] < 0) alarm[0] = radiusCD
}