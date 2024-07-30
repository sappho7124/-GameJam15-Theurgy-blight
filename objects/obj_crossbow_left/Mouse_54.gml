if right{
	show_debug_message("right")
	if cursor_sprite == cursor_aim {
		if loaded {
			instance_create_depth(x+lengthdir_x(25,image_angle + offset),y+lengthdir_y(25,image_angle + offset),depth,proj_arrow,
			{
				speed : 3,
				direction : Player.aimDir
			});
			loaded = false
		} else {
			if obj_inventory.inventory.item_get_quantity("Arrows") > 0 {
				loaded = true
				obj_inventory.inventory.item_subtract("Arrows",1)
			}

		}
	}
}