/// @description Insert description here
// You can write your code in this editor
if x > mouse_x{
	xDir = -1
}else{
	xDir = 1
}

if !(xVel == 0 && yVel == 0){
	moving = true
}else{
	moving = false
}

if moving{
	sprite_index = animRun
}else{
	sprite_index = animIdle
}

image_xscale = xDir

draw_sprite(spr_shadowMain,0,x,y+14)

draw_self()

event_inherited()

if obj_MainWeapon.projtype = "flaming"{
	draw_sprite(sfireeffect,image_number,x,y)
}

if layer_exists("Night"){
	layer_depth(layer_get_id("Night"),depth - 500)
}

//if obj_MainWeapon.charging{
//	draw_circular_bar(x ,y-16 ,obj_MainWeapon.percentagecharged * 100, 100, c_white, 50, 1, 100)
//}
