/// @description Draw the Battle UI
draw_sprite(bear1inst.my_sprite,image_index,719,516);
draw_sprite(bear2inst.my_sprite,image_index,719,610);
draw_sprite(bear3inst.my_sprite,image_index,719,704);
draw_text(x,y,bear1inst);
draw_text(x,y+50,bear2inst);
draw_text(x,y+100,bear3inst);

//Bear 1
draw_text(813,480,"HP: " + string(bear1inst.current_health) + "/" + string(bear1inst.max_health))
draw_healthbar(775,510,985,530,(bear1inst.current_health / bear1inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
//Bear 2
draw_text(813,575,"HP: " + string(bear2inst.current_health) + "/" + string(bear2inst.max_health))
draw_healthbar(775,606,985,626,(bear2inst.current_health / bear2inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
//Bear 3
draw_text(813,666,"HP: " + string(bear3inst.current_health) + "/" + string(bear3inst.max_health))
draw_healthbar(775,698,985,718,(bear3inst.current_health / bear3inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
