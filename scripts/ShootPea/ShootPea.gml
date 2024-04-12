// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShootPea(){
	
	firingdelay = oStats.firingspeed;
	var _x2 = x + lengthdir_x(30, image_angle - 0);
	var _y2 = y + lengthdir_y(30, image_angle - 0);
	with (instance_create_layer(_x2, _y2,"Bullets",oProjectile)) //whats in here happesn to THE CREATED BULLET
	{
		
		accuracy = oStats.accuracy
		//audio_play_sound(choose(peashoot,peashoot2),1,false)
		speed = 21;
		direction = other.image_angle + random_range((accuracy * -1),accuracy); //refers to the propertiy of the original object(the gun)
		image_angle = direction;
	}
}



//function Shoot2Pea(){
//	ammo --;
//	firingdelay = oStats.firingspeed;
//	var _x2 = x + lengthdir_x(30, image_angle - 0);
//	var _y2 = y + lengthdir_y(30, image_angle - 0);
//	with (instance_create_layer(_x2, _y2,"Bullets",oProjectile)) //whats in here happesn to THE CREATED BULLET
//	{
//		accuracy = oStats.accuracy
//		//audio_play_sound(choose(peashoot,peashoot2),1,false)
//		speed = 21;
//		direction = other.image_angle + random_range((accuracy * -1),accuracy); //refers to the propertiy of the original object(the gun)
//		image_angle = direction;
//	}
//	alarm_set(1,60)
//	while (alarm[1] >= 0) show_debug_message(alarm[1])
//	with (instance_create_layer(_x2, _y2,"Bullets",oProjectile)) //whats in here happesn to THE CREATED BULLET
//	{
//		accuracy = oStats.accuracy
//		//audio_play_sound(choose(peashoot,peashoot2),1,false)
//		speed = 21;
//		direction = other.image_angle + random_range((accuracy * -1),accuracy); //refers to the propertiy of the original object(the gun)
//		image_angle = direction;
//	}
//}