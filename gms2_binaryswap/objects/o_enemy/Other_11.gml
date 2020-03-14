/// @description attack state
canMove = false
canFire = false
selfHurt = false
instance_create_layer(x, y, "Instances", o_projectile)
alarm[0] = 120
if(alarm[3] < 0) alarm[3] = safeFrames
if(alarm[4] < 0) alarm[4] = moveCD
state = enemy.move