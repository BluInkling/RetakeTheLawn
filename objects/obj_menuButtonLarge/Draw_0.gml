/// @description Insert description here
// You can write your code in this editor
draw_self()
if place_meeting(x,y,obj_crosshair){
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,image_yscale,image_angle,c_white,0.1)
	shader_reset();
	if mouse_check_button_pressed(mb_left) && !instance_exists(obj_fadeOut){
		switch (type){
			case "space":
				image_index = 0
				audio_play_sound(pickupfromseedpacket,0,0)
				SpawnMenu()
				//image_index = 0
				break;
			case "new":
				audio_play_sound(pickupfromseedpacket,0,0)
				FadeOut(rm_cutscene)
				break
			case "continue":
			audio_play_sound(pickupfromseedpacket,0,0)
				FadeOut(global.roomOrder[global.levelProgress])
				break
			case "reset":
				audio_play_sound(selectTrowel,0,0)
				host.ChangeMenu("sure")
				break
		}
	}
}

if keyboard_check_pressed(vk_space) && type == "space"{
	SpawnMenu()
}







