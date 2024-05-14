/// @description Insert description here
// You can write your code in this editor


if paused && keyboard_check_pressed(vk_anykey){
	//room_restart()
	instance_activate_object(obj_pickupable)
	with obj_pickupable{
		part_system_destroy(part)
	}
	FadeOut(room)
}
if paused == true{
	alarm[0]++;
	alarm[1]++;
}








