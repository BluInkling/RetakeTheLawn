

if type == "sunflower" {
	if (round(image_index) == 13 && !hasSunned){//collision_circle(x,y,64,obj_player,false,false) &&  && !instance_exists(obj_collectable)){
		alarm[0] = 1
		hasSunned = true
		//show_debug_message("Sunned")
	}
}
if(collision_circle(x,y,16,obj_player,false,false)){
	draw = true
	if(keyboard_check_pressed(ord("E"))){
		if type == "wallnut"{
			with(obj_player){
				wallnutArmor = 1
			}
			instance_destroy()
		}
		if type == "pumpkin"{
			with(obj_player){
				pumpkinArmor = 1;
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

