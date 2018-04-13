/// @description RNG for Encounters
var RNG = irandom(100);

if other.moving = true {
	image_index = 1;
	if RNG = 1 {
		room_goto_fade(rm_battle);
	} else {
		RNG = irandom(100)
	}
} else {
	image_index = 0;
}
