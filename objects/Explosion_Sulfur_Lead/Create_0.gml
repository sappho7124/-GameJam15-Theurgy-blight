obj_setup_light.create_light_explosion(x,y,depth,1,500,c_orange,50,8)

var instances = ds_list_create();
collision_circle_list(x, y, 60, obj_enemy_parent, false, true, instances,false);

// Loop through the list and apply damage
for (var i = 0; i < ds_list_size(instances); i++) {
    var instance = ds_list_find_value(instances, i);
    // Apply damage to the instance
    with (instance) {
        // Assuming you have a script or method to apply damage
        hit_points -= 40; // Replace damage_amount with the actual damage value
		stun_enemy(10);
    }
}



audio_play_sound(Explotion, 1, false);
instance_destroy()