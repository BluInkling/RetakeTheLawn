


<<<<<<< Updated upstream
if (round(image_index) == 13 && !hasSunned){//collision_circle(x,y,64,obj_player,false,false) &&  && !instance_exists(obj_collectable)){
	alarm[0] = 1
	hasSunned = true
	show_debug_message("Sunned")
=======
if type == "wallnut"{
	sprite_index = spr_wallnut
	if(place_meeting(x,y,obj_player)){
		with(obj_player){
			if (pumpkinArmor > 0) pumpkinArmor = 0
			wallnutArmor = 3;
		}
		instance_destroy()
	}
>>>>>>> Stashed changes
}


if type == "pumpkin"{
	sprite_index = sPumpkind
	if(place_meeting(x,y,obj_player)){
		with(obj_player){
			if (wallnutArmor > 0) wallnutArmor = 0
			pumpkinArmor = 5;
			
		}
		instance_destroy()
	}
}









<<<<<<< Updated upstream



=======
>>>>>>> Stashed changes
