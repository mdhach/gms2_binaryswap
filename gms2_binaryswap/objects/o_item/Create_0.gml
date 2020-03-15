event_inherited()
hp = 0
maxRadius = 0
shrinkRate = 0
restoreRate = 0
radiusCD = 0
itemDuration = 0
vspd = 0
vcount = 0

enum osc {
	none,
	rise,
	fall
}

startingState = osc.rise
state = startingState