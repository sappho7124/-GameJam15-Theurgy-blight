#region
//check if player is able to move
if can_move{
	///get inputs
	up_Key = keyboard_check(ord("W"));
	down_Key = keyboard_check(ord("S"));
	left_Key = keyboard_check(ord("A"));
	right_Key = keyboard_check(ord("D"));

	//player movement

		//get direction
		var _horizKey = right_Key - left_Key;
		var _vertKey = down_Key - up_Key;
		move_dir = point_direction(0,0,_horizKey,_vertKey);
	
		//get the x and y speeds
		var _spd = 0;
		var _inputLevel = point_distance(0,0,_horizKey,_vertKey);
		_inputLevel = clamp(_inputLevel,0,1);
		_spd = move_spd * _inputLevel;
	
		xspd = lengthdir_x(_spd, move_dir)
		yspd = lengthdir_y(_spd, move_dir)
	
		//collision
		if place_meeting(x+xspd,y,obj_parent_hard){
			xspd = 0;
		}
		if place_meeting(x,y+yspd,obj_parent_hard){
			yspd = 0;
		}
	
		//move the player
		x+=xspd
		y+=yspd
}
#endregion

//player aiming
	centerY = y + centerYOffset;
	//aim
	aimDir = point_direction(x,y,mouse_x,mouse_y);

//sprite control
#region
	//animation
	if (xspd == 0 && yspd == 0){
		image_index = 0;
	}

#endregion