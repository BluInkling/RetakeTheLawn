if(obj_player.hascontrol){

x = obj_playerArms.handsX + obj_player.xVel
y = obj_playerArms.handsY + obj_player.yVel

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (image_angle > 90 and image_angle < 270){
	image_yscale = -1
} else image_yscale = 1


//show_debug_message("Main type:" + string(projtype))

if (mouse_check_button(mb_left)) && shootavailable && idle && !shooting{ //SHOOTING
	idle = false
	shooting = true
	image_index = 0
	//var _x = x + lengthdir_x(60, image_angle - 0);
	//var _y = y + lengthdir_y(60, image_angle - 0);
	//instance_create_layer(_x, _y, "Bullets", oEffect);
	
	//instance_create_layer(x,y,"Instances",oShell)
	/*
	if (main.wepname == "peashooter"){
		//projtype = "normal"
		show_debug_message("pea shoot")
		ShootProjectile()
	}
	if (main.wepname == "repeater"){
		//projtype = "normal"
		show_debug_message("repeater shoot")
		ShootProjectile()
		alarm_set(1,5)
		
	}
	*/
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

if keyboard_check_pressed(vk_shift){
	obj_Controller.ammoPrimary[obj_Controller.primary] = ammo
	with obj_Controller{
		primary += 1
		if primary > array_length(inventoryPrimary)-1{
			primary = 0
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










