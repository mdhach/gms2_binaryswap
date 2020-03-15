/// @description 

// health
with(o_player) {
	draw_set_colour(c_white)
	draw_text(25, 25, "Health")
	var pc = (hp / maxHp) * 100
	draw_healthbar(25, 50, 205, 80, pc, c_black, c_red, c_lime, 0, true, true)
}

// ability
with(o_player) {
	var cooldown = (swapRadius / maxRadius) * 100;
	if (canRadius) {
		draw_healthbar(215, 50, 395, 80, cooldown, c_black, c_red, c_ltgray, 0, true, true)
	}
	else {
		draw_healthbar(215, 50, 395, 80, cooldown, c_black, c_red, c_red, 0, true, true)
	}
}