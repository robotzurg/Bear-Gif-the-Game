var enemy1 = 0
var enemy2 = 1
bear_team_create();
enemy_team_create(enemy1,enemy2);
bear1inst = ds_list_find_value(inst_ids,0);
bear2inst = ds_list_find_value(inst_ids,1);
bear3inst = ds_list_find_value(inst_ids,2);
image_speed = 0.5