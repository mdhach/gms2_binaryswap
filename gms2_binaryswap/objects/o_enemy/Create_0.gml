event_inherited()
hspd = 0
vspd = 0
walkspd = 6
grav = 4
hp = 10
canAttack = true // check if enemy can attack
canFlash = false // check if enemy can flash (iframes)
iFrames = 30 // invulnerable frames
aggroDist = 500 // aggro distance
selfHurt = false // projectile can harm enemy
safeFrames = 30 // time until enemy can self hurt
attackCD = 120 // time until enemy can attack again
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