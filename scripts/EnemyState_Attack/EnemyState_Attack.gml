// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attack(){
//	show_debug_message("ATTACK")
	//moveX = 0
	//moveY = 0
	if enemyType.behavior == "melee"{
		EnemyMeleeAttack(enemyType.attackspr,enemyType.attacksprHB); //Args: attack animation, attack animation HITBOX

	
		//Transition triggers
		if(image_index > image_number-1){ 
			state = ENEMYSTATE.CHASE;
			hasHit = false
			spd = enemyType.spd
		}
		//sprite_index = obj_Controller.enemystats.basic.attackspr
	}
	
	if enemyType.behavior == "ranged"{
		
		sprite_index = enemyType.idlespr //shooting sprite?
		counter += 1;
		if(counter >= room_speed * 1){ //50% chance to start wandering every 3 seconds
			with (egun){
				Shoot();
			}
			state = ENEMYSTATE.WANDER
			counter = 0
		}


		
		//counter += 1
		//if(counter >= room_speed * 1){ //wait 1 second before moving again
		//	counter = 0
		//	state = ENEMYSTATE.WANDER
			
		//}
		
	}
	
	
}