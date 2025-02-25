vspd = 0 // vertical speed
hspd = 0 // height speed
walkspd = 4 // walking speed
grav = 1 // gravity
jump = 0 // applied to vspd & grav in step
jumpHeight = 20 // height of jump
jumpBuffer = 0 // jump buffer
maxJumpBuffer = 10 // max jump buffer
maxRadius = 200 // max radius of swapping
swapRadius = maxRadius // radius of swapping
shrinkRate = 4 // rate at which radius shrinks
restoreRate = 2 // rate at which radius restores to max
canRadius = true // can check radius for swapping
radiusCD = 180 // cooldown for swapping
swapCD = 60 // leniency for radiusCD by shrinkRate
badSwapCD = 30 // leniency for bad swap
pushspd = 0.3 // speed for pushing objects
canFlash = false // flash boolean
maxHp = 30 // maximum health points
hp = maxHp // current health points
iFrames = 30 // iframes
canBeHurt = true // make invul for iframes

if(global.checkpointR == room) {
	x = global.checkpointX
	y = global.checkpointY
}

// Values Used For shd_blend
uRed = shader_get_uniform(shd_blend, "v_red");
uGreen = shader_get_uniform(shd_blend, "v_green");
uBlue = shader_get_uniform(shd_blend, "v_blue");

// states
enum player {
	move,
	hurt
}

startState = player.move
state = startState