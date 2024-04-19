/// @description Insert description here
// You can write your code in this editor





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
	show_debug_message("ENEMY SPANWED")
}

function crumble(){
	//add gravestone destroy animation
	instance_destroy(self)
} 

