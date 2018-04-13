/// @description
/*if keyboard_check(key_up) {
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
}*/

hspd = (-keyboard_check(key_left) + keyboard_check(key_right)) * spd;
vspd = (-keyboard_check(key_up) + keyboard_check(key_down)) * spd;

if hspd > 0 {
	flipped = -1;
} else if hspd < 0 {
	flipped = 1;
}

if (place_meeting(x + hspd, y, o_parentwall)) {
    while (!place_meeting(x + sign(hspd), y, o_parentwall))
        x += sign(hspd);
    hspd = 0;
}
x += hspd;

if (place_meeting(x, y + vspd, o_parentwall)) {
    while (!place_meeting(x, y + sign(vspd), o_parentwall))
        y += sign(vspd);
    vspd = 0;
}
y += vspd;

if keyboard_check(key_up) or keyboard_check(key_left) or keyboard_check(key_down) or keyboard_check(key_right) {
	image_speed = 1;
	moving = true;
} else {
	image_speed = 0;
	image_index = idle;
	moving = false;
}