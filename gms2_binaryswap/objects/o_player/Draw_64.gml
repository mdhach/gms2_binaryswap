/// @description canRadius
if(canRadius)
	draw_set_color(c_lime)
else
	draw_set_color(c_red)

var pc = (hp / maxHp) * 100
draw_rectangle(25, 90, 85, 110, false)
draw_healthbar(24, 45, 86, 66, pc, c_black, c_red, c_lime, 0, true, true)