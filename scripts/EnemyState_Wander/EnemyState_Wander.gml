// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Wander(){
	counter += 1;
<<<<<<< Updated upstream
=======
	//show_debug_message("WANDER")
>>>>>>> Stashed changes
	if !place_meeting(x+moveX,y,obj_wall){
		x += moveX;
	}
	if !place_meeting(x,y+moveY,obj_wall){
		y += moveY;
	}
	
	
	
<<<<<<< Updated upstream
=======
	//show_debug_message("WANDER")

>>>>>>> Stashed changes
	//Transition Triggers
	if(counter >= room_speed * 3){
		var change = choose(0,1);
		switch(change){
			case 0: state = ENEMYSTATE.WANDER;
			case 1:
				my_dir = irandom_range(0,359)
				moveX = lengthdir_x(spd, my_dir);
				moveY = lengthdir_y(spd, my_dir);
				counter = 0;
		}
	}
	if(collision_circle(x,y,48,obj_player,false,false)){ //maybe if it senses a projectile itll start chasing the player too?
		state = ENEMYSTATE.CHASE;
	}
	
	//sprite!
	sprite_index = obj_Controller.enemystats.basic.movespr
	image_xscale = sign(moveX);
}