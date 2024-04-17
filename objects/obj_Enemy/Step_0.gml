/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch (state){
		case ENEMYSTATE.IDLE: EnemyState_Idle(); break;
		case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
		case ENEMYSTATE.WANDER: EnemyState_Wander(); break;
		case ENEMYSTATE.ATTACK: EnemyState_Attack(); break;
	
	}
	


