dist = point_distance(x, y, Player.x, Player.y);

var scale = 1

if (dist < threshold) {
	draw_sprite(object_get_sprite(object_index),1,x,y)
	draw_self();
} else{
	draw_self();
}
