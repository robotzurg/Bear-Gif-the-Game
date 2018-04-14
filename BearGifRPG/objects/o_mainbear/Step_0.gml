/// @description
if stop_intro = false {
	if !(x <= 832) {
		x -= 2
		image_speed = 1;
	} else if x = 832 {
		image_speed = 0;
		image_index = idle;
		global.battlestart = true;
		stop_intro = true;
	}
} else if stop_intro = true {
	if on_turn = true {
		x = x_offset
		image_speed = 1;
	} else {
		image_speed = 0;
		image_index = idle;
		x = 832
	}
}