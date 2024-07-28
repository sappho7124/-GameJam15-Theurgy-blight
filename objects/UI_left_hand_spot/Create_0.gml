function equip_in(_item,_name_obj,_ogscalex,_ogscaley) {

	Player.equip(1,_item)

    var new_obj = instance_create_layer(x, y, "GUI", UI_item_in_craft);

	new_obj.represent=_item
	new_obj.name_item_obj=_name_obj
	new_obj.scalex=_ogscalex
	new_obj.scaley=_ogscaley
	new_obj.equipped=1
	
	obj_inventory.inventory._equipped.left.represent = _item
	obj_inventory.inventory._equipped.left.name_item_obj = _name_obj
	obj_inventory.inventory._equipped.left.scale = _ogscalex
}

function update(){
	if (obj_inventory.inventory._equipped.left.represent != "Empty"){
		var new_obj = instance_create_layer(x, y, "GUI", UI_item_in_craft);

		new_obj.represent=obj_inventory.inventory._equipped.left.represent
		new_obj.name_item_obj=obj_inventory.inventory._equipped.left.name_item_obj
		new_obj.scalex=obj_inventory.inventory._equipped.left.scale
		new_obj.scaley=obj_inventory.inventory._equipped.left.scale
		new_obj.equipped=1
	}
}