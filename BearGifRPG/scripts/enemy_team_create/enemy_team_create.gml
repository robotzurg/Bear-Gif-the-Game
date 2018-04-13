///@param Enemy1
///@param Enemy2

var enemy1grid = argument0;
var enemy2grid = argument1;

var enemy1id = ds_grid_get(global.enemies,prop_enemy.enemyid,enemy1grid);
var enemy1spr = ds_grid_get(global.enemies,prop_enemy.sprite,enemy1grid);
var enemy1name = ds_grid_get(global.enemies,prop_enemy.name,enemy1grid);
var enemy1health = ds_grid_get(global.enemies,prop_enemy.health_,enemy1grid);
var enemy1attack = ds_grid_get(global.enemies,prop_enemy.attack,enemy1grid);
var enemy1defense = ds_grid_get(global.enemies,prop_enemy.defense,enemy1grid);

var enemy2id = ds_grid_get(global.enemies,prop_enemy.enemyid,enemy2grid);
var enemy2spr = ds_grid_get(global.enemies,prop_enemy.sprite,enemy2grid);
var enemy2name = ds_grid_get(global.enemies,prop_enemy.name,enemy2grid);
var enemy2health = ds_grid_get(global.enemies,prop_enemy.health_,enemy2grid);
var enemy2attack = ds_grid_get(global.enemies,prop_enemy.attack,enemy2grid);
var enemy2defense = ds_grid_get(global.enemies,prop_enemy.defense,enemy2grid);

var enemy1 = instance_create_layer(176,176,"Enemies",o_mainenemy);
var enemy2 = instance_create_layer(176,288,"Enemies",o_mainenemy);

with enemy1 {
	my_id = enemy1id;
	my_sprite = enemy1spr;
	my_name = enemy1name;
	my_health = enemy1health;
	my_attack = enemy1attack;
	my_defense = enemy1defense;
	sprite_index = my_sprite;
}

with enemy2 {
	my_id = enemy2id;
	my_sprite = enemy2spr;
	my_name = enemy2name;
	my_health = enemy2health;
	my_attack = enemy2attack;
	my_defense = enemy2defense;
	sprite_index = my_sprite;
}
