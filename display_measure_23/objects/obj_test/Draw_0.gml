draw_set_font(fnt_test);
draw_set_color(c_white);
var n = array_length(screens);
var px = spr_px;

var c = $f9f5f3;
if (n > 0) { // border rectangle
	draw_sprite_stretched_ext(px,0, offset_x-2, offset_y-2, final_w+4, 1, c,1);
	draw_sprite_stretched_ext(px,0, offset_x-2, offset_y-1, 1, final_h+2, c,1);
	draw_sprite_stretched_ext(px,0, offset_x+final_w+1, offset_y-1, 1, final_h+2, c,1);
	draw_sprite_stretched_ext(px,0, offset_x-2, offset_y+final_h+1, final_w+4, 1, c,1);
}

// screens:
var mx = mouse_x, my = mouse_y;
var tip = "(F5 to refresh)";
if (keyboard_check_pressed(vk_f5)) event_user(0);
if (n == 0) {
	tip = "It would appear that the DLL failed to load.";
}
else for (var i = 0; i < n; i++) {
	var q = screens[i];
	var hl = -3;
	
	// -1: active area, but no drawing (to not highlight both full+active when over active)
	//  0: full area
	//  1: active area, with drawing
	for (var it = -1; it < 2; it++) {
		var k = it * 4; if (k < 0) k = 4;
		
		// This part is admittedly a bit of odd-looking because I didn't want
		// to have a bunch of scripts with a single-function extension.
		// Please move things to actual scripts
		var x1 = offset_x + (-min_x + q[k+0]) * scale;
		var y1 = offset_y + (-min_y + q[k+1]) * scale;
		var x2 = offset_x + (-min_x + (q[k+0] + q[k+2])) * scale;
		var y2 = offset_y + (-min_y + (q[k+1] + q[k+3])) * scale;
		if (it == 0 && hl != -3) {
			// we already know that we're highlighting the active area too
			c = $d0b19e;
		} else if (point_in_rectangle(mx,my, x1,y1,x2,y2)) {
			hl = it;
			if (it >= 0) {
				if (it > 0) {
					tip = "Active area of ";
				} else tip = "";
				// "<name> (WxH at X,Y)":
				tip += q[9] + " ("
					+ string(q[k+2]) + "x" + string(q[k+3]) + " at "
					+ string(q[k+0]) + "," + string(q[k+1]) + ")";
				c = c_white;
			}
		} else {
			if (it) {
				if (hl == 0) {
					c = $f2eae5;
				} else c = $d0b19e;
			} else c = $ac806e;
		}
		if (it >= 0) draw_sprite_stretched_ext(px,0, x1,y1,x2-x1,y2-y1, c,1);
	}
}

// draw the designated tooltip on the bottom:
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2,room_height-20,tip);