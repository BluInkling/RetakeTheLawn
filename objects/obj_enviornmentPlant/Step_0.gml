

if type == "sunflower" {
	if (round(image_index) == 13 && !hasSunned){//collision_circle(x,y,64,obj_player,false,false) &&  && !instance_exists(obj_collectable)){
		alarm[0] = 1
		hasSunned = true
		//show_debug_message("Sunned")
	}
}
if(collision_circle(x,y,16,obj_player,false,false)){
	draw = true
	if(keyboard_check_pressed(vk_space)){
		if type == "wallnut"{
			with(obj_player){
				wallnutArmor = 1
				audio_play_sound(PLANT_WALLNUT_1,1,false)
			}
			if !global.hasCollected{
				global.hasCollected = true
				obj_uiTutorial.active = false
			}
			instance_destroy()
		}
		if type == "pumpkin"{
			with(obj_player){
				pumpkinArmor = 1;
				audio_play_sound(PLANT_WALLNUT_1,1,false)
			}
			if !global.hasCollected{
				global.hasCollected = true
				obj_uiTutorial.active = false
			}
			instance_destroy()
		}
	}
}else{
	draw = false
}

if type == "wallnut"{
	sprite_index = spr_wallnut
}

if type == "pumpkin"{
	sprite_index = spr_pumpkin
}

if !global.hasCollected{
	obj_uiTutorial.Collect()
}
