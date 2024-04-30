

if(collision_circle(x,y,8,obj_player,false,false)){
	draw = true
	if(keyboard_check_pressed(vk_space)){
		if (kindofpickup == obj_Controller.weaponstats){
			
			if !(array_contains(obj_Controller.inventoryPrimary,type)){
				//show_debug_message("added to main arsenal")
				if array_length(obj_Controller.inventoryPrimary) == obj_Controller.mainInventorySpace{
					//show_debug_message("full inventory");
					var drop = obj_Controller.inventoryPrimary[obj_Controller.primary]
					global.fixedDrop = drop
					global.fixedDropType = obj_Controller.weaponstats
					global.fixedStat = obj_MainWeapon.ammo
					//show_debug_message(obj_Controller.ammoPrimary)
					array_delete(obj_Controller.inventoryPrimary,obj_Controller.primary,1)
					array_delete(obj_Controller.ammoPrimary,obj_Controller.primary,1)
					instance_create_depth(obj_player.x,obj_player.y,depth,obj_pickupable)
					obj_uiMainPocket.ShowFull()
				}
				array_push(obj_Controller.inventoryPrimary,type)
				array_push(obj_Controller.ammoPrimary,savedStat)
				obj_MainWeapon.GotoPrimary(array_length(obj_Controller.inventoryPrimary)-1)
				
			} else {
				//show_debug_message("alreayd have this main....");
			}

		} 
		if (kindofpickup == obj_Controller.subweaponstats) {
			if !(array_contains(obj_Controller.inventorySecondary,type)){
				//show_debug_message("added to sub arsenal")
				if array_length(obj_Controller.inventorySecondary) == obj_Controller.subInventorySpace{
					show_debug_message("full inventory");
					var drop = obj_Controller.inventorySecondary[obj_Controller.secondary]
					global.fixedDrop = drop
					global.fixedDropType = obj_Controller.subweaponstats
					global.fixedStat = obj_Controller.cooldownSecondary[obj_Controller.secondary]
					array_delete(obj_Controller.inventorySecondary,obj_Controller.secondary,1)
					array_delete(obj_Controller.cooldownSecondary,obj_Controller.secondary,1)
					instance_create_depth(obj_player.x,obj_player.y,depth,obj_pickupable)
					obj_uiSubPocket.ShowFull()
				}
				array_push(obj_Controller.inventorySecondary,type)
				//show_debug_message(savedStat)
				array_push(obj_Controller.cooldownSecondary,savedStat)
				obj_SubWeapon.GotoSecondary(array_length(obj_Controller.inventorySecondary)-1)
			} else {
				//show_debug_message("alreayd have this sub....");
			}
		} 
		if (kindofpickup == "sun"){
			with(obj_player) hp += 3;
			//show_debug_message("Sun healed!")
		}
		part_system_destroy(part)
		for (var i=0;i<instance_number(obj_pickupable);++i){
			var col = instance_find(obj_pickupable,i)
			if !col.fixed{
				col.RandomChoose()	
			}
			
		}
		if host != noone{
			host.Collapse()
		}
		instance_destroy();
		
	}
} else draw = false










