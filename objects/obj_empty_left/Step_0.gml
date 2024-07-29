x = Player.x
y = Player.y
image_angle = Player.aimDir

if (image_speed > 0)
{
    if (image_index >= image_number - 1) {
		image_speed = 0
		image_index = 0
	}
}