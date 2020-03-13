with(other) {
	if(selfHurt) {
		instance_destroy(other)
		state = enemy.hurt
		canFlash = true
		hp -= other.damage
		if(other.x > x)
			hspd -= 10
		else
			hspd += 10
		vspd -= 5
	}
}