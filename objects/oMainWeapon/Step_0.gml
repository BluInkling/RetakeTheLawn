if(oPlayer.hascontrol){

x = oPlayer.x;
y = oPlayer.y + 10;

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
	
	if(oController.mainweapon == "peashooter"){
		//projtype = "normal"
		ShootPea()
	}
	
	if(oController.mainweapon == "repeater") {
		//projtype = "normal"
		ShootPea()
		alarm_set(1,5)
		
	}
}



}














