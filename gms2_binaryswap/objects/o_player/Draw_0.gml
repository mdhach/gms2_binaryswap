draw_self()

// values for Red/Green
var posPercent = swapRadius/maxRadius;
var negPercent = 1 - (swapRadius/maxRadius);

// draw radius
if(mouse_right && canRadius) {
	draw_set_color(c_lime)
	draw_circle(x, y, swapRadius, true)
} else if (swapRadius < maxRadius) {
	draw_set_color(c_red)
	draw_circle(x, y, swapRadius, true)
}
if (!canRadius) {
	negPercent = 1.0;
	posPercent = 0.0;
}

// draw flash
if(canFlash) {
	shader_set(shd_flash)
	draw_self()
	shader_reset()
	canFlash = false
	alarm[1] = 0.1 * room_speed
}

// draw radius indicator
if(alarm[1] < 0) {
	shader_set(shd_blend)
	shader_set_uniform_f(uRed,negPercent)
	shader_set_uniform_f(uGreen, posPercent)
	shader_set_uniform_f(uBlue, 0.0)
	draw_self()
	shader_reset()
}