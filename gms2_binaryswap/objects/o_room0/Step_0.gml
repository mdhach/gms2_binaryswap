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