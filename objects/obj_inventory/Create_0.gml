// Menu
sequence_element = -1;
inv_active = false;

// inventory
inventory = new Inventory();


//Items
inventory.item_create("Wood",10,spr_stick);
inventory.item_create("Cloth",4,spr_cloth);
inventory.item_create("Arrows",4,spr_arrow);
//Tools
inventory.item_create("Lantern",1,spr_lantern_top,true,false);
inventory.item_create("Bandages",2,spr_bandages,true,false);
//Weapons
inventory.item_create("Axe",1,spr_test,true,true);
inventory.item_create("Sharp_Stick",2,spr_test,true,false);
inventory.item_create("Bow",1,spr_test,true,true);
inventory.item_create("Crossbow",1,spr_crossbow,true,false);
//Flasks
inventory.item_create("Flask_Lead",4,spr_lead,true);
inventory.item_create("Flask_Silver",4,spr_silver,true);
inventory.item_create("Flask_Sulfur",4,spr_sulfur,true);

//show_debug_message(inventory.item_add("Wood",10));

//inventory.item_add("Fail test",5);

//show_debug_message($"INVENTORY ADD TEST: {inventory}");

//inventory.item_subtract("Wood",2);

//show_debug_message($"INVENTORY SUBS TEST: {inventory}");