//Game setup
#region
	window_set_cursor(cr_none)
	cursor_sprite = cursor_aim
	depth=200
	can_move = true;
	left_hand="Empty";
	right_hand="Empty";
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
	        left_hand = _item
	    break;

	    case 2:
	        right_hand = _item
	    break;

	    default:
	        show_debug_message("An error ocurred when setting up the equipment")
	} 
	show_debug_message($"Equipped: {left_hand},{right_hand}")
	
}