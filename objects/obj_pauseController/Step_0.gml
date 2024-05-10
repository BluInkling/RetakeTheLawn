/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_escape){
	paused = !paused;
	audio_play_sound(snd_pause,1,false)
	with (obj_Music) pausemenu = true
	if paused == false{
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
		audio_play_sound(backbutton,2,false)
		with (obj_Music) pausemenu = false
	}
	window_set_cursor(cr_none)
}

if keyboard_check_pressed(vk_space) && paused{
	instance_activate_object(obj_pickupable)
	with obj_pickupable{
		part_system_destroy(part)
	}
	room_goto(rm_title)
	
}

if paused == true{
	alarm[0]++;
	alarm[1]++;
}








