instance_destroy()

if(state == item.restore) {
	other.hp += hp
}

if(state == item.superRadius) {
	other.maxRadius += maxRadius
}

if(state == item.radiusRate) {
	other.shrinkRate -= shrinkRate
	other.restoreRate += restoreRate
	other.radiusCD -= radiusCD
}