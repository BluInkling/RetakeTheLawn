/// @description Insert description here
// You can write your code in this editor

beat = sin(beatStep) *(1-(obj_player.hp/obj_player.maxhp))
beatStep += 0.1
if beatStep > 100{ //Just in case
	beatStep = 0
}






