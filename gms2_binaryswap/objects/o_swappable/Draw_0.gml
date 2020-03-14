if(variable_instance_get(id, "withinRadius") && variable_instance_get(id, "canSwap")) {
	draw_set_color(c_white)
	draw_circle(x, y, 50, true)
}
draw_self()