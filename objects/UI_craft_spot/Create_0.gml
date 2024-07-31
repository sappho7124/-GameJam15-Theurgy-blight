function craft_in(_item,_ogx,_ogy,_name_obj,_ogscalex,_ogscaley) {

	array_push(items_in, _item);

    var new_obj = instance_create_layer(_ogx, _ogy, "GUI", UI_item_in_craft);

	new_obj.represent=_item
	new_obj.name_item_obj=_name_obj
	new_obj.scalex=_ogscalex
	new_obj.scaley=_ogscaley
	new_obj.equipped=0
	
	UI_craft_button.check_for_craft()
}

function update_UI(){
	UI_left_hand_spot.update()
	UI_right_hand_spot.update()
}

items_in = [];

update_done = false