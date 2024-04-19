/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(moveSpd,moveDir)
y += lengthdir_y(moveSpd,moveDir)

if place_meeting(x,y,obj_wall){
<<<<<<< Updated upstream
=======
	Destroy(instance_nearest(x,y,obj_wall))
}

<<<<<<< Updated upstream
=======
if place_meeting(x,y,obj_zombieHitbox){
	var enemy = instance_nearest(x,y,obj_zombieHitbox).host
	show_debug_message("Enemy hit!")
	enemy.Hit(damage,type,moveDir)
	Destroy()
	
}

>>>>>>> Stashed changes
if place_meeting(x,y,obj_Enemy){
	var enemy = instance_nearest(x,y,obj_Enemy)
	show_debug_message("Enemy hit!")
	enemy.Hit(damage,type,moveDir)
>>>>>>> Stashed changes
	Destroy()
}



