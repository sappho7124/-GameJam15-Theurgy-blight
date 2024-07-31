with (instance_place(x, y, obj_enemy_parent)) {
    // Apply damage to the enemy
    if (instance_exists(id)) {
        hit_points -= 7;
    }
}

count += 1
if (count >= 10) instance_destroy()
alarm_set(0,60)