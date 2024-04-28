

if type == "sunflower" {
	if (round(image_index) == 13 && !hasSunned){//collision_circle(x,y,64,obj_player,false,false) &&  && !instance_exists(obj_collectable)){
		alarm[0] = 1
		hasSunned = true
		//show_debug_message("Sunned")
	}
}

if type == "wallnut"{
	sprite_index = spr_wallnut
	if(place_meeting(x,y,obj_player)){
		with(obj_player){
			wallnutArmor = 1
		}
		instance_destroy()
	}
}

if type == "pumpkin"{
	sprite_index = spr_pumpkin
	if(place_meeting(x,y,obj_player)){
		with(obj_player){
			pumpkinArmor = 1;
		}
		instance_destroy()
	}
}

