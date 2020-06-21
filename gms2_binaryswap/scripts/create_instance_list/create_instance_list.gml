/// @description adds instance to ds_list; accepts multiple/many instances

/// @arg list
/// @arg instance
/// @arg optional



var list = argument[0]
var inst = argument[1]

ds_list_add(list, inst)

if(argument_count > 2) {
	for(var i = 2; i < argument_count; i++) {
		ds_list_add(list, argument[i])
	}
}