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
