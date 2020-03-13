hspd = 0
vspd = 0
walkspd = 6
grav = 4
hp = 10
canFire = true
canFlash = false
iFrames = 30

// states
enum enemy {
	move,
	attack,
	hurt
}

startState = enemy.move
state = startState