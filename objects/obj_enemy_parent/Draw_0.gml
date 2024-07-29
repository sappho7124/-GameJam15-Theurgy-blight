draw_sprite_ext( sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);


//draw lines
draw_line(x, y, x + lengthdir_x(100, direction), y + lengthdir_y(100, direction))
draw_line(x, y, x + lengthdir_x(100, direction-offset), y + lengthdir_y(100, direction -offset))
draw_line(x, y, x + lengthdir_x(100, direction+offset), y + lengthdir_y(100, direction +offset))