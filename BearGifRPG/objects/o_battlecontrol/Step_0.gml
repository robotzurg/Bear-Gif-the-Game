/// @description

if global.battlestart = true {
	if global.turnside = "Player" {
		if open_wep_panel = true {
			if !instance_exists(o_atkheadbutt) {
				instance_create_layer(296,596,"UI",o_atkheadbutt);
				alarm[1] = drawdelay;
			}
		}
		if open_enemy_panel = true {
			if instance_number(o_enemyselect) != 2 {
				select1 = instance_create_depth(496,536,"UI",o_enemyselect);
				select2 = instance_create_depth(496,664,"UI",o_enemyselect);
				drawdelay = 1;
				alarm[1] = drawdelay;
			}
		}
		if global.turnfocus >= 4 {
			global.turnside = "Enemy"
		}
		
		if turninit = false {
			var allbeings = ds_list_size(inst_ids)+ds_list_size(en_inst_ids);
			global.turnfocus = 1;
			global.turnfocus = clamp(global.turnfocus,1,allbeings);
			turninit = true;
		}
	


	switch global.turnfocus {
		case 1: bear1inst.on_turn = true; 
				bear3inst.on_turn = false;
				bear2inst.on_turn = false; break;
		case 2: bear2inst.on_turn = true;
				bear1inst.on_turn = false;
				bear3inst.on_turn = false; break;
		case 3: bear3inst.on_turn = true;
				bear2inst.on_turn = false;
				bear1inst.on_turn = false; break;
		default:bear1inst.on_turn = false;
				bear2inst.on_turn = false;
				bear3inst.on_turn = false; break;
	}

	if global.choice = "Attack" {
		open_wep_panel = true;
		if global.attackchoice = "Headbutt" {
			open_enemy_panel = true;
			if mouse_check_button_pressed(mb_left) {
				var objectClicked = instance_position(mouse_x,mouse_y,o_enemyselect);
					if objectClicked = select1 {
						switch global.turnfocus {
						case 1: enemy1inst.current_health -= bear1inst.my_attack break;
						case 2: enemy1inst.current_health -= bear2inst.my_attack break;
						case 3: enemy1inst.current_health -= bear3inst.my_attack break;
						global.turnfocus++;
						}
					} else if objectClicked = select2 {
						switch global.turnfocus {
						case 1: enemy2inst.current_health -= bear1inst.my_attack break;
						case 2: enemy2inst.current_health -= bear2inst.my_attack break;
						case 3: enemy2inst.current_health -= bear3inst.my_attack break;
						global.turnfocus++;
						}
					}
				
			}
		}
	}

	if global.choice = "Defend" {
		switch global.turnfocus {
			case 1: bear1inst.my_defense += 5; 
					bear1inst.defense_up = true;
					global.turnfocus++;
					global.choice = "Default" break;
			case 2: bear2inst.my_defense += 5;
					bear2inst.defense_up = true;
					global.turnfocus++;
					global.choice = "Default" break;
			case 3: bear3inst.my_defense += 5;
					bear3inst.defense_up = true;
					global.turnfocus++;
					global.choice = "Default" break;
		}
		
	}
	}

	if global.turnfocus > 5 {
		global.turnfocus = 1;
	}
	//Enemies
	else if global.turnside = "Enemy" {
		switch global.turnfocus {
			case 4:
			var random_choice = 1;
			var random_target = choose(bear1inst,bear2inst,bear3inst);
			delay--;
			if delay = 0 {
				if random_choice = 1 { //Attack
					random_target.current_health -= enemy1inst.my_attack;
					global.turnfocus++;
					delay = 60;
				}
			} break;
			
			case 5:
			var random_choice = 1
			var random_target = choose(bear1inst,bear2inst,bear3inst);
			delay--;
			if delay = 0 {
				if random_choice = 1 { //Attack
					random_target.current_health -= enemy2inst.my_attack;
					global.turnfocus++;
					delay = 60;
				}
			} break;
		}
		}
		
		if global.turnfocus > 5 {
			global.turnfocus = 1;
			global.turnside = "Player"
		}
}