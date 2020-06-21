/// @description destroys ds_list

/// @arg list



var list = argument0

if(ds_exists(list, ds_type_list)) {
	for(var i = 0; i < ds_list_size(list); i++) {
		instance_destroy(list[| i])
	}
	ds_list_destroy(list)
}