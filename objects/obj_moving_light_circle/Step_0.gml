if instance_exists(follow){
	x = follow.x + lengthdir_x(distance, follow.image_angle + xangleoffset)
	y = follow.y + lengthdir_y(distance, follow.image_angle + yangleoffset)
} else {
	instance_destroy()
}