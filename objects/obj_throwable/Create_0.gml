/// @description Insert description here
// You can write your code in this editor


//Get the arch throw code from ryan snowball
//this is temp

direction = point_direction(x,y,mouse_x,mouse_y);
speed = 3;
alarm_set(0,30);


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
					show_debug_message("hit :" + string(hitID))
					Hit(4,"normal",0)
					
					
				}
			}
	
		}
	}
	ds_list_destroy(hitByAttackNow);

}