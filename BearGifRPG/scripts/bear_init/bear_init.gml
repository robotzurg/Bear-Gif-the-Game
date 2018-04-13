///@function bear_init(ID,Object_ID,Name,Level,Health,Attack,Defense);
///@param ID
///@param Sprite
///@param Name
///@param Level
///@param Health
///@param Attack
///@param Defense

var ID = argument0;
var Sprite = argument1;
var Name = argument2;
var Level = argument3;
var Health = argument4;
var Attack = argument5;
var Defense = argument6;
var g_width = ds_grid_width(global.bears);
var g_height = ds_grid_height(global.bears);

ds_grid_set(global.bears,0,ID,ID);
ds_grid_set(global.bears,1,ID,Sprite);
ds_grid_set(global.bears,2,ID,Name);
ds_grid_set(global.bears,3,ID,Level);
ds_grid_set(global.bears,4,ID,Health);
ds_grid_set(global.bears,5,ID,Attack);
ds_grid_set(global.bears,6,ID,Defense);