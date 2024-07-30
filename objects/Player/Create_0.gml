//Game setup
#region
	window_set_cursor(cr_none)
	cursor_sprite = cursor_aim
	depth=200
	can_move = true;
	left_hand=instance_create_depth(x,y,depth,obj_empty_left)
	right_hand = instance_create_depth(x,y,depth,obj_empty_left,
				{
					right : true
				});
#endregion
//Variables for movement
move_dir = 0;
move_spd = 2;

//sprite control and aim
#region
	centerYOffset = 0;
	centerY = y + centerYOffset
	
	aimDir = 0;

#endregion



//Player functions
function equip(_slot,_item) {
	switch _slot
	{
	    case 1:
			switch _item //equipment spawn
			{
			case "Empty":
				instance_destroy(left_hand)
				left_hand = instance_create_depth(x,y,depth,obj_empty_left)
			break;
			case "Lantern":
				instance_destroy(left_hand)
				left_hand = instance_create_depth(x,y,depth,obj_lantern_left)
			break;
			case "Sharp_Stick":
				instance_destroy(left_hand)
				left_hand = instance_create_depth(x,y,depth,obj_stick_sharp_left)
			break;
			case "Bandages":
				instance_destroy(left_hand)
				left_hand = instance_create_depth(x,y,depth,obj_bandages_left)
			break;
			case "Crossbow":
				instance_destroy(left_hand)
				left_hand = instance_create_depth(x,y,depth,obj_crossbow_left)
			break;
			default:
				show_debug_message("An error ocurred when setting up the equipment on the left hand")
			}
	    break;

	    case 2:
			switch _item //equipment spawn
			{
			case "Empty":
				instance_destroy(right_hand)
				right_hand = instance_create_depth(x,y,depth,obj_empty_left,
				{
					right : true
				});
			break;
			case "Lantern":
				instance_destroy(right_hand)
				right_hand = instance_create_depth(x,y,depth,obj_lantern_left,
				{
					right : true
				});
			break;
			case "Sharp_Stick":
				instance_destroy(right_hand)
				right_hand = instance_create_depth(x,y,depth,obj_stick_sharp_left,
				{
					right : true
				});
			break;
			case "Bandages":
				instance_destroy(right_hand)
				right_hand = instance_create_depth(x,y,depth,obj_bandages_left,
				{
					right : true
				});
			break;
			case "Crossbow":
				instance_destroy(right_hand)
				right_hand = instance_create_depth(x,y,depth,obj_crossbow_left,
				{
					right : true
				});
			break;
			default:
				show_debug_message("An error ocurred when setting up the equipment on the right hand")
			}
	    break;

	    default:
	        show_debug_message("An error ocurred when setting up the hand")
	} 
	show_debug_message($"Equipped: {left_hand},{right_hand}")
	
}