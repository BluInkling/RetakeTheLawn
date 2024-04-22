

if(collision_circle(x,y,16,obj_player,false,false)){
	draw = true
	if(keyboard_check_pressed(ord("E"))){
		if (kindofpickup == obj_Controller.weaponstats){
			if !(array_contains(obj_Controller.inventoryPrimary,type)){
				show_debug_message("added to main arsenal")
				array_push(obj_Controller.inventoryPrimary,type)
				array_push(obj_Controller.ammoPrimary,type.clip)
			} else {
				show_debug_message("alreayd have this main....");
			}
			
		} 
		if (kindofpickup == obj_Controller.subweaponstats) {
			if !(array_contains(obj_Controller.inventorySecondary,type)){
				show_debug_message("added to sub arsenal")
				array_push(obj_Controller.inventorySecondary,type)
				array_push(obj_Controller.cooldownSecondary,0)
			} else {
				show_debug_message("alreayd have this sub....");
			}
		} 
		if (kindofpickup == "sun"){
			with(obj_player) hp += 3;
			show_debug_message("Sun healed!")
		}
		instance_destroy();
	}
} else draw = false









