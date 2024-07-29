image_angle = direction;

var hand_distance = collision_line_first(x, y, x + lengthdir_x(25, direction), y + lengthdir_y(25, direction), [Player, obj_door_parent], false, true);
var infront = collision_line_first(x, y, x + lengthdir_x(view_distance, direction), y + lengthdir_y(view_distance, direction), [Player, obj_parent_hard], false, true);
var left_view = collision_line_first(x, y, x + lengthdir_x(view_distance, direction - offset), y + lengthdir_y(view_distance, direction - 15), [Player, obj_parent_hard], false, true);
var right_view = collision_line_first(x, y, x + lengthdir_x(view_distance, direction + offset), y + lengthdir_y(view_distance, direction + 15), [Player, obj_parent_hard], false, true);

if (infront == Player.id || left_view == Player.id || right_view == Player.id) {
    if (!alarm[0]) {
        alarm[0] = 1;
        show_debug_message("see you")
    } else {
        counter = 0
    }
}
if hand_distance != -4 {
	if object_get_parent(hand_distance.object_index) == obj_door_parent && hand_distance.open{
		hand_distance.open_close()
		show_debug_message("open door")
	}
}

if (going_back && path_position == 1) {
    path_start(normal_path, monster_speed, path_action_reverse, true)
    going_back = false
}
