if(vspd > 0) {
	var height = y - other.y
	if(height < 0) {
		with(other) {
			hp -= other.fallDamage * other.vspd
			if(x < other.x) {
				hspd -= 15
			} else {
				hspd += 15
			}
		}
	}
}