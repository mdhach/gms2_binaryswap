/// @description attack state
canFire = false
selfHurt = false
instance_create_layer(x, y, "Instances", o_projectile)
alarm[0] = 120
if(alarm[3] < 0) alarm[3] = safeFrames
state = enemy.move