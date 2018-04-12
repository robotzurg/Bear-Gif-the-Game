///@param Enemy_1_ID
///@param Enemy_2_ID
///@param x
///@param starty
var enemy1 = argument0;
var enemy2 = argument1;
var givx = argument2;
var givy = argument3;

//Team Member 1 properties
var enemy1object = ds_grid_get(global.enemies,prop.objectid,enemy1)
var enemy1name = ds_grid_get(global.enemies,prop.name,enemy1);
var enemy1health = ds_grid_get(global.enemies,prop.health_,enemy1);
var enemy1damage = ds_grid_get(global.enemies,prop.damage,enemy1);
var enemy1defense = ds_grid_get(global.enemies,prop.defense,enemy1);

//Team Member 2 properties
var enemy2object = ds_grid_get(global.enemies,prop.objectid,enemy2)
var enemy2name = ds_grid_get(global.enemies,prop.name,enemy2);
var enemy2health = ds_grid_get(global.enemies,prop.health_,enemy2);
var enemy2damage = ds_grid_get(global.enemies,prop.damage,enemy2);
var enemy2defense = ds_grid_get(global.enemies,prop.defense,enemy2);

var enemy1 = instance_create_layer(room_width-1030,givy,"Enemies",enemy1object);
var enemy2 = instance_create_layer(room_width-1030,givy+150,"Enemies",enemy2object);

with enemy1 {
	my_name = enemy1name
	my_health = enemy1health
	my_damage = enemy1damage;
	my_defense = enemy1defense;
	wanted_x = givx
}

with enemy2 {
	my_name = enemy2name
	my_health = enemy2health
	my_damage = enemy2damage;
	my_defense = enemy2defense;
	wanted_x = givx
}
