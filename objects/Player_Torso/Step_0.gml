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
	_spd = move_spd * _inputLevel;
	
	xspd = lengthdir_x(_spd, move_dir)
	yspd = lengthdir_y(_spd, move_dir)
	
	//move the player
	x+=xspd
	y+=yspd
	