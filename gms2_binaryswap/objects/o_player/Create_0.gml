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
iFrames = 15 // iframes
canBeHurt = true // make invul for iframes

// states
enum player {
	move,
	hurt
}

startState = player.move
state = startState