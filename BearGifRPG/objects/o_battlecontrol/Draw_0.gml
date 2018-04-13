/// @description
var bear1spr = ds_grid_get(global.bears,prop_player.sprite,ds_list_find_value(global.team,0));
var bear2spr = ds_grid_get(global.bears,prop_player.sprite,ds_list_find_value(global.team,1));
var bear3spr = ds_grid_get(global.bears,prop_player.sprite,ds_list_find_value(global.team,2));
draw_sprite(bear1spr,image_index,719,516);
draw_sprite(bear2spr,image_index,719,610);
draw_sprite(bear3spr,image_index,719,704);