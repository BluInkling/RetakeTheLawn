// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attack(){
	
	EnemyMeleeAttack(enemyType.attackspr,enemyType.attacksprHB); //Args: attack animation, attack animation HITBOX
	
	
	
	//Transition triggers
	if(image_index > image_number-1) state = ENEMYSTATE.CHASE;
	
	//sprite_index = obj_Controller.enemystats.basic.attackspr
	
}