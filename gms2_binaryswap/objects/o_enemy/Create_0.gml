event_inherited()
hspd = 0
vspd = 0
walkspd = 6
grav = 4
hp = 10
canFire = true
canFlash = false
iFrames = 30
aggroDist = 500 // aggro distance
selfHurt = false // projectile can harm enemy
safeFrames = 30 // time until enemy can self hurt
canMove = true // enemy can move
moveCD = 120
moveDuration = 30

// states
enum enemy {
	move,
	attack,
	hurt
}

startState = enemy.move
state = startState