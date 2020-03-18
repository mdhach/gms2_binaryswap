event_inherited()
hspd = 0
vspd = 0
walkspd = 3
grav = 4
hp = 10
canAttack = true // check if enemy can attack
canFlash = false // check if enemy can flash (iframes)
iFrames = 30 // invulnerable frames
aggroDist = 200 // aggro distance
selfHurt = false // projectile can harm enemy
safeFrames = 30 // time until enemy can self hurt
attackCD = 120 // time until enemy can attack again
attackDuration = 10 // time attack state lasts
moveCD = 120 // time until enemy can move
moveDuration = 30 // duration of movement
ff = true // friendly fire & self fire
inRange = noone // checks if player is nearby

// modular sprites
move_sprite_r = noone
move_sprite_l = noone
atk_sprite_r = noone
atk_sprite_l = noone

// states
enum enemy {
	idle,
	move,
	attack,
	hurt
}

startState = enemy.idle
state = startState