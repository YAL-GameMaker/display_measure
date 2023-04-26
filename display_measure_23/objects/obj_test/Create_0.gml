var arr = display_measure_all();
// note: use array_length_1d in old GM versions
for (var i = 0; i < array_length(arr); i++) {
	var inf = arr[i];
	show_debug_message(inf);
	
	show_debug_message("Name: " + inf[9]);
	
	show_debug_message("Location: "
		+ string(inf[2]) + "x" + string(inf[3]) + " at "
		+ string(inf[0]) + "," + string(inf[1])
	);
	
	show_debug_message("Work area: "
		+ string(inf[6]) + "x" + string(inf[7]) + " at "
		+ string(inf[4]) + "," + string(inf[5])
	);
	
	var _primary = (inf[8] & 1) != 0;
	show_debug_message("Is primary: " + string(_primary));
}

screens = arr;
var n = array_length(screens);
// find outer bounds for all screens:
min_x = 0;
min_y = 0;
max_x = 0;
max_y = 0;
for (var i = 0; i < n; i++) {
	var q = screens[i];
	min_x = min(min_x, q[0]);
	min_y = min(min_y, q[1]);
	max_x = max(max_x, q[0]+q[2]);
	max_y = max(max_y, q[1]+q[3]);
}
size_x = max_x - min_x;
size_y = max_y - min_y;

//
outer_w = (room_width - 40);
outer_h = (room_height - 50);
scale = min(outer_w / size_x, outer_h / size_y);
offset_x = 20 + (outer_w - size_x * scale) div 2;
offset_y = 20 + (outer_h - size_y * scale) div 2;
final_w = ceil(size_x*scale);
final_h = ceil(size_y*scale);
//
var sf_px = surface_create(32, 32);
surface_set_target(sf_px);
draw_clear_alpha(c_white, 1);
surface_reset_target();
spr_px = sprite_create_from_surface(sf_px, 0, 0, 32, 32, 0, 0, 0, 0);
surface_free(sf_px);