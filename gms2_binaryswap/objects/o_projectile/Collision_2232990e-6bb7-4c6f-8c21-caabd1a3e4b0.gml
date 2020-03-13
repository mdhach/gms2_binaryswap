instance_destroy()
with(other) {
	state = player.hurt
	canFlash = true
	hp -= other.damage
	if(other.x > x)
		hspd -= 15
	else
		hspd += 15
	vspd -= 10
}
