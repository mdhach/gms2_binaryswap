event_inherited()
canSwap = false
moveable = false
fallDamage = 0

// speeds
grav = 0
x_spd = 0
y_spd = 0

// distance to travel
dis_left = 0
dis_right = 0
dis_up = 0
dis_down = 0

// target
x_left = x - (sprite_width * dis_left)
x_right = x + (sprite_width * dis_right)
y_upper = y - (sprite_width * dis_up)
y_lower = y + (sprite_width * dis_down)