event_inherited()
if sign(image_yscale) == 1{
	offset = 30
} else {
	offset = -30
}


obj_setup_light.create_light_follow_circle(depth,2,c_orange,20,id,25,offset,offset)