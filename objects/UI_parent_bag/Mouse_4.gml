if (instance_exists(obj_stick)) {
    instance_destroy(obj_stick);
}
if (obj_inventory.inventory.item_get_quantity(item_spawn) > 0){
	instance_create_layer(mouse_x, mouse_y, "GUI", item_spawn_object);
	obj_inventory.inventory.item_subtract(item_spawn,1);
}
