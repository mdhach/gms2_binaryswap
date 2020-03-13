if(vspd > 0) {
	var height = y - other.y
	if(height < 0) {
		with(other) {
			if(state != enemy.hurt) {
				state = enemy.hurt
				canFlash = true
				hp -= other.fallDamage * other.vspd
				if(x < other.x) {
					hspd -= 7
				} else {
					hspd += 7
				}
			}
		}
	}
}