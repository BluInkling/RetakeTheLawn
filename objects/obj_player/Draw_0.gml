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
draw_self()

event_inherited()



