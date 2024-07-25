if mouse_check_button(mb_left){
	x = mouse_x
	y = mouse_y
}	
else {
	if place_meeting(x,y,UI_craft_spot){
		UI_craft_spot.craft_in(item_name,x,y,object_index,image_xscale,image_yscale)
	} else{
		
		obj_inventory.inventory.item_add(item_name,1)
	}
	instance_destroy()
}