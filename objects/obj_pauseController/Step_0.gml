/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(ord("P")){
	paused = !paused;
	audio_play_sound(pause,1,false)
	if paused == false{
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
	}
}
if paused == true{
	alarm[0]++;
	alarm[1]++;
}








