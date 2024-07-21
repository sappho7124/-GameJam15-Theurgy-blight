function Inventory() constructor{
	_inventory_items = [];
	
	item_create = function(_name,_max_quantity,_sprite){
		array_push(_inventory_items, {
			name: _name,
			quantity: 0,
			max_quantity: _max_quantity,
			sprite: _sprite,
		});
	}
	
	item_find = function(_name){
		for (var i = 0; i < array_length(_inventory_items); i++){
			if (_name == _inventory_items[i].name) {
				return i;
			}
		}
		
		return -1;
	}
	
	item_add = function(_name, _quantity) {
		var index = item_find(_name);
		
		if(index >= 0) {
			_inventory_items[index].quantity += _quantity;
			if(_inventory_items[index].quantity > _inventory_items[index].max_quantity){
				var _difference =_inventory_items[index].quantity - _inventory_items[index].max_quantity;
				_inventory_items[index].quantity -= _difference;
				return _difference
			} else{
				return 0
			}
		} else {
			show_debug_message($"Item not found: {_name}");
		}
	}
	
	item_has = function(_name,_quantity){
		var index = item_find(_name);
		
		if(index >= 0 ){
			return _inventory_items[index].quantity >= _quantity;
		}
	}
	
	item_subtract = function(_name,_quantity){
		var index = item_find(_name);
		
		if(index >= 0) {
			if(item_has(_name,_quantity)){
				_inventory_items[index].quantity -= _quantity;
				
				if(_inventory_items[index].quantity <= 0){
					item_remove(index);
				}
			}
		}
	}
	
	item_remove = function(_index){
		array_delete(_inventory_items, _index, 1);
	}
	
	toString = function(){
		return json_stringify(_inventory_items)
	}
	
}