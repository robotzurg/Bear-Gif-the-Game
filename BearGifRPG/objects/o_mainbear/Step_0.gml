/// @description
if !(x <= 832) {
	x -= 2
	image_speed = 1;
} else if x = 832 {
	image_speed = 0;
	image_index = idle; exit;
}