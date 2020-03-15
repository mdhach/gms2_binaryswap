instance_destroy()
with(other) {
	if(canBeHurt) {
		state = player.hurt
		hp -= other.damage
		if(other.x > x)
			hspd = -15
		else
			hspd = 15
	}
}
