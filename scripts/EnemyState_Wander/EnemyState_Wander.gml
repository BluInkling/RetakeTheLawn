// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Wander(){
	counter += 1;

	//show_debug_message("WANDER")

	//Transition Triggers
	if(counter >= room_speed * 3){
		var change = choose(0,1);
		switch(change){
			case 0: state = ENEMYSTATE.WANDER;
			case 1:
				my_dir = irandom_range(0,359)
				moveX = lengthdir_x(1, my_dir);
				moveY = lengthdir_y(1, my_dir);
				counter = 0;
		}
	}
	if (collision_circle(x,y,radius, obj_player,false,false) && !collision_line(x,y-16,obj_player.x,obj_player.y,obj_wall,false,false)){
	//if(collision_circle(x,y,radius, obj_player,false,false) and !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false)){  //maybe if it senses a projectile itll start chasing the player too?
		state = ENEMYSTATE.CHASE;
	}
	
	//sprite!
	if hasHand{
		sprite_index = obj_Controller.enemystats.basic.movespr
	}else{
		sprite_index = spr_zombieNoHandRun
	}
	
	if moveX != 0{
		image_xscale = sign(moveX);
	}
}