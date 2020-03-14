#region CONTROLS
/// @description move state
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)
mouse_left = mouse_check_button_pressed(mb_left)
mouse_right = mouse_check_button(mb_right)

// get move integer and apply walkspd
var move = key_right - key_left
hspd = move * walkspd
#endregion

#region JUMP LOGIC
jumpBuffer -= 1
if(jumpBuffer > 0 && key_jump) {
	if(mouse_right && canRadius) 
		jump = jumpHeight + (jumpHeight * (1-global.time))
	else jump = jumpHeight
	jumpBuffer = 0
} else jump = 0
#endregion

#region SWAP LOGIC
if(mouse_right && canRadius) {
	global.time = .3
	// shrink swap radius
	if(swapRadius > 0) {
		swapRadius -= shrinkRate
	}
	// CD if radius goes to 0
	if(swapRadius <= 0) {
		canRadius = false
		if(alarm[0] < 0) alarm[0] = (radiusCD - swapCD) // less CD if triggered by swapRadius
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
	ds_list_destroy(list) // destroy list

	if(mouse_left) {
		 // checks for any object at the mouse pointer
		var target = collision_circle(mouse_x, mouse_y, 50, o_swappable, false, true)
		
		// check of target has the 'withinRadius' variable set to true
		if(variable_instance_get(target, "withinRadius")) {
			if(!place_meeting(target.x, target.y-12, o_block)) { // check bad swap / upper collision
				var tempx = x
				var tempy = y
				x = target.x
				y = target.y-10
				target.x = tempx
				target.y = tempy-10
				target.withinRadius = false
				canRadius = false
			} else {
				canRadius = false
				if(alarm[0] < 0) alarm[0] = badSwapCD // lenient cd for bad swap
			}
		}
	}
} else {
	if(!canRadius && alarm[0] < 0) alarm[0] = radiusCD
	if(global.time < 1) {
		global.time += 0.05
	}
	if(swapRadius < maxRadius) {
		swapRadius += restoreRate
	}
}
#endregion

#region V CHECK
// vertical collision check for jumping
if(check_vcollision(self, o_block) || check_vcollision(self, o_object) || check_vcollision(self, o_interactable)) 
	jumpBuffer = maxJumpBuffer
#endregion