/// @description Initialize everything
randomize();
draw_set_font(fnt_main);
global.bears = ds_grid_create(10,10);
global.enemies = ds_grid_create(10,10);
global.team = ds_list_create();
global.battlestart = false;
global.turnfocus = "N/A";
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

enemy_init(0,4,s_enemy1,"Enemy 1",50,15,0); //Enemy 1
enemy_init(1,5,s_enemy2,"Enemy 2",30,20,0); //Enemy 2

room_goto_next();