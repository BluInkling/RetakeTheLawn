/// @description Insert description here
// You can write your code in this editor


//Get the arch throw code from ryan snowball
//this is temp
// * DONE
/*
direction = point_direction(x,y,mouse_x,mouse_y);
speed = 3;
alarm_set(0,30);
*/

dir = 0//point_direction(x,y,mouse_x,mouse_y);
//For potato mine this is determined by the subweapon script when spawned
fixedDist = false //To be determined by the struct, if true, uses maxDist as the universal distance
maxDist = 100
dist =0

startX = x
startY = y
targetX = startX
targetY = startY
/*Moved to alarm to account for changes in spawner object having a delayed effect
if !fixedDist{
	if dist > maxDist{
		targetX = x+lengthdir_x(maxDist,dir)
		targetY = y+lengthdir_y(maxDist,dir)
	}else{
		targetX = x+lengthdir_x(dist,dir)
		targetY = y+lengthdir_y(dist,dir)
	}
}else{
	targetX = x+lengthdir_x(maxDist,dir)
	targetY = y+lengthdir_y(maxDist,dir)
}
*/

alarm[0] = 1
z = 0
stepSpd = 0.04
step = 0

drawX = x
drawY = y-z

sub = obj_SubWeapon.sub
state = "flying"


hitByAttack = ds_list_create();



function ProcessExplosion(){

	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,obj_Enemy,hitByAttackNow,false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			// if this instance has not yet been hit by atacck
			var hitID = hitByAttackNow[| i]; //shorthand for finfing a particular entry in a ds list; ds_list_find_value(hitbyattacknow, i) does the sawme thing
			if (ds_list_find_index(hitByAttack,hitID) == -1)//checks to see if the i enemy hit is already in the list
			{ 
				ds_list_add(hitByAttack,hitID);
				with (hitID)
				{
					//show_debug_message("hit :" + string(hitID))
					Hit(6,"normal", point_direction(x,y,hitID.x,hitID.y))
					
					
				}
			}
	
		}
	}
	ds_list_destroy(hitByAttackNow);

}