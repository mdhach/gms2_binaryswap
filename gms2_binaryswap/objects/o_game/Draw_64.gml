/// @description 

// health
draw_set_colour(c_white)
draw_text(25, 25, "Health")
var pc = (playerObj.hp / playerObj.maxHp) * 100
draw_healthbar(25, 50, 205, 80, pc, c_black, c_red, c_lime, 0, true, true)

// ability
var cooldown = (playerObj.swapRadius / playerObj.maxRadius) * 100;
if (playerObj.canRadius) {
	draw_healthbar(215, 50, 395, 80, cooldown, c_black, c_red, c_ltgray, 0, true, true)
}
else {
	draw_healthbar(215, 50, 395, 80, cooldown, c_black, c_red, c_red, 0, true, true)
}
