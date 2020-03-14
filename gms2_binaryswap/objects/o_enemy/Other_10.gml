/// @description move state
if(canMove) {
	if(hspd == 0)
		hspd = choose(-3, 3)
	if(alarm[5] < 0) alarm[5] = moveDuration
} else {
	if(alarm[4] < 0) alarm[4] = moveCD
}