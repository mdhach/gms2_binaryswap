key_up = keyboard_check(ord("W"))
key_left = keyboard_check(ord("A"))
key_down = keyboard_check(ord("S"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)

var move = key_right - key_left
hspd = move * walkspd

vspd = vspd + grav

block_collision(hspd, vspd, self, o_block)

x += hspd
y += vspd

// jump logic
if((place_meeting(x, y+1, o_block)) && key_jump) {
	vspd -= jumpHeight
}