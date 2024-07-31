if !attacking {
	draw_sprite_ext( sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
	draw_sprite_ext( attack_spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

draw_line(x, y, x + lengthdir_x(view_distance, direction), y + lengthdir_y(view_distance, direction))
draw_line(x, y, x + lengthdir_x(view_distance, direction-offset), y + lengthdir_y(view_distance, direction -offset))
draw_line(x, y, x + lengthdir_x(view_distance, direction+offset), y + lengthdir_y(view_distance, direction +offset))

draw_line(x, y, x + lengthdir_x(25, direction), y + lengthdir_y(25, direction))