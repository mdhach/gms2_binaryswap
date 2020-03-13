hspd = 0
vspd = 0
walkspd = 6
grav = 4
hp = 10
canFire = true
canFlash = false
invTime = 1

// states
enum enemy {
	move,
	attack,
	hurt
}

startState = enemy.move
state = startState