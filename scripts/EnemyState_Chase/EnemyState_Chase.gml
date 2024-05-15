// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Chase(){

	//show_debug_message("CHASE")

	//behavior
	my_dir = point_direction(x,y,obj_player.x,obj_player.y)
	moveX = lengthdir_x(1,my_dir)
	moveY = lengthdir_y(1,my_dir)
 	
	//Transition Triggers
	
	//Changes to 
	
	//if player NOT in range OR (player is in range AND cannot be seen)
	if !collision_circle(x,y,radius, obj_player,false,false){// or collision_line(x,y-16,obj_player.x,obj_player.y,obj_wall,false,false){ //if colliding with wall returns true
		state = ENEMYSTATE.IDLE;
	}
	
	if(collision_circle(x,y,attackradius,obj_player,false,false)){
		state = ENEMYSTATE.ATTACK;
		attackDir = point_direction(x,y,obj_player.x,obj_player.y)
		if enemyType == obj_Controller.enemystats.imp ||  enemyType == obj_Controller.enemystats.tacoimp{
			audio_play_sound(choose(imp1,imp2),1,false,0.5,0,random_range(0.90,1.20))
		}
	}
	
	if hasHand{
		sprite_index = enemyType.movespr
	}else{
		sprite_index = enemyType.movesprH
	}
	image_xscale = sign(moveX)
}