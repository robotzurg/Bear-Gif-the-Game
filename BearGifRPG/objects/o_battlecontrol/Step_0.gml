/// @description

if global.battlestart = true {
	if global.turnside = "Player" {
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

	if global.choice = "Defend" {
		switch global.turnfocus {
			case 1: bear1inst.my_defense += 5; 
					bear1inst.defense_up = true; break;
			case 2: bear2inst.my_defense += 5; break;
			case 3: bear3inst.my_defense += 5; break;
			
		}
	}
	if keyboard_check_pressed(vk_space) {
		global.turnfocus += 1;
	}
	}

	if global.turnfocus > 5 {
		global.turnfocus = 1;
	}
}
