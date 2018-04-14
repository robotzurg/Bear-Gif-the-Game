/// @description
switch (global.currentworld) {
	case "Antarctica": audio_stop_all();
	audio_play_sound(mus_antarctica,1000,true);
	instance_destroy(o_battlemusic); break;
	case "Battle": audio_stop_all(); instance_create_depth(x,y,0,o_battlemusic); break;
}