/// @description
if keyboard_check(key_up) {
	y -= 5;
}
if keyboard_check(key_left) {
	x -= 5;
	flipped = 1;
}
if keyboard_check(key_down) {
	y += 5;
}
if keyboard_check(key_right) {
	x += 5;
	flipped = -1;
}

if keyboard_check(key_up) or keyboard_check(key_left) or keyboard_check(key_down) or keyboard_check(key_right) {
	image_speed = 1;
	moving = true;
} else {
	image_speed = 0;
	image_index = idle;
	moving = false;
}