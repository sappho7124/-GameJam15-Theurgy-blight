// inventory

randomize();

inventory = new Inventory();

inventory.item_create("Wood",3,spr_test);
show_debug_message(inventory.item_add("Wood",10));
inventory.item_add("Wood",10);
inventory.item_add("Fail test",5);

show_debug_message($"INVENTORY ADD TEST: {inventory}");

inventory.item_subtract("Wood",2);

show_debug_message($"INVENTORY SUBS TEST: {inventory}");