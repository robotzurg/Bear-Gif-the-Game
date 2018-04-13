/// @description
draw_set_color(c_black);
for (var i=0;i<ds_list_size(global.team);i++) {
   draw_text(0, 0 + (i * 20), ds_list_find_value(global.team,i));
}