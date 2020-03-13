draw_self()

// draw radius
if(mouse_right && canRadius) {
	draw_set_color(c_white)
	draw_circle(x, y, swapRadius, true)
}

// draw flash
if(!canRadius && canFlash) {
	shader_set(shd_radius_cd)
	draw_self()
	shader_reset()
	canFlash = false
	alarm[1] = 0.1 * room_speed
}