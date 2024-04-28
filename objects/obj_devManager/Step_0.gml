/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("T")){ //Debug Mode
	global.debug = !global.debug
}
if keyboard_check_pressed(vk_enter){ // Summon pickup
	with obj_player{
		instance_create_layer(x+20,y,"Player",obj_pickupable)
		show_debug_message("spawned")	
	}
}
if keyboard_check_pressed(ord("Y")){ // Go to tile Test
	room_goto(rm_prototyperoom)
}

if keyboard_check_released(ord("L")){ // Spawn footsoldier at nearest grave
	with obj_player{
		var grave = instance_nearest(x,y,obj_Gravestone)
		if grave != noone{
			with grave{
				summoning = true
				for (var i = 0; i < 3; i++) {
					XPlace = irandom_range(-30,30)
					YPlace = irandom_range(-30,30)
					
					kakusummongai(obj_Enemy,obj_Controller.enemystats.basic)
					//instance_create_layer(x + XPlace,y + YPlace,"Player",obj_Enemy)
					//with instance_create_layer(x + XPlace,y + YPlace,"Player",obj_Enemy){
						//This section dosen't work, it acts second and if it dosent line up it overrides
						/*
						enemyType = obj_Controller.enemystats.conehead; //sets the kidn of zombie to spawn
						//-------------------
						hp = enemyType.hp
						armor = enemyType.armor
						spd = enemyType.spd
						*/
					//}
				}
				kakusummongai(obj_Enemy,obj_Controller.enemystats.flagzombie)
			}	
		}
	}
}
if keyboard_check_pressed(ord("O")){ //Restarts the game
	game_restart()
}
if keyboard_check_pressed(ord("G")){ // Gives all weapons
	with obj_Controller{
		inventoryPrimary = [weaponstats.peashooter,weaponstats.repeater,weaponstats.snowpea,weaponstats.threepeater,weaponstats.cabbagepult,weaponstats.kernelpult,weaponstats.fumeshroom,weaponstats.puffshroom]
		ammoPrimary = [weaponstats.peashooter.clip,weaponstats.repeater.clip,weaponstats.snowpea.clip,weaponstats.threepeater.clip,weaponstats.cabbagepult.clip,weaponstats.kernelpult.clip,weaponstats.fumeshroom.clip,weaponstats.puffshroom.clip]

		inventorySecondary = [subweaponstats.potatomine,subweaponstats.torchwood]
		cooldownSecondary = [0,0]
	}

}








