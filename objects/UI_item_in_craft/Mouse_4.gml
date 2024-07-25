if (instance_exists(name_item_obj)) {
    instance_destroy(name_item_obj);
} 

instance_create_layer(mouse_x, mouse_y, "GUI", name_item_obj);
array_remove_by_value(UI_craft_spot.items_in,represent)
instance_destroy()