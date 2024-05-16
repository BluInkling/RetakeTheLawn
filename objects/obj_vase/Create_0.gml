/// @description Insert description here
// You can write your code in this editor

chosen = choose(obj_Enemy,obj_Enemy,obj_Enemy,obj_Enemy,obj_Enemy,obj_enviornmentPlant,obj_enviornmentPlant,obj_pickupable)
if chosen == obj_Enemy{
	enemytype = choose(obj_Controller.enemystats.basic,obj_Controller.enemystats.conehead,obj_Controller.enemystats.buckethead)
}
hb = instance_create_layer(x,y,"Player",obj_vaseHB)
breaking = false
function Break(){
	if !breaking{
	instance_destroy(hb)
	if chosen == obj_Enemy{
		global.grabthis = enemytype
		var zombie = instance_create_layer(x,y,"Player",obj_Enemy)
		zombie.image_index = zombie.image_number-2
		zombie.fromVase = true
	}else{
		instance_create_layer(x,y-6,"Player",chosen)
	}
	breaking = true
	sprite_index = spr_vaseBreak
	//instance_create_layer(x,y,"Player",obj_vaseBreak)
	//instance_destroy()
	}
}









