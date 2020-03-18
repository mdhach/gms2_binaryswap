show_debug_message(alarm[0])
// draw radius
if(mouse_right && canRadius) {
	draw_set_color(c_lime)
	draw_circle(x, y, swapRadius, true)
	vRed = clamp(vRed + color_increment, 0.0, 255.0)
	vGreen = clamp(vGreen - color_increment, 0.0, 255.0)

} else if (swapRadius < maxRadius) {
	draw_set_color(c_red)
	draw_circle(x, y, swapRadius, true)
	
	vRed = clamp(vRed - color_increment/3, 0.0, 255.0)
	vGreen = clamp(vGreen + color_increment/3, 0.0, 255.0)
}
else {
	if (vRed != 0.0) {
		vRed = vRed > 0.0 ? clamp(vRed - color_increment, 0.0, 255.0) : clamp(vRed + color_increment, 0.0, 255.0)
	}
	if (vGreen != 255.0) {
		vGreen = vGreen < 255.0 ? clamp(vGreen + color_increment, 0.0, 255.0) : clamp(vGreen - color_increment, 0.0, 255.0)
	}
}

// draw flash
if(canFlash) {
	shader_set(shd_flash)
	draw_self()
	shader_reset()
	canFlash = false
	alarm[1] = 0.1 * room_speed
}
shader_set(shd_blend)
shader_set_uniform_f(uRed,vRed/255.0)
shader_set_uniform_f(uGreen, vGreen/255.0)
draw_self()
shader_reset()