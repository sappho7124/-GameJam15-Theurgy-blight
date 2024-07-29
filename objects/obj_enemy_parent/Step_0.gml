image_angle = direction;

var infront = collision_line_first(x, y, x + lengthdir_x(100, direction), y + lengthdir_y(100, direction), [Player, obj_parent_hard], false, true);
var left_view = collision_line_first(x, y, x + lengthdir_x(100, direction - offset), y + lengthdir_y(100, direction - 15), [Player, obj_parent_hard], false, true);
var right_view = collision_line_first(x, y, x + lengthdir_x(100, direction + offset), y + lengthdir_y(100, direction + 15), [Player, obj_parent_hard], false, true);

if (infront == Player.id || left_view == Player.id || right_view == Player.id) {
    if (!alarm[0]) {
        alarm[0] = 1;
        show_debug_message("see you")
    } else {
        counter = 0
    }
}

if (going_back && path_position == 1) {
    path_start(normal_path, monster_speed, path_action_reverse, true)
    going_back = false
}
