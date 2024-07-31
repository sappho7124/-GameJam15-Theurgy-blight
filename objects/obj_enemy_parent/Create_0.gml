// Add the stun_enemy function
function stun_enemy(_stun_duration){
	if stunnable{
	    // Set a flag or variable to indicate that the enemy is stunned
	    stunned = true;
	    // Set the duration of the stun
	    stun_duration = _stun_duration; // For example, stun for 60 steps (1 second)
	    // Stop the enemy's movement
	    monster_speed = 0;
		image_speed = 0;
	    show_debug_message("Enemy stunned");
	}
}

function hurt_enemy(_damage){
	
	hit_points -= _damage
}

// Go back function
function go_back(){
    alarm[0] = -1;
    counter = 0;
    going_back = true;
    
    path_delete(path);
    path = path_add();

    targetx = path_get_x(normal_path, 0);
    targety = path_get_y(normal_path, 0);

    mp_grid_path(obj_grid_setup.grid, path, x, y, targetx, targety, true);
    
    monster_speed = 1;
    path_start(path, monster_speed, path_action_stop, true);
    
    show_debug_message("Go back executed");
}

attackcooldown= 0
normal_sprite = sprite_index
attacking = false;
going_back = false;
offset = 15;
stunned = false;
stun_duration = 0;

path = path_add();
targetx = 0;
targety = 0;
counter = 0;

alarm[0] = -1;
if normal_path != noone {
    path_start(normal_path, monster_speed, path_action_reverse, true);
}