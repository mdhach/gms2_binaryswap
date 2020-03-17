if(instance_exists(instance_place(x, y+6, o_object))) {
	var inst = instance_place(x, y+6, o_object)
	if(inst.x != inst.xprevious) x += (inst.x - inst.xprevious)
}