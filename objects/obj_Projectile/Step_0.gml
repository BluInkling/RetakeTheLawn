/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(moveSpd,moveDir)
y += lengthdir_y(moveSpd,moveDir)

if place_meeting(x,y,obj_wall){
	Destroy(instance_nearest(x,y,obj_wall))
}

if place_meeting(x,y,obj_Enemy){
	var enemy = instance_nearest(x,y,obj_Enemy)
	show_debug_message("Enemy hit!")
	enemy.hp --;
	enemy.flashAlpha = 1;
	if type == "frozen"{
		enemy.flashColor = c_aqua;
	}else if type == "flaming"{
		enemy.flashColor = c_red;
	}else{
		enemy.flashColor = c_white;
	}
	enemy.Force(2,moveDir)
	Destroy()
}



