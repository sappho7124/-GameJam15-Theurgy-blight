switch equipped
{
    case 1:
        Player.equip(1,"Empty")
    break;

    case 2:
		Player.equip(2,"Empty")
    break;

    default:
        array_remove_by_value(UI_craft_spot.items_in,represent);
} 

instance_create_layer(mouse_x, mouse_y, "GUI", name_item_obj);
instance_destroy()