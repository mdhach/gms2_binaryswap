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
jumpBuffer -= 1
if(jumpBuffer > 0 && key_jump) {
	if(mouse_right && canRadius) 
		jump = jumpHeight + (jumpHeight * (1-global.time))
	else jump = jumpHeight
	jumpBuffer = 0
} else jump = 0

// swap logic
if(mouse_right && canRadius) {
	global.time = .3
	// shrink swap radius
	if(swapRadius > 0) {
		swapRadius -= shrinkRate
	}
	// CD if radius goes to 0
	if(swapRadius == 0) {
		canRadius = false
	}
	var list = ds_list_create() // create list to hold all objects
	
	// get all swappable objects within radius
	var inst = collision_circle_list(x, y, swapRadius, o_swappable, false, true, list, false)
	
	// set withinRadius to true for all objects in list
	if(inst > 0) {
		for(var i=0; i<inst; ++i) {
			list[| i].withinRadius = true
		}
	}
	
	if(mouse_left) {
		 // checks for any object at the mouse pointer
		var target = instance_position( mouse_x, mouse_y, all )
		
		// check of target has the 'withinRadius' variable set to true
		if(variable_instance_get(target, "withinRadius")) {
			var tempx = x
			var tempy = y
			x = target.x
			y = target.y-10
			target.x = tempx
			target.y = tempy-10
			target.withinRadius = false
			canRadius = false
			ds_list_destroy(list) // destroy list
		}
	}
} else {
	if(!canRadius && alarm[0] < 0) alarm[0] = radiusCD
	if(global.time < 1) {
		global.time += 0.05
	}
	if(swapRadius < maxRadius) {
		swapRadius += 5
	}
}

// vertical collision check for jumping
if(check_vcollision(self, o_block) || check_vcollision(self, o_object)) jumpBuffer = maxJumpBuffer