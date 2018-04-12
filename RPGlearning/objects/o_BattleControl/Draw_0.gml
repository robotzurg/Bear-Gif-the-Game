/// @description
var h = 0;
for (var i=0;i<ds_list_size(playerteam);i++) {
	draw_text(x,y+h,ds_list_find_value(playerteam,i));
	h += 20;
}
var eh = 0;
for (var ii=0;ii<ds_list_size(enemyteam);ii++) {
	draw_text(x+20,y+eh,ds_list_find_value(enemyteam,ii));
	eh += 20;
}