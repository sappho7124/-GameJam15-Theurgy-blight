if (hit_points <= 0) instance_destroy();

image_angle = direction;

var hand_distance = collision_line_first(x, y, x + lengthdir_x(25, direction), y + lengthdir_y(25, direction), [Player, obj_door_parent], false, true);
var infront = collision_line_first(x, y, x + lengthdir_x(view_distance, direction), y + lengthdir_y(view_distance, direction), [Player, obj_parent_hard], false, true);
var left_view = collision_line_first(x, y, x + lengthdir_x(view_distance, direction - offset), y + lengthdir_y(view_distance, direction - 15), [Player, obj_parent_hard], false, true);
var right_view = collision_line_first(x, y, x + lengthdir_x(view_distance, direction + offset), y + lengthdir_y(view_distance, direction + 15), [Player, obj_parent_hard], false, true);

if (infront == Player.id || left_view == Player.id || right_view == Player.id) {
    if (!alarm[0]) {
        alarm[0] = 1;
        show_debug_message("see you");
    } else {
        counter = 0;
    }
}
if hand_distance != -4 {
    if object_get_parent(hand_distance.object_index) == obj_door_parent && hand_distance.open{
        hand_distance.open_close();
        show_debug_message("open door");
    } else if (hand_distance.object_index = Player) && !attacking && attackcooldown <= 0{
		show_debug_message($"pogiado")
		attacking = true
	}
}

//
if attacking && attackcooldown <= 0{
	path_speed = 0
	if (image_index >= image_number - 1) {
		attacking = false
		var touching = instance_place(x,y,Player)
		if touching != -4 {
			if touching.object_index = Player {
				Player.take_damage(1)
				attackcooldown = 120
			}
		}
	}
}

if (attackcooldown > 0) attackcooldown -= 1

if (going_back && path_position == 1) {
    path_start(normal_path, monster_speed, path_action_reverse, true);
    going_back = false;
}

// Check if the enemy is stunned and decrease the stun duration
if (stunned) {
    stun_duration -= 1;
    if (stun_duration <= 0) {
        stunned = false;
        monster_speed = 1; // Restore the monster speed after stun duration ends
		image_speed = 1;
        show_debug_message("Enemy recovered from stun");
    }
}