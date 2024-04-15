// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){

if (!instance_exists(obj_MainWeapon)){
	instance_create_layer(x,y,"Gun",obj_MainWeapon)	
}
if (!instance_exists(obj_SubWeapon)){
	instance_create_layer(x,y,"Gun",obj_SubWeapon)	
}

//calculate movement
var moveX = key_right - key_left;

var moveY = key_down - key_up;

hsp = moveX * walksp;

vsp = moveY * walksp



//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall)) //loops as long as not against the wall - so we get as close ot it as possible. sign: if variable we give it is pos, returns one, if not then returns -1
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;
 
 
//lil uzi vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//show_debug_message(vsp)

//Animation
//if (!place_meeting(x,y+1,sWall))
//{
//	sprite_index = sPlayerGojoJAir;
//	image_speed = 0;
//	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
//}
//else
//{
//	image_speed = 1;
//	if (hsp == 0)
//	{
//		//sprite_index = sPlayerGojo;
//		sprite_index = sPlayerGojo;
//		image_speed = 0;
//		image_index = 0;
//	}
//	else
//	{
//		image_speed = 16;
//		sprite_index = sPlayerGojoR;
//	}
//}

//if (hsp != 0) image_xscale = sign(hsp);


}