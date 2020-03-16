/// @description 

if(collision_circle(x, y, 25, o_player, false, true) && showUse) {
	var pos = sprite_get_height(o_player) + 15 // Ensures that the sprite is displayed above the player
	draw_sprite(s_letter_e, 0, x, y - pos)
}
draw_self()
