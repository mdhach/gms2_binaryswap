/// @description attack state
canFire = false
instance_create_layer(x, y, "Instances", o_projectile)
alarm[0] = 120
state = enemy.move