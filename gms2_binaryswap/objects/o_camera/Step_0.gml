// move to player
if(instance_exists(follow)) {
	xTo = follow.x
	yTo = follow.y
}

// update camera position
x += (xTo - x) / 25
y += (yTo - y) / 25

// clamp camera to room
x = clamp(x, view_w, room_width-view_w)
y = clamp(y, view_h, room_height-view_h)

// update view
camera_set_view_pos(cam, x-view_w, y-view_h)