if(state = enemy.attack) {
	with(o_player) {
		if(canBeHurt) {
			state = player.hurt
			hp -= other.damage
			if(other.x > x)
				hspd = -15
			else
				hspd = 15
		}
	}
}