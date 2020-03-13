instance_destroy()
with(other) {
	if(state != player.hurt) {
		state = player.hurt
		canFlash = true
		hp -= other.damage
		if(other.x > x)
			hspd -= 25
		else
			hspd += 25
		vspd -= 10
	}
}
