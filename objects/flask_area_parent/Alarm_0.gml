if (place_meeting(x, y, flask_area_parent)) {
	switch flask
	{
		case "Flask_Lead":
			var contact_area = instance_place(x, y, flask_area_parent);

		    // Apply damage to the enemy instance
		    if (contact_area != noone) {
				switch contact_area.flask
				{
					case "Flask_Lead":
						
					break;
					case "Flask_Silver":
						instance_create_depth(x, y, 150, AOE_Lead_Silver);
						with contact_area {instance_destroy()}
						instance_destroy()
					break;
					case "Flask_Sulfur":
						instance_create_depth(x, y, 150, Explosion_Sulfur_Lead);
						with contact_area {instance_destroy()}
						instance_destroy()
					break;
				}

		    }
		break;
		case "Flask_Silver":
			var contact_area = instance_place(x, y, flask_area_parent);

		    // Apply damage to the enemy instance
		    if (contact_area != noone) {
				switch contact_area.flask
				{
					case "Flask_Lead":
						instance_create_depth(x, y, 150, AOE_Lead_Silver);
						with contact_area {instance_destroy()}
						instance_destroy()
					break;
					case "Flask_Silver":
		
					break;
					case "Flask_Sulfur":
						instance_create_depth(x, y, 150, Flashbang_Sulfur_Silver);
						with contact_area {instance_destroy()}
						instance_destroy()
					break;
				}

		    }
		break;
		case "Flask_Sulfur":
			var contact_area = instance_place(x, y, flask_area_parent);

		    // Apply damage to the enemy instance
		    if (contact_area != noone) {
				switch contact_area.flask
				{
					case "Flask_Lead":
						instance_create_depth(x, y, 150, Explosion_Sulfur_Lead);
						with contact_area {instance_destroy()}
						instance_destroy()
					break;
					case "Flask_Silver":
						instance_create_depth(x, y, 150, Flashbang_Sulfur_Silver);
						with contact_area {instance_destroy()}
						instance_destroy()
					break;
					case "Flask_Sulfur":
		
					break;
				}

		    }
		break;
	}
}

alarm_set(0,60)