/// @description canRadius
/*
if(canRadius)
	draw_set_color(c_lime)
else
	draw_set_color(c_red)
*/

var pc = (hp / maxHp) * 100
//draw_rectangle(25, 70, 85, 90, false) // radius ui
draw_healthbar(24, 25, 86, 46, pc, c_black, c_red, c_lime, 0, true, true)