function equip_in(_item,_name_obj,_ogscalex,_ogscaley) {

	Player.equip(2,_item)

    var new_obj = instance_create_layer(x, y, "GUI", UI_item_in_craft);

	new_obj.represent=_item
	new_obj.name_item_obj=_name_obj
	new_obj.scalex=_ogscalex
	new_obj.scaley=_ogscaley
	new_obj.equipped=2
}