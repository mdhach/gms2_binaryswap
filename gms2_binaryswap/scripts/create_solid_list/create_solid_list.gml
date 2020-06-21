/// @description adds all children of object in room to ds_list

/// @arg list
/// @arg object



var list = argument0
var obj = argument1

for(var i = 0; i < instance_number(obj); i += 1) {
	ds_list_add(list, instance_find(obj, i))
}