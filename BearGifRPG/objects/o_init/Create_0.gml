/// @description Initialize everything
randomize();
draw_set_font(fnt_main);
global.bears = ds_grid_create(10,10);
global.enemies = ds_grid_create(10,10);
global.arcticmap = ds_grid_create(4,4);
global.dungeonmap = ds_grid_create(4,4);
global.currentworld = "Antarctica";
global.team = ds_list_create();
global.battlestart = false;
global.turnfocus = "N/A";
global.alarm_done = false;
global.turnside = "N/A";
ds_list_add(global.team,0);
ds_list_add(global.team,1);
ds_list_add(global.team,3);

//Input Variables
globalvar key_up;
key_up = ord("W");
globalvar key_down; 
key_down = ord("S");
globalvar key_right;
key_right = ord("D");
globalvar key_left;
key_left = ord("A");

bear_init(0,s_bear,"Bear",1,100,20,10); //Original Bear
bear_init(1,s_matrixbear,"Matrix Bear",1,50,15,10); //Matrix Bear
bear_init(2,s_wizardbear,"Wizard Bear",1,100,10,5); //Wizard Bear
bear_init(3,s_kawaiibear,"Kawaii Bear",1,20,5,5); //Kawaii Bear 
bear_init(4,s_policebear,"Police Bear",1,50,10,10); //Police Bear
bear_init(5,s_metalbear,"Metal Bear",1,50,10,10); //Metal Bear
bear_init(6,s_shadesbear,"Shades Bear",1,50,10,10); //Shades Bear
bear_init(7,s_rainbowbear,"Rainbow Bear",1,50,10,10);//Rainbow Bear
bear_init(8,s_skullbear,"Skull Bear",1,50,10,10); //Skull Bear

enemy_init(0,9,s_penguin,"Penguin",50,15,0); //Penguin
enemy_init(1,10,s_porg,"Porg",50,15,0); //Porg
enemy_init(2,11,s_ghostpenguin,"Ghost Penguin",50,15,0); //Ghost Penguin
enemy_init(3,12,s_ghostpenguin,"Floppy Penguin",50,15,0); //Floppy Penguin
enemy_init(4,13,s_ghostpenguin,"Traitor Bear",50,15,0); //Traitor Bear
enemy_init(5,14,s_ghostpenguin,"Floppy Bun",50,15,0); //Floppy Bun

///WORLD INIT
global.arcticmap = ds_grid_create(3,3);

ds_grid_set(global.arcticmap,0,0,rm_Arc00);
ds_grid_set(global.arcticmap,1,0,rm_Arc10);
ds_grid_set(global.arcticmap,2,0,rm_Arc20);
ds_grid_set(global.arcticmap,0,1,rm_Arc01);
ds_grid_set(global.arcticmap,1,1,rm_Arc11);
ds_grid_set(global.arcticmap,2,1,rm_Arc21);
ds_grid_set(global.arcticmap,0,2,rm_Arc02); 
ds_grid_set(global.arcticmap,1,2,rm_Arc12);
ds_grid_set(global.arcticmap,2,2,rm_Arc22);

global.location_width = 2;
global.location_height = 1;
a = 1;

room_goto(rm_Arc21);
