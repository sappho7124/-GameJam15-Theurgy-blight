//track and follow

if !attacking{
	path_delete(path)
	path = path_add()

	targetx = Player.x
	targety = Player.y

	mp_grid_path(obj_grid_setup.grid,path,x,y,targetx,targety,true)

	path_start(path,monster_speed,path_action_stop,true)

	counter += 1

	if counter = 10{
		go_back()
	} else{
		//loop
		alarm_set(0,60)
	}
}