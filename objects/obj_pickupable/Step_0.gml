

if(collision_circle(x,y,16,obj_player,false,false)){
	draw = true
	if(keyboard_check_pressed(ord("E"))){
		if (kindofpickup == obj_Controller.weaponstats){
			if !(array_contains(obj_Controller.inventoryPrimary,type)){
				show_debug_message("added to main arsenal")
				array_push(obj_Controller.inventoryPrimary,type)
				array_push(obj_Controller.ammoPrimary,type.clip)
				obj_MainWeapon.GotoPrimary(array_length(obj_Controller.inventoryPrimary)-1)
			} else {
				show_debug_message("alreayd have this main....");
			}
			
		} 
		if (kindofpickup == obj_Controller.subweaponstats) {
			if !(array_contains(obj_Controller.inventorySecondary,type)){
				show_debug_message("added to sub arsenal")
				array_push(obj_Controller.inventorySecondary,type)
				array_push(obj_Controller.cooldownSecondary,0)
				obj_SubWeapon.GotoSecondary(array_length(obj_Controller.inventorySecondary)-1)
			} else {
				show_debug_message("alreayd have this sub....");
			}
		} 
		if (kindofpickup == "sun"){
			with(obj_player) hp += 3;
<<<<<<< Updated upstream
			show_debug_message("Sun healed!")
=======
			audio_play_sound(choose(snd_sun,snd_sun2,snd_sun3,snd_sun4),1,false)
			//show_debug_message("Sun healed!")
>>>>>>> Stashed changes
		}
		
		instance_destroy();
		for (var i=0;i<instance_number(obj_pickupable);++i){
			var col = instance_find(obj_pickupable,i)
			col.RandomChoose()	
			
		}
	}
} else draw = false









