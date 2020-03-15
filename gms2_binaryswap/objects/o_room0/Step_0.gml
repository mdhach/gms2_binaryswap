#region room0_Event 1: Move block
if(e1_trigger_inst.activated) {
	if(e1_block_inst.y > e1_target_y) e1_block_inst.y -= 10
} else {
	if(e1_block_inst.y < e1_block_inst_y) e1_block_inst.y += 10
}
#endregion

#region room0_Event 2: Move block
if(e2_trigger_inst.activated) {
	if(e2_block_inst.y > e2_target_y) e2_block_inst.y -= 10
} else {
	if(e2_block_inst.y < e2_block_inst_y) e2_block_inst.y += 10
}
#endregion

#region room0_Event 3: Backtrack
if(e3_trigger_inst.activated) {
	o_player.x = 3565
	o_player.y = 250
}
#endregion

#region room0_Event 4: Open Level
if(e4_trigger_inst.activated) {
	// block 1
	if(e4_block1_inst.image_yscale > e4_block1_target_yscale)
		e4_block1_inst.image_yscale -= 0.1
	if(e4_block1_inst.y < e4_block1_target_y)
		e4_block1_inst.y += 5
	// block 2
	if(e4_block2_inst.image_yscale > e4_block2_target_yscale)
		e4_block2_inst.image_yscale -= 0.1
	if(e4_block2_inst.y < e4_block2_target_y)
		e4_block2_inst.y += 5
}
#endregion

#region room0_Event 5: Trigger Block Spawn
if(e5_inst_trigger.activated && !spawned) {
	instance_create_layer(1632, 1120, "Instances", o_object_stable)
	spawned = true
}
#endregion

#region room0_Event 6: Move Block
if(e6_trigger_inst.activated) {
	if(e6_block_inst.y > e6_target_y) e6_block_inst.y -= 10
} else {
	if(e6_block_inst.y < e6_block_inst_y) e6_block_inst.y += 10
}
#endregion