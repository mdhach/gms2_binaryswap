key_exit = keyboard_check_pressed(vk_escape)
key_restart = keyboard_check_pressed(vk_backspace)
key_fullscreen = keyboard_check_pressed(vk_f6)
key_health = keyboard_check_pressed(vk_f7)

if(key_exit) game_end()
if(key_restart) game_restart()
if(key_fullscreen) 
	if(!window_get_fullscreen())
		window_set_fullscreen(true)
	else window_set_fullscreen(false)
if(key_health) {
	with(o_player) {
		maxHp = 9999999
		hp = 9999999
	}
}

if(!instance_exists(o_player)) {
	if(global.checkpointR != 0) {
		room_goto(global.checkpointR)
	} else {
		room_restart()
	}
}