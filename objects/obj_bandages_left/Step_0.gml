event_inherited()

if (image_speed > 0)
{
    if (image_index >= image_number - 1) {
		var touching = instance_place(x,y,obj_enemy_parent)
		if touching != -4 {
			if object_get_parent(touching.object_index) = obj_enemy_parent {
				touching.hit_points -= 1
				touching.stun_enemy(60)
			}
		}
		image_speed = 0
		image_index = 0
	}
}