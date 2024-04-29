// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attack(){
	//show_debug_message("ATTACK")
	//moveX = 0
	//moveY = 0
	if enemyType.behavior == "melee"{
		EnemyMeleeAttack(enemyType.attackspr,enemyType.attacksprHB); //Args: attack animation, attack animation HITBOX

	
		//Transition triggers
		if(image_index > image_number-1){ 
			state = ENEMYSTATE.CHASE;
			hasHit = false
			if !alreadyBuffed{
				spd = enemyType.spd
			}
			
		}
		//sprite_index = obj_Controller.enemystats.basic.attackspr
	}
	
	else if enemyType.behavior == "ranged"{
		
		sprite_index = enemyType.idlespr //shooting sprite?
		counter += 1;
		if(counter >= room_speed * 1){ //50% chance to start wandering every 3 seconds
			with (egun){
				Shoot();
			}
			state = ENEMYSTATE.WANDER
			counter = 0
		}
	}
	else if enemyType.behavior == "support"{
		moveX = 0;
		moveY = 0;
		sprite_index = enemyType.attackspr //shooting sprite?
		buffField = true;
		counter += 1;
		//if(collision_circle(x,y,128,obj_Enemy,false,true)){
			 
		//	with(obj_Enemy){
		//		//spd += 10;
		//		hp += 1;
		//		show_debug_message("enemy buffed")
		//		show_debug_message(id)
		//	
		//show_debug_message(spd)
		//	}
		//}
		var _list = ds_list_create();
		var _num = collision_circle_list(x, y, 64, obj_Enemy, false, true, _list, false);
		if (_num > 0)
		{
		    for (var i = 0; i < _num; ++i;)
		    {
				//show_debug_message("going to zombie")
				with(_list[| i]){
					//hp ++;
					if alreadyBuffed == false{
						Buff()
						alreadyBuffed = true
						show_debug_message("Buffed!")
					}
				}
		        //instance_destroy(_list[| i]);
		    }
		}
		ds_list_destroy(_list);
		if(counter >= room_speed * 3){ //50% chance to start wandering every 3 seconds
			show_debug_message("buff state ended")
			buffField = false
			state = ENEMYSTATE.WANDER
			counter = 0
		}
	}
	
	
}