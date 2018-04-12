playerteam = ds_list_create();
enemyteam = ds_list_create();
global.playerturnorder = ds_list_create();
global.enemyturnorder = ds_list_create();

create_team(0,1,2,800,160);
create_enemy_team(3,4,100,160);

ds_list_add(playerteam,0,1,2); //Gets ID of player1 and puts it into the list, etc.
ds_list_add(enemyteam,0,1);
ds_list_add(global.playerturnorder,ds_list_find_value(playerteam,0),ds_list_find_value(playerteam,1),ds_list_find_value(playerteam,2));
ds_list_add(global.enemyturnorder,ds_list_find_value(enemyteam,0),ds_list_find_value(enemyteam,1),ds_list_find_value(enemyteam,2));
global.turnfocus = 0;

