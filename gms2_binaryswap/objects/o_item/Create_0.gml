hp = 0
maxRadius = 0
shrinkRate = 0
restoreRate = 0
radiusCD = 0

// item states
enum item {
	nothing, // does nothing
	restore, // restore hp
	superRadius, // radius area
	radiusRate // shrink, restore, and cd
}

startState = item.nothing
state = startState