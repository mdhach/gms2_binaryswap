vspd = 0 // vertical speed
hspd = 0 // height speed
walkspd = 4 // walking speed
grav = 1 // gravity
jumpHeight = 20 // height of jump
jumpBuffer = 0 // jump buffer
maxJumpBuffer = 10 // max jump buffer
maxRadius = 300 // max radius of swapping
swapRadius = maxRadius // radius of swapping
shrinkRate = 2 // rate at which radius shrinks
canRadius = true // can check radius for swapping
radiusCD = 180 // cooldown for swapping
pushspd = 0.3 // speed for pushing objects
canFlash = true // flash boolean

// states
enum player {
	move,
	hurt
}

startState = player.move
state = startState