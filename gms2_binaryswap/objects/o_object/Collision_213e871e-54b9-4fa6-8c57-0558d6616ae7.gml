if(vspd > 0) {
	var height = y - other.y
	
	if(height < 0) {
		with(other) {
			state = enemy.hurt
			canFlash = true
			if(x < other.x) {
				hspd -= 10
			} else {
				hspd += 10
			}
			hp -= other.fallDamage * other.vspd
		}
	}
}