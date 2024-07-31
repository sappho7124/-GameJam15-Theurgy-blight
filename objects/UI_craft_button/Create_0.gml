image_index = 0;
image_speed = 0;

function check_for_craft() {
	var keys = variable_struct_get_names(recipes);
	for (var i = array_length(keys)-1; i >= 0; --i) {
	    var k = keys[i];
	    var v = variable_struct_get(recipes, k);
		
		if array_equals(UI_craft_spot.items_in,v.Ingredients){
			if obj_inventory.inventory.item_get_max_quantity(v.Result) > obj_inventory.inventory.item_get_quantity(v.Result){
				image_index = 2;
				return v.Result
			} else {
				image_index = 1;
			}
		} else {
			image_index = 0;
		}
	}
	return 0
}
function craft() {
	var result = check_for_craft()
	if result != 0{
		UI_craft_spot.items_in = []
		with (UI_item_in_craft) {
		    if (equipped == 0) {
		        instance_destroy();
		    }
		}
		obj_inventory.inventory.item_add(result,1)
	}
}

recipes = {
    "C_Sharp_Stick": {
        Ingredients: ["Wood", "Wood"],
        Result: "Sharp_Stick"
    },
    
    "C_Bandages": {
        Ingredients: ["Cloth", "Cloth"],
        Result: "Bandages"
    },
    
    "Arrows_1": {
        Ingredients: ["Flask_Silver", "Wood"],
        Result: "Arrows"
    },
    
    "Arrows_2": {
        Ingredients: ["Flask_Lead", "Wood"],
        Result: "Arrows"
    }
}


check_for_craft()