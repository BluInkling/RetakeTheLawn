/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_MainWeapon){
	if obj_MainWeapon.main.family == "pea"{
		image_index = 0
	}else if obj_MainWeapon.main.family == "bubble"{
		image_index = 1
	}else if obj_MainWeapon.main.family == "fling"{
		if obj_MainWeapon.counter / obj_MainWeapon.main.chargetime == 1{
			image_index = 3
		}else{
			image_index = 2
		}
	}
}
if instance_exists(obj_player){
	depth = obj_player.depth-1000
}else{
	depth = -1000
}
if room != rm_cutscene{
	draw_self()
}









