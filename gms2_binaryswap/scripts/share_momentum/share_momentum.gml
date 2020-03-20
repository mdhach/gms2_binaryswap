///@description Allows object to match hspd if they overlap.
// Use in object end-step.

///@arg obj



var obj = argument0

if(instance_exists(instance_place(x, y+6, obj))) {
	var inst = instance_place(x, y+6, obj)
	if(inst.x != inst.xprevious) x += (inst.x - inst.xprevious)
}