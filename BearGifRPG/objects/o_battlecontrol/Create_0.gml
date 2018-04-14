var enemy1 = 2
var enemy2 = 2
bear_team_create();
enemy_team_create(enemy1,enemy2);
bear1inst = ds_list_find_value(inst_ids,0);
bear2inst = ds_list_find_value(inst_ids,1);
bear3inst = ds_list_find_value(inst_ids,2);
enemy1inst = ds_list_find_value(en_inst_ids,0);
enemy2inst = ds_list_find_value(en_inst_ids,1);
turninit = false;
global.currentworld = "Battle";
image_speed = 0.5