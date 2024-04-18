// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attack(){
<<<<<<< Updated upstream
<<<<<<< Updated upstream
	
=======
	//show_debug_message("ATTACK")
>>>>>>> Stashed changes
=======

//	show_debug_message("ATTACK")
	moveX = 0
	moveY = 0

>>>>>>> Stashed changes
	EnemyMeleeAttack(enemyType.attackspr,enemyType.attacksprHB); //Args: attack animation, attack animation HITBOX
	
	
	
	//Transition triggers
	if(image_index > image_number-1) state = ENEMYSTATE.CHASE;
	
	//sprite_index = obj_Controller.enemystats.basic.attackspr
	
}