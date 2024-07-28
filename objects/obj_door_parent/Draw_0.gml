dist = point_distance(x, y, Player.x, Player.y);

var scale = 1

if (dist < threshold) {
	draw_sprite_ext(object_get_sprite(object_index),1,x,y,image_xscale,image_yscale,image_angle,c_white,1)
	draw_self();
} else{
	draw_self();
}
