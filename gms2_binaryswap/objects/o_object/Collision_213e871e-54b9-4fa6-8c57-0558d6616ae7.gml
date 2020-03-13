if(vspd > 0) {
	var height = y - other.y
	if(height < 0) {
		with(other) {
			hp -= other.fallDamage * other.vspd
			if(x < other.x) {
				hspd -= 7
			} else {
				hspd += 7
			}
			state = enemy.hurt
			canFlash = true
		}
	}
}