obj_setup_light.create_light_explosion(x,y,depth,1,500,c_white,50,12)

var instances = ds_list_create();
collision_circle_list(x, y, 100, obj_enemy_parent, false, true, instances,false);

// Loop through the list and apply damage
for (var i = 0; i < ds_list_size(instances); i++) {
    var instance = ds_list_find_value(instances, i);
    // Apply damage to the instance
    with (instance) {
        // Assuming you have a script or method to apply damage
		stun_enemy(80);
    }
}
audio_play_sound(Flashbang, 1, false);
instance_destroy()