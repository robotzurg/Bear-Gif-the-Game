/// @description Draw the Battle UI
switch global.turnfocus {
	case 1: draw_sprite(bear1inst.my_sprite,image_index,719,516);
			draw_sprite(bear2inst.my_sprite,idle,719,610);
			draw_sprite(bear3inst.my_sprite,idle,719,704); break;
			
	case 2: draw_sprite(bear1inst.my_sprite,idle,719,516);
			draw_sprite(bear2inst.my_sprite,image_index,719,610);
			draw_sprite(bear3inst.my_sprite,idle,719,704); break;
			
	case 3: draw_sprite(bear1inst.my_sprite,idle,719,516);
			draw_sprite(bear2inst.my_sprite,idle,719,610);
			draw_sprite(bear3inst.my_sprite,image_index,719,704); break;
			
	default: draw_sprite(bear1inst.my_sprite,idle,719,516);
			 draw_sprite(bear2inst.my_sprite,idle,719,610);
			 draw_sprite(bear3inst.my_sprite,idle,719,704); break;
}
/*draw_text(x,y+150,"Turn Focus: " + string(global.turnfocus));
draw_text(x,y+200,"Turn Side: " + string(global.turnside));
draw_text(x,y+400,"Delay " + string(delay));
/*draw_text(x,y+250,"Open Enemy Panel: " + string(open_enemy_panel));
draw_text(x,y+300,"Target: " + string(target));*/

//Bear 1
draw_text(813,480,"HP: " + string(bear1inst.current_health) + "/" + string(bear1inst.max_health))
draw_healthbar(775,510,985,530,(bear1inst.current_health / bear1inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
//Bear 2
draw_text(813,575,"HP: " + string(bear2inst.current_health) + "/" + string(bear2inst.max_health))
draw_healthbar(775,606,985,626,(bear2inst.current_health / bear2inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
//Bear 3
draw_text(813,666,"HP: " + string(bear3inst.current_health) + "/" + string(bear3inst.max_health))
draw_healthbar(775,698,985,718,(bear3inst.current_health / bear3inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
