/// @description creates array with arguments and returns it; accepts multiple/many instances

/// @arg instance
/// @arg optional



var arr;
arr[0] = argument[0]

if(argument_count > 1) {
	for(var i = 1; i < argument_count; i++) {
		arr[i] = argument[i]
	}
}

return arr