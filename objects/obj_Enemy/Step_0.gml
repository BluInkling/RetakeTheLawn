/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !dying && !isDead{
	switch (state){
			case ENEMYSTATE.IDLE: EnemyState_Idle(); break;
			case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
			case ENEMYSTATE.WANDER: EnemyState_Wander(); break;
			case ENEMYSTATE.ATTACK: EnemyState_Attack(); break;
	
		}
}else{
	if state != ENEMYSTATE.IDLE{
		//Run death
	}else{
		
	}
	moveX = 0
	moveY = 0
	sprite_index = spr_zombieDying
	if image_index > image_number-1{
		isDead = true
		alarm[1] = 60
	}
}

if isDead{
	sprite_index = spr_zombieDead
}
