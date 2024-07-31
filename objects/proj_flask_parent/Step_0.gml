// Define the initial speed and direction
var rad_direction = degtorad(direction); // Convert direction to radians

// Update the projectile's position
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
            stun_enemy(10);
        }
        instance_create_depth(x, y, 201, projectile);
        instance_destroy();
    }
}

// Check for collision with a hard object
if (place_meeting(x, y, obj_parent_hard)) {
    instance_create_depth(x, y, 201, projectile);
    instance_destroy();
}

// Gradually decrease the speed until it stops
if (speed > 0) {
    speed -= 0.1; // Adjust the value to control the rate of deceleration
    if (speed < 0) speed = 0; // Ensure speed doesn't go below zero
}

// If the speed reaches zero, create a drop and destroy the projectile
if (speed == 0) {
    instance_create_depth(x, y, 201, projectile);
    instance_destroy();
}
