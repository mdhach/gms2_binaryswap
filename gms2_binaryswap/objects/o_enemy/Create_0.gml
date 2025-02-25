event_inherited()
hspd = 0
vspd = 0
walkspd = 3
grav = 4
hp = 10
canFlash = false // check if enemy can flash (iframes)
iFrames = room_speed * 1 // invulnerable frames
aggroDist = 500 // aggro distance
selfHurt = false // projectile can harm enemy
safeFrames = 30 // time until enemy can self hurt
attackCD = 120 // time until enemy can attack again
moveCD = 120 // time until enemy can move
moveDuration = 30 // duration of movement
ff = true // friendly fire & self fire
inRange = noone // checks if player is nearby
damage = 0 // damage enemy has
canBeHurt = true

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