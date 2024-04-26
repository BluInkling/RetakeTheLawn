/// @description Insert description here
// You can write your code in this editor
//show_debug_message(sprite_index)


x += lengthdir_x(moveSpd,moveDir)
y += lengthdir_y(moveSpd,moveDir)

if place_meeting(x,y,obj_wall){
	Destroy(instance_nearest(x,y,obj_wall))
}

if place_meeting(x,y,obj_player){
		with(obj_player){
			
		}
		//enemy.Hit(damage,type,moveDir)
		Destroy()
	//show_debug_message("Enemy hit!")
}




