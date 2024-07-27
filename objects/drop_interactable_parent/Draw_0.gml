dist = point_distance(x, y, Player.x, Player.y);

var scale = 1

if (dist < threshold) {
	draw_sprite(spr_stick_white,0,x,y)
	draw_self();
} else{
	draw_self();
}
