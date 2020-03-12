key_exit = keyboard_check_pressed(vk_escape)
key_restart = keyboard_check_pressed(vk_backspace)

if(key_exit) game_end()
if(key_restart) game_restart()