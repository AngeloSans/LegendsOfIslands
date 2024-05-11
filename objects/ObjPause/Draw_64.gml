var gui_w = display_get_gui_width();
var gui_h = display_get_height();

if(global.pause){
	draw_set_alpha(.8);
	draw_set_color(c_black);
	draw_rectangle(0,0,gui_w,gui_h,false)
}	