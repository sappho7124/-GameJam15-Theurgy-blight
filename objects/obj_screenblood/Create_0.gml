image_speed = 0

function update_screen_blood(){
	var life = Player.life 
	switch life
	{
		case 1:
			image_index = 3
		break;
		case 2:
			image_index = 2
		break;
		case 3:
			image_index = 1
		break;
		case 4:
			image_index = 0
		break;
		default:
			image_index = 4
	}
		
		
}