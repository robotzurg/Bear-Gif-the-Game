///@param Grid_Spot
///@param Enemy_ID
///@param Sprite
///@param Name
///@param Health
///@param Attack
///@param Defense

var Grid_Spot = argument0;
var eID = argument1;
var Sprite = argument2;
var Name = argument3;
var Health = argument4;
var Attack = argument5;
var Defense = argument6;
var g_width = ds_grid_width(global.enemies);
var g_height = ds_grid_height(global.enemies);

ds_grid_set(global.enemies,0,Grid_Spot,eID);
ds_grid_set(global.enemies,1,Grid_Spot,Sprite);
ds_grid_set(global.enemies,2,Grid_Spot,Name);
ds_grid_set(global.enemies,3,Grid_Spot,Health);
ds_grid_set(global.enemies,4,Grid_Spot,Attack);
ds_grid_set(global.enemies,5,Grid_Spot,Defense);
ds_grid_set(global.enemies,6,Grid_Spot,Grid_Spot); //Save where it is in the grid