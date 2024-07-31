depth = -3000

grid = mp_grid_create(0,0, room_width/16, room_height/16,16,16);

// Get all instances of obj_parent_hard
var instances = instance_number(obj_parent_hard);

// Loop through each instance
for (var i = 0; i < instances; i++) {
    var inst = instance_find(obj_parent_hard, i);
    
    // Check if the instance's parent is not obj_door_parent
    if (object_get_parent(inst.object_index) != obj_door_parent) {
        // Add the instance to the grid
		mp_grid_add_instances(grid, inst,0);
    }
}
mp_grid_add_instances(grid, obj_parent_soft,0);



depth = -3000