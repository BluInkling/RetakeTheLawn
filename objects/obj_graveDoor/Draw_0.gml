/// @description Insert description here
// You can write your code in this editor

if spawning{
	sprite_index = spawnSpr
	if image_index > image_number-1{
		spawning = false
		sprite_index = baseSpr
		image_index = style
	}
}

if breaking{
	sprite_index = breakSpr
	if image_index > image_number-1{
		inactive = true
		breaking = false
	}
}

if inactive{
	sprite_index = spr_none
}
depth = 400-y
/*
if instance_exists(obj_player){
	//depth = obj_player.depth// +8
}
*/

draw_self()









