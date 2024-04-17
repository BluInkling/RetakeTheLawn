/// @description Insert description here
// You can write your code in this editor

if keyboard_check_released(ord("L")) and summoning == false{
	summoning = true
	//for (var i = 0; i < 3; i++) {
		XPlace = irandom_range(-10,10)
		YPlace = irandom_range(-10,10)
		with instance_create_layer(x + XPlace,y + YPlace,"Player",obj_Enemy){
			enemyType = obj_Controller.enemystats.basic; //sets the kidn of zombie to spawn
			//-------------------
			hp = enemyType.hp
			spd = enemyType.spd
			
		}
		
	//}	
}










