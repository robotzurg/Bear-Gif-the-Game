///@param Room
var room_select = argument0;

var fade = instance_create_depth(x,y,-9999,o_fade);
with fade {
	room_selection = room_select;
}