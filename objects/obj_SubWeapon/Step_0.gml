
//if keyboard_check(ord("B")){
//	main.projtype = "flaming"
//	//show_debug_message(main.projtype)
//	//show_debug_message("weapon on fcire")
//} else main.projtype = "normal"
with obj_Controller{
	for (i = 0; i < array_length(cooldownSecondary);i++){
		if cooldownSecondary[i] > 0{
			cooldownSecondary[i] = cooldownSecondary[i]-1;
		}
	}
	
}

if obj_Controller.cooldownSecondary[obj_Controller.secondary] == 0{
	subavailable = true
}

if ((mouse_check_button(mb_right)) or keyboard_check(ord("B")))  && subavailable == true{
	//show_debug_message("sub activated!")
	//show_debug_message(sub)
	if sub.wepname == "torchwood"{
		//show_debug_message("torch activated!")
		if (main.wepname == "peashooter" or main.wepname == "repeater" or main.wepname == "snowpea" or main.wepname == "threepeater") obj_MainWeapon.projtype = "flaming" //the sprites and projectile stats are changed in oProjectile
		//if (main.wepname == "snowpea") obj_MainWeapon.projtype = "normal"
		
		//cooldown = 120
		subavailable = false
		alarm_set(0,240)
	}
	if sub.wepname == "potatomine"{
		//show_debug_message("potatomine activated!")
		var aimDir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
		for (var i = 0; i < 3;i++){
			var mine = instance_create_layer(obj_player.x,obj_player.y,"Player",obj_throwable)
			mine.dist = point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y)
			mine.dir = (aimDir - mineSpread) + mineSpread*i
			//show_debug_message(mine.dir)
		}
		//cooldown = 1200
		subavailable = false
		//alarm_set(0,cooldown)
	}
	if sub.wepname == "cherrybomb"{
		//show_debug_message("potatomine activated!")
		var aimDir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
			var bomb = instance_create_layer(obj_player.x,obj_player.y,"Player",obj_throwable)
			bomb.dist = point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y)
			bomb.dir = aimDir
			//show_debug_message(mine.dir)

		//cooldown = 1200
		subavailable = false
		//alarm_set(0,cooldown)
	}
	if sub.wepname == "iceberglettuce"{
		//show_debug_message("potatomine activated!")
		var aimDir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
			var letti = instance_create_layer(obj_player.x,obj_player.y,"Player",obj_throwable)
			letti.dist = point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y)
			letti.dir = aimDir
			//show_debug_message(mine.dir)

		//cooldown = 1200
		subavailable = false
		//alarm_set(0,cooldown)
	}
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
}

if (keyboard_check_pressed(ord("9"))){ 
	GotoSecondary(0)
}
if (keyboard_check_pressed(ord("0"))){ 
	GotoSecondary(1)
}
