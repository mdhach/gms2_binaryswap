vspd = 0
hspd = 0
walkspd = 4
grav = 1
jumpHeight = 25
canSwap = false // allows player to swap
canRadius = true // can check radius for swapping
radiusCD = 180 // cooldown for swapping
pushspd = 0.3 // speed for pushing objects

enum player {
	move,
	hurt
}

startState = player.move
state = startState