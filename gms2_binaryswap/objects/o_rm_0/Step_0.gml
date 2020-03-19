#region rm_0_Event 1: Move block
room_trigger_move(e1_trigger, e1_object, e1_object_y, 200, 10)
#endregion

#region rm_0_Event 2: Move block
room_trigger_move(e2_trigger, e2_object, e2_object_y, 200, 10)
#endregion

#region rm_0_Event 3: Backtrack
if(e3_trigger_inst.activated) {
	o_player.x = 3565
	o_player.y = 250
}
#endregion

#region rm_0_Event 4: Open Level
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

#region rm_0_Event 5: Trigger Block Spawn
if(e5_inst_trigger.activated && !spawned) {
	instance_create_layer(1632, 1120, "Instances", o_object_stable)
	spawned = true
}
#endregion

#region rm_0_Event 6: Move Block
room_trigger_move(e6_trigger, e6_object, e6_object_y, 200, 10)
#endregion

#region rm_0_Event 7: Move Block
room_trigger_move(e7_trigger, e7_object, e7_object_y, 200, 10)
#endregion

#region rm_0_Event 8: Activate Conveyor
room_activate_conveyor(e8_trigger_inst, e8_hazard_array, true, 5, 0.5)
#endregion

#region rm_0_Event 9: Move Block
room_trigger_move(e9_trigger, e9_object, e9_object_y, 200, 10)
#endregion