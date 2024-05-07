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
			if point_distance(x,y,obj_player.x,obj_player.y) < 150{
				with (egun){
					Shoot();
				}
			}
			state = ENEMYSTATE.WANDER
			counter = 0
		}
	}
	else if enemyType.behavior == "support"{
		if hasHand{
			sprite_index = enemyType.attackspr //shooting sprite?
		}else{
			sprite_index = enemyType.attacksprH //shooting sprite?
		}
		moveX = 0
		moveY = 0
		buffField = true;
		//counter += 1;
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
					if armor == 0 && enemyType != obj_Controller.enemystats.imp{
						hat = choose("cone","cone","bucket")
						if hat == "cone"{
							hatSpr = spr_zombieCone
							hasHat = true
							armor = 4
						}else if hat == "bucket"{
							hatSpr = spr_zombieBucket
							hasHat = true
							armor = 8
						}
					}
					if alreadyBuffed == false{
						Buff()
						alreadyBuffed = true
						//show_debug_message("Buffed!")
						sprite_index = enemyType.idlespr
					}
				}
		        //instance_destroy(_list[| i]);
		    }
		}
		ds_list_destroy(_list);
		if(image_index > image_number-1){
		//if(counter >= room_speed * 3){ //50% chance to start wandering every 3 seconds
			///show_debug_message("buff state ended")
			buffField = false
			state = ENEMYSTATE.WANDER
			//counter = 0
		}
	}
	
	
}