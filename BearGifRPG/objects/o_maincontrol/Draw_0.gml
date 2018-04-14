for(a=1;a>1;a-=0.01) {
	draw_set_alpha(a);
}
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(room_width/2,room_height/2,"Antarctica",2,2,0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);