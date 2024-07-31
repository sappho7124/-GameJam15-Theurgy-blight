switch equipped
{
    case 1:
        Player.equip(1,"Empty")
		obj_inventory.inventory._equipped.left.represent = "Empty"
    break;

    case 2:
		Player.equip(2,"Empty")
		obj_inventory.inventory._equipped.right.represent = "Empty"
    break;

    default:
        array_remove_by_value(UI_craft_spot.items_in,represent);
		UI_craft_button.check_for_craft()
} 

instance_create_layer(mouse_x, mouse_y, "GUI", name_item_obj);
instance_destroy()