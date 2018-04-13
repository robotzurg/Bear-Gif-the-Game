var bear1grid = ds_list_find_value(global.team,0);
var bear2grid = ds_list_find_value(global.team,1);
var bear3grid = ds_list_find_value(global.team,2);

var bear1id = ds_grid_get(global.bears,prop_player.bearid,bear1grid);
var bear1spr = ds_grid_get(global.bears,prop_player.sprite,bear1grid);
var bear1name = ds_grid_get(global.bears,prop_player.name,bear1grid);
var bear1level = ds_grid_get(global.bears,prop_player.level,bear1grid);
var bear1health = ds_grid_get(global.bears,prop_player.health_,bear1grid);
var bear1attack = ds_grid_get(global.bears,prop_player.attack,bear1grid);
var bear1defense = ds_grid_get(global.bears,prop_player.defense,bear1grid);

var bear2id = ds_grid_get(global.bears,prop_player.bearid,bear2grid);
var bear2spr = ds_grid_get(global.bears,prop_player.sprite,bear2grid);
var bear2name = ds_grid_get(global.bears,prop_player.name,bear2grid);
var bear2level = ds_grid_get(global.bears,prop_player.level,bear2grid);
var bear2health = ds_grid_get(global.bears,prop_player.health_,bear2grid);
var bear2attack = ds_grid_get(global.bears,prop_player.attack,bear2grid);
var bear2defense = ds_grid_get(global.bears,prop_player.defense,bear2grid);

var bear3id = ds_grid_get(global.bears,prop_player.bearid,bear3grid);
var bear3spr = ds_grid_get(global.bears,prop_player.sprite,bear3grid);
var bear3name = ds_grid_get(global.bears,prop_player.name,bear3grid);
var bear3level = ds_grid_get(global.bears,prop_player.level,bear3grid);
var bear3health = ds_grid_get(global.bears,prop_player.health_,bear3grid);
var bear3attack = ds_grid_get(global.bears,prop_player.attack,bear3grid);
var bear3defense = ds_grid_get(global.bears,prop_player.defense,bear3grid);

var bear1 = instance_create_layer(room_width+30,112,"Bears",o_mainbear);
var bear2 = instance_create_layer(room_width+30,232,"Bears",o_mainbear);
var bear3 = instance_create_layer(room_width+30,344,"Bears",o_mainbear);

with bear1 {
	my_id = bear1id;
	my_sprite = bear1spr;
	my_name = bear1name;
	my_health = bear1health;
	my_attack = bear1attack;
	my_defense = bear1defense;
	sprite_index = my_sprite;
}

with bear2 {
	my_id = bear2id;
	my_sprite = bear2spr;
	my_name = bear2name;
	my_health = bear2health;
	my_attack = bear2attack;
	my_defense = bear2defense;
	sprite_index = my_sprite;
}

with bear3 {
	my_id = bear3id;
	my_sprite = bear3spr;
	my_name = bear3name;
	my_health = bear3health;
	my_attack = bear3attack;
	my_defense = bear3defense;
	sprite_index = my_sprite;
}