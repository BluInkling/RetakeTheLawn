if(obj_player.hascontrol){

x = obj_player.x;
y = obj_player.y + 10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (image_angle > 90 and image_angle < 270){
	image_yscale = -1
} else image_yscale = 1


firingdelay -= 1;

if (mouse_check_button(mb_left)) && (firingdelay < 0) && shootavailable{ //SHOOTING
	
	//var _x = x + lengthdir_x(60, image_angle - 0);
	//var _y = y + lengthdir_y(60, image_angle - 0);
	//instance_create_layer(_x, _y, "Bullets", oEffect);
	
	//instance_create_layer(x,y,"Instances",oShell)
	
	ammo --;
	
	if (main.wepname == "peashooter"){
		//projtype = "normal"
		show_debug_message("pea shoot")
		ShootPea()
	}
	
	if (main.wepname == "repeater"){
		//projtype = "normal"
		show_debug_message("repeater shoot")
		ShootPea()
		alarm_set(1,5)
		
	}
}



}














