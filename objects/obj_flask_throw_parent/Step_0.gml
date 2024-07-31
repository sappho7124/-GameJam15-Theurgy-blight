event_inherited()

if (image_speed > 0)
{
    if (image_index >= image_number - 1) && (!thrown) {
		instance_create_depth(x+lengthdir_x(25,image_angle + offset),y+lengthdir_y(25,image_angle + offset),depth,projectile,
			{
				speed : 3,
				direction : Player.aimDir
			});
		if obj_inventory.inventory.item_get_quantity(flask) > 0{
			obj_inventory.inventory.item_subtract(flask,1)
		} else {
			if sign(image_yscale) == -1{
				obj_inventory.inventory._equipped.right.represent = "Empty"
				Player.equip(2,"Empty")
			} else {
				obj_inventory.inventory._equipped.left.represent = "Empty"
				Player.equip(1,"Empty")
			}
		}
		thrown = true
	}
	
	if (thrown) && (image_index = 0) {
		thrown = false;
		image_speed = 0;
	}
}