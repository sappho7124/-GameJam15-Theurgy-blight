if (instance_exists(obj_stick)) {
    instance_destroy(obj_stick);
}
if (obj_inventory.inventory.item_get_quantity("Wood") > 0){
	instance_create_layer(mouse_x, mouse_y, "GUI", obj_stick);
	obj_inventory.inventory.item_subtract("Wood",1);
}
