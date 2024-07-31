if right{
	show_debug_message("right")
	if cursor_sprite == cursor_aim {
		Player.equip(2,"Empty")
		obj_inventory.inventory._equipped.right.represent = "Empty"
		Player.heal(1)
	}
}