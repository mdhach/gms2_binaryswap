// draws swappable objects
if (variable_instance_get(id, "withinRadius") && variable_instance_get(id, "canSwap") && 
	collision_point(o_player.x, o_player.y-o_player.sprite_height, all, false, true) < 0 && 
	collision_point(x, y-sprite_height, all, false, true) < 0) {
	draw_set_color(c_white)
	draw_circle(x, y, 50, true)
}
draw_self()