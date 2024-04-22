/// @description Insert description here
// You can write your code in this editor





//if keyboard_check(ord("B")){
//	main.projtype = "flaming"
//	//show_debug_message(main.projtype)
//	//show_debug_message("weapon on fcire")
//} else main.projtype = "normal"

cooldown --;

if ((mouse_check_button(mb_right)) or keyboard_check(ord("B")))  && subavailable == true{
	show_debug_message("sub activated!")
	show_debug_message(sub)
	if sub == "torchwood"{
		show_debug_message("torch activated!")
		if (main.wepname == "peashooter" or main.wepname == "repeater" or main.wepname == "snowpea" or main.wepname == "threepeater") obj_MainWeapon.projtype = "flaming" //the sprites and projectile stats are changed in oProjectile
		//if (main.wepname == "snowpea") obj_MainWeapon.projtype = "normal"
		
		cooldown = 120
		subavailable = false
		alarm_set(0,cooldown)
	}
	if sub == "potatomine"{
		show_debug_message("potatomine activated!")
		instance_create_layer(obj_player.x,obj_player.y,"Player",obj_throwable)
		cooldown = 60
		subavailable = false
		alarm_set(0,cooldown)
	}
<<<<<<< Updated upstream
=======
	obj_Controller.cooldownSecondary[obj_Controller.secondary] = sub.cooldown
}
//show_debug_message(obj_Controller.cooldownSecondary[obj_Controller.secondary])

if keyboard_check_pressed(vk_control){
	with obj_Controller{
		secondary += 1
		if secondary > array_length(inventorySecondary)-1{
			secondary = 0
		}
		subweapon = inventorySecondary[secondary]
		
	}
	ChangeSecondary()
>>>>>>> Stashed changes
}



