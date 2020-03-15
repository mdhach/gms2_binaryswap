event_user(state)

if(vcount <= -20) {
	state = osc.rise
} else if(vcount >= 20) {
	state = osc.fall
}

y += vspd