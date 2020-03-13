var list = argument0
var findValue = argument1
var loop = 0

repeat(ds_list_size(list)) if(list[loop++] == findValue) return true

return false