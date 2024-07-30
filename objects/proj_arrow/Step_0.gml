var rad_direction = degtorad(direction); // Convert direction to radians

x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Check for collision with an enemy
if (place_meeting(x, y, obj_enemy_parent)) {
    // Get the instance of the colliding enemy
    var enemy_instance = instance_place(x, y, obj_enemy_parent);

    // Apply damage to the enemy instance
    if (enemy_instance != noone) {
        with (enemy_instance) {
            // Assuming the enemy object has a variable named 'health'
            hit_points -= 10; // damage_amount should be defined earlier in your code
			stun_enemy(10);
			instance_destroy()
        }
    }
}