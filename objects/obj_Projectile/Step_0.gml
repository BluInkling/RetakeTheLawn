/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(moveSpd,moveDir)
y += lengthdir_y(moveSpd,moveDir)
<<<<<<< Updated upstream

=======
if place_meeting(x,y,obj_vaseHB){
	var vase = instance_nearest(x,y,obj_vase)
	if !vase.breaking{
		vase.Break()
		audio_play_sound(vase_breaking,1,false,0.9,0,random_range(0.8,1.2))
	}
}
>>>>>>> Stashed changes
if place_meeting(x,y,obj_wall){
	Destroy(instance_nearest(x,y,obj_wall))
}

if place_meeting(x,y,obj_zombieHitbox){
	var enemy = instance_nearest(x,y,obj_zombieHitbox).host
	PlaySoundSplat()
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




