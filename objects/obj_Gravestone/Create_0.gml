/// @description Insert description here
// You can write your code in this editor

style = irandom_range(0,3)

graveSprite = spr_gravestones
spawnSprites = [spr_graveASpawn,spr_graveBSpawn,spr_graveCSpawn,spr_graveDSpawn]
breakSprites = [spr_graveABreak,spr_graveBBreak,spr_graveCBreak,spr_graveDBreak]

spawning = true
breaking = false

sprite_index = spawnSprites[style]

XPlace = 0
YPlace = 0

summoning = false

global.grabthis = 0;

//function SummonZombie(){
//	draw_sprite()
	
//}

function kakusummongai(whatenemy,enemytype){
	//summoning = true
	XPlace = irandom_range(-10,10)
	YPlace = irandom_range(-10,10)
	global.grabthis = enemytype
	instance_create_layer(x + XPlace,y + YPlace,"Player",whatenemy)
	//show_debug_message("ENEMY SPANWED")
}

function crumble(){
	//add gravestone destroy animation
	breaking = true
	sprite_index = breakSprites[style]
	image_index = 0
	//instance_destroy(self)
} 

