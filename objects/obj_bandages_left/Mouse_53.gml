if !right{
	show_debug_message("left")
	if cursor_sprite == cursor_aim {
		Player.equip(1,"Empty")
		obj_inventory.inventory._equipped.left.represent = "Empty"
		Player.heal(1)
	}
}