if(x <= x_left) 
	hspd = x_spd
else if(x >= x_right)
	hspd = -x_spd

if(y >= y_lower) 
	vspd = -y_spd
else if(y <= y_upper) 
	vspd = y_spd
	
x += hspd
y += vspd