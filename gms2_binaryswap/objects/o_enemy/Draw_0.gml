draw_self()
// draw flash
if(canFlash) {
	shader_set(shd_flash)
	draw_self()
	shader_reset()
	canFlash = false
	alarm[1] = 0.1 * room_speed
}