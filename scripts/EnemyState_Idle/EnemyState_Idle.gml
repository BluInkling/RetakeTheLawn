// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Idle(){
<<<<<<< Updated upstream
<<<<<<< Updated upstream
=======
	//show_debug_message("IDLE")
>>>>>>> Stashed changes
=======
	moveX = 0
	moveY = 0
	//show_debug_message("IDLE")

>>>>>>> Stashed changes
	counter += 1;
	
	//Transition triggers
	if(counter >= room_speed * 3){ //50% chance to start wandering every 3 seconds
		var change = choose(0,1)
		switch(change){
			case 0 : state = ENEMYSTATE.WANDER
			case 1 : counter = 0; break;
		}
	}
	//I DID NTO KNOW COLLISON CIRCLE WAS A FUNCTION THIS IS AMAZING NEWS
	if(collision_circle(x,y,48, obj_player,false,false)){ 
		state = ENEMYSTATE.CHASE;	//okay 64 is to big, 32 is too small
	}
	
	sprite_index = obj_Controller.enemystats.basic.idlespr
}