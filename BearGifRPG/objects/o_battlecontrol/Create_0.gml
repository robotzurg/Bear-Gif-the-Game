var enemy1 = 0
var enemy2 = 1
bear_team_create();
enemy_team_create(enemy1,enemy2);
bear1inst = ds_list_find_value(inst_ids,0);
bear2inst = ds_list_find_value(inst_ids,1);
bear3inst = ds_list_find_value(inst_ids,2);
enemy1inst = ds_list_find_value(en_inst_ids,0);
enemy2inst = ds_list_find_value(en_inst_ids,1);
var allbeings = ds_list_size(inst_ids)+ds_list_size(en_inst_ids);
xoffset = 200;
if global.battlestart = true {
global.turnfocus = 1;
global.turnfocus = clamp(global.turnfocus,1,allbeings);
}
image_speed = 0.5