/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(moveSpd,moveDir)
y += lengthdir_y(moveSpd,moveDir)

if place_meeting(x,y,obj_wall){
	Destroy(instance_nearest(x,y,obj_wall))
}

if place_meeting(x,y,obj_zombieHitbox){
	var enemy = instance_nearest(x,y,obj_zombieHitbox).host
	if piercing{
		if !array_contains(piercingList,enemy){
			enemy.Hit(damage,type,moveDir)
			array_push(piercingList,enemy)
		}
	}else{
		enemy.Hit(damage,type,moveDir)
		Destroy()
	}
	//show_debug_message("Enemy hit!")
}

if disp && sprite_index == dispSpr{
	show_debug_message(image_index)
	sprite_index = dispSpr
	if image_index > image_number-1{// || image_number == 1{
		Destroy()
	}
}


