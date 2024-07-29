function go_back(){
	alarm[0] = -1;
	counter = 0
	going_back = true
	
	path_delete(path)
	path = path_add()

	targetx = path_get_x(normal_path, 0)
	targety = path_get_y(normal_path, 0)

	mp_grid_path(obj_grid_setup.grid,path,x,y,targetx,targety,true)
	
	monster_speed = 1
	path_start(path,monster_speed,path_action_stop,true)
	
	show_debug_message("Go back executed")
}

going_back = false
offset = 15

path = path_add()
targetx = 0
targety = 0
counter = 0

alarm[0] = -1;
if normal_path != noone {
	path_start(normal_path,monster_speed,path_action_reverse,true)
}