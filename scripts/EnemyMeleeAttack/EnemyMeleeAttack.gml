// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyMeleeAttack(){
	xMove = 0
	yMove = 0
	//show_debug_message("processign atatck!")
//start of the attack


if (sprite_index != argument0)
{
	if hasHand{
		sprite_index = argument0;
	}else{
		sprite_index = spr_zombieNoHandAttack
	}
	//image_index = 0;
	image_speed = 1
	ds_list_clear(hitByAttack);
}

//use ATTACK HITBOX and check for hits
mask_index = argument1;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,obj_player,hitByAttackNow,false);
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
				show_debug_message("Ahh im hit")
				hp--; // minus 1 //DEAR FUTURE MAX: make hp when u wake upaw
				//flash = 3;
				//hitfrom = other.direction;
				//audio_play_sound(feral_bash_land_01,1,false)
			}
		}
	
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = enemyType.idlespr


}
