if (dist < threshold) {
	if obj_inventory.inventory.item_get_max_quantity(item) >= obj_inventory.inventory.item_get_quantity(item)+1{
		obj_inventory.inventory.item_add(item,1)
		cursor_sprite = cursor_aim
		instance_destroy()
	} else {
		//code to draw, 
	}
}