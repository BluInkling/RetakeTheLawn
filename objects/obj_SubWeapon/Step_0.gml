
//if keyboard_check(ord("B")){
//	main.projtype = "flaming"
//	//show_debug_message(main.projtype)
//	//show_debug_message("weapon on fcire")
//} else main.projtype = "normal"

cooldown --;

if ((mouse_check_button(mb_right)) or keyboard_check(ord("B")))  && subavailable == true{
	//show_debug_message("sub activated!")
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
		//show_debug_message("potatomine activated!")
		var aimDir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
		for (var i = 0; i < 3;i++){
			var mine = instance_create_layer(obj_player.x,obj_player.y,"Player",obj_throwable)
			mine.dist = point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y)
			mine.dir = (aimDir - mineSpread) + mineSpread*i
			show_debug_message(mine.dir)
		}
		cooldown = 1200
		subavailable = false
		alarm_set(0,cooldown)
	}
}



