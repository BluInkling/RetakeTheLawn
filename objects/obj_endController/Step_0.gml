/// @description Insert description here
// You can write your code in this editor


if paused && keyboard_check_pressed(vk_space){
	//room_restart()
	show_debug_message("LEAVE")
	instance_activate_object(obj_pickupable)
	instance_activate_object(obj_taco)
	with obj_pickupable{
		part_system_destroy(part)
	}
	with obj_taco{
		part_system_destroy(part)
	}
	room_goto(room)
	//FadeOut(room)
}
if paused && keyboard_check_pressed(vk_escape){
	instance_activate_object(obj_pickupable)
	with obj_pickupable{
		part_system_destroy(part)
	}
	room_goto(rm_title)
	//FadeOut(rm_title)
}
if paused == true{
	alarm[0]++;
	alarm[1]++;
}








