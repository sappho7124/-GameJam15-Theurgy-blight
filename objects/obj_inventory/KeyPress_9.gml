/// @description 
if (!layer_sequence_exists("GUI", sequence_element) && obj_menu.menu_active==false) {
	sequence_element = layer_sequence_create("GUI", 0, 0, seq_inventory);
	inv_active=true;
}
else {
	layer_sequence_destroy(sequence_element);
	inv_active=false;
}