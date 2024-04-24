if(obj_player.hascontrol){

x = obj_playerArms.handsX + obj_player.xVel
y = obj_playerArms.handsY + obj_player.yVel

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (image_angle > 90 and image_angle < 270){
	image_yscale = -1
} else image_yscale = 1


//show_debug_message("Main type:" + string(projtype))
if !main.chargeable{
	if (mouse_check_button(mb_left)) && shootavailable && idle && !shooting{ //SHOOTING
		idle = false
		shooting = true
		image_index = 0
		//var _x = x + lengthdir_x(60, image_angle - 0);
		//var _y = y + lengthdir_y(60, image_angle - 0);
		//instance_create_layer(_x, _y, "Bullets", oEffect);
	
<<<<<<< Updated upstream
	//instance_create_layer(x,y,"Instances",oShell)
	/*
	if (main.wepname == "peashooter"){
		//projtype = "normal"
		//show_debug_message("pea shoot")
		ShootProjectile()
	}
	if (main.wepname == "repeater"){
		//projtype = "normal"
		//show_debug_message("repeater shoot")
		ShootProjectile()
		alarm_set(1,5)
=======
		//instance_create_layer(x,y,"Instances",oShell)
		/*
		if (main.wepname == "peashooter"){
			//projtype = "normal"
			//show_debug_message("pea shoot")
			ShootProjectile()
		}
		if (main.wepname == "repeater"){
			//projtype = "normal"
			//show_debug_message("repeater shoot")
			ShootProjectile()
			alarm_set(1,5)
>>>>>>> Stashed changes
		
		}
		*/
	}
} else { //charge shooting
	//show_debug_message("Charge it:")
	if (mouse_check_button(mb_left)) && shootavailable && idle && !shooting{ //SHOOTING
		//show_debug_message("pluhs")
		var _max = main.chargetime;
		if increasing{
			image_index = 1
			counter += 1;
			show_debug_message(counter)
		}
		if increasing and counter >= _max{
			image_index = 2
			obj_player.flashAlpha = 0.8;
			obj_player.flashColor = c_white;
			increasing = false
		}
	}
	if mouse_check_button_released(mb_left){
		image_index = 0
		show_debug_message("SHOOT")
		ShootProjectile()
		increasing = true
		counter = 0
		shootavailable = false
		alarm_set(2,10)
	}
}
if shooting{
	var testFrame = image_index
	if image_index < floor(image_index)+.1{
		testFrame = floor(image_index)
	}
	if array_contains(main.shootFrames,testFrame){
		ammo --;
		ShootProjectile()
	}
	if image_index > image_number-1{
		shooting = false
		idle = true
	}
}

}

if reloading{
	if image_index > image_number-1{
		reloading = false
		idle = true
		ammo = clip
		shootavailable = true
	}
}

if keyboard_check_pressed(vk_shift) || mouse_wheel_up() || mouse_wheel_down(){
	obj_Controller.ammoPrimary[obj_Controller.primary] = ammo
	with obj_Controller{
		if mouse_wheel_down(){
			primary -= 1
		}else{
			primary += 1
		}
		if primary > array_length(inventoryPrimary)-1{
			primary = 0
		}
		if primary < 0{
			primary = array_length(inventoryPrimary)-1
		}
		mainweapon = inventoryPrimary[primary]
	}
	ChangePrimary()
}

if (keyboard_check_pressed(ord("1"))){ 
	GotoPrimary(0)
}
if (keyboard_check_pressed(ord("2"))){ 
	GotoPrimary(1)
}
if (keyboard_check_pressed(ord("3"))){ 
	GotoPrimary(2) 
}
if (keyboard_check_pressed(ord("4"))){ 
	GotoPrimary(3)
}










