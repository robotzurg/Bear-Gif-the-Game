var enemy1 = 0;
var enemy2 = 1;
open_wep_panel = false;
open_enemy_panel = false;
bear_team_create();
enemy_team_create(enemy1,enemy2);
enemynumber = ds_list_size(en_inst_ids);
allbeings = ds_list_size(inst_ids) + ds_list_size(en_inst_ids);
bear1inst = ds_list_find_value(inst_ids,0);
bear2inst = ds_list_find_value(inst_ids,1);
bear3inst = ds_list_find_value(inst_ids,2);
enemy1inst = ds_list_find_value(en_inst_ids,0);
enemy2inst = ds_list_find_value(en_inst_ids,1);
select1 = "N/A"
select2 = "N/A"
turninit = false;
delay = 60;
drawdelay = 1;
target = "none"
global.currentworld = "Battle";
global.turnside = "Player";
image_speed = 0.5