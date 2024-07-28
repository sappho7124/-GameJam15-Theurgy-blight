dist = 0;
threshold = 50;
depth = 199;
image_speed = 0;

open = false

function open_close(){
	open = !open
	if open {
		image_angle = 0
	} else{
		image_angle = 90
	}
}