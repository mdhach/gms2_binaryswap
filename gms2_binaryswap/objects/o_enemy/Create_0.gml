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
safeFrames = 40 // time until enemy can self hurt
fireCD = 120 // time until enemy can fire again
attackDuration = 10 // time attack state lasts
moveCD = 120 // time until enemy can move
moveDuration = 30 // duration of movement
ff = true // friendly fire & self fire

// states
enum enemy {
	idle,
	move,
	attack,
	hurt
}

startState = enemy.idle
state = startState