// Menu
sequence_element = -1;
inv_active = false;

// inventory
inventory = new Inventory();


//Items
inventory.item_create("Wood",10,spr_stick);
inventory.item_create("Cloth",10,spr_test);
inventory.item_create("Arrows",25,spr_test);
//Tools
inventory.item_create("Candle",3,spr_test);
inventory.item_create("Lamp",1,spr_test);
//Weapons
inventory.item_create("Axe",1,spr_test,true,true);
inventory.item_create("Sharp_Stick",2,spr_test,true,false);
inventory.item_create("Bow",1,spr_test,true,true);
inventory.item_create("Crossbow",1,spr_test,true,false);
//Flasks
inventory.item_create("Flask_Water",5,spr_test);
inventory.item_create("Flask_Spiritus",5,spr_test);
inventory.item_create("Flask_Oleum",5,spr_test);
inventory.item_create("Flask_Vinium",5,spr_test);


//show_debug_message(inventory.item_add("Wood",10));
inventory.item_add("Wood",2);
//inventory.item_add("Fail test",5);

//show_debug_message($"INVENTORY ADD TEST: {inventory}");

//inventory.item_subtract("Wood",2);

//show_debug_message($"INVENTORY SUBS TEST: {inventory}");