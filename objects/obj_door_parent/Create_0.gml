dist = 0;
threshold = 75;
depth = 199;
image_speed = 0;
og_angle = image_angle
open = false

function open_close(){
	open = !open
	if open {
		image_angle = og_angle
	} else{
		image_angle = og_angle + 90
	}
}