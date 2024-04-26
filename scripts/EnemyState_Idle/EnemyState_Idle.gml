// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Idle(){
	moveX = 0
	moveY = 0
	//show_debug_message("IDLE")

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
	
	//if hiding behind wall goes back and forth btwn idle and chase
	
	//if player is  in range AND enemy can see them
	if enemyType.behavior == "melee"{
		if (collision_circle(x,y,radius, obj_player,false,false) && !collision_line(x,y-16,obj_player.x,obj_player.y,obj_wall,false,false)){
			state = ENEMYSTATE.CHASE;	//okay 64 is to big, 32 is too small
		}
	}
	
	
	if hasHand{
		sprite_index = obj_Controller.enemystats.basic.idlespr
	}else{
		sprite_index = spr_zombieNoHandIdle
	}
}