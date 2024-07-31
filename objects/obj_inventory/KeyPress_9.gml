/// @description 
if (!layer_sequence_exists("GUI", sequence_element) && obj_menu.menu_active==false) {
	sequence_element = layer_sequence_create("GUI", Player.x, Player.y, seq_inventory);
	inv_active=true;
	Player.can_move = false;
}
else {
	layer_sequence_destroy(sequence_element);
	instance_destroy(UI_item_in_craft)
	instance_destroy(obj_item_parent)
	inv_active=false;
	Player.can_move = true;
}