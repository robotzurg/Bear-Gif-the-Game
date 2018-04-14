/// @description
switch (global.currentworld) {
	case "Antarctica": audio_stop_all();
	audio_play_sound(mus_antarctica,1000,true); break;
	case "Battle": audio_stop_all();
	bgm = audio_play_sound(mus_battle,1000,true);
	
	intro_length=3.515;
	loop_length=35.172;
	total_length=intro_length+loop_length; break;
}