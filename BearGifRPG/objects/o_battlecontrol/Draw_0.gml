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
draw_text(x,y,global.battlestart);
draw_text(x,y+50,"TurnFocus: " + string(global.turnfocus));
draw_text(x,y+100,"TurnSide: " + string(global.turnside));
draw_text(x,y+150,"Choice: " + string(global.choice));
draw_text(x,y+200,"Open Wep Panel: " + string(open_wep_panel));
draw_text(x,y+250,"Open Enemy Panel: " + string(open_enemy_panel));
draw_text(x,y+300,"Target: " + string(target));

if drawdelay = 0 {
	if open_wep_panel = true {
		draw_line(o_attackbutton.x,o_attackbutton.y,o_atkheadbutt.x,o_atkheadbutt.y);
	} 
	if open_enemy_panel = true {
		draw_line(o_atkheadbutt.x,o_atkheadbutt.y,select1.x,select1.y);
		draw_line(o_atkheadbutt.x,o_atkheadbutt.y,select2.x,select2.y);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_center);
		draw_text_transformed(select1.x,select1.y,enemy1inst.my_name,0.8,0.8,0);
		draw_text_transformed(select2.x,select2.y,enemy2inst.my_name,0.8,0.8,0);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
}

//Bear 1
draw_text(813,480,"HP: " + string(bear1inst.current_health) + "/" + string(bear1inst.max_health))
draw_healthbar(775,510,985,530,(bear1inst.current_health / bear1inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
//Bear 2
draw_text(813,575,"HP: " + string(bear2inst.current_health) + "/" + string(bear2inst.max_health))
draw_healthbar(775,606,985,626,(bear2inst.current_health / bear2inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
//Bear 3
draw_text(813,666,"HP: " + string(bear3inst.current_health) + "/" + string(bear3inst.max_health))
draw_healthbar(775,698,985,718,(bear3inst.current_health / bear3inst.max_health) * 100,c_black,c_red,c_lime,0,true,true);
