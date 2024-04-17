// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Chase(){
	show_debug_message("CHASE")
	//behavior
	my_dir = point_direction(x,y,obj_player.x,obj_player.y)
	moveX = lengthdir_x(spd,my_dir)
	moveY = lengthdir_y(spd,my_dir)
	if !place_meeting(x+moveX,y,obj_wall){
		x += moveX;
	}
	if !place_meeting(x,y+moveY,obj_wall){
		y += moveY;
	}
 	
	//Transition Triggers
	
	//Changes to 
	
	//if player NOT in range OR (player is in range AND cannot be seen)
	if !collision_circle(x,y,radius, obj_player,false,false) or collision_line(x,y-16,obj_player.x,obj_player.y,obj_wall,false,false){ //if colliding with wall returns true
		state = ENEMYSTATE.IDLE;
	}
	
	if(collision_circle(x,y,attackradius,obj_player,false,false)){
		state = ENEMYSTATE.ATTACK;
	}
	
	
	sprite_index = obj_Controller.enemystats.basic.movespr
	image_xscale = sign(moveX)
}