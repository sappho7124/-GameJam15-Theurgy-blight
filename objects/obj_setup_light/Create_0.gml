function create_light(_lx,_ly,_depth=200,_size=0,_color=c_white,_str=1){
	var new_light = instance_create_depth(_lx,_ly,_depth,obj_light);	
	new_light.size = _size
	new_light.color = _color
	new_light.str = _str
}
function create_light_follow(_depth=200,_size=0,_color=c_white,_str=1,_obj=noone,_xoffset=0,_yoffset=0){
	var new_light = instance_create_depth(0,0,_depth,obj_moving_light);
	new_light.size = _size
	new_light.color = _color
	new_light.str = _str
	new_light.follow = _obj
	new_light.xoffset = _xoffset
	new_light.yoffset = _yoffset
}

function create_light_follow_circle(_depth=200,_size=0,_color=c_white,_str=1,_obj=noone,_distance=0,_xangleoffset=0,_yangleoffset=0){
	var new_light = instance_create_depth(0,0,_depth,obj_moving_light_circle);
	new_light.size = _size
	new_light.color = _color
	new_light.str = _str
	new_light.follow = _obj
	new_light.distance = _distance
	new_light.xangleoffset = _xangleoffset
	new_light.yangleoffset = _yangleoffset
}


//Resize the application surface to be lower res (for pixel games + performance boost)
surface_resize(application_surface,320,180);
display_set_gui_maximize();

//turn of automaic drawing of application surface
application_surface_draw_enable(false);

//view coordinates
vx = 0;
vy = 0;

//Shader uniform variable setup
u_pos = shader_get_uniform(sh_light,"u_pos");
u_zz = shader_get_uniform(sh_light,"zz");
u_str = shader_get_uniform(sh_light,"u_str");
u_pos2 = shader_get_uniform(sh_shadow,"u_pos");

//Vertex format and buffer setup
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();

//shadow surface variable declaration
shad_surf = noone;

//turn on Debug
show_debug_overlay(1);
