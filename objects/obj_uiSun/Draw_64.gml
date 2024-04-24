/// @description Insert description here
// You can write your code in this editor

drawX = lerp(startX,endX,step)
drawY = lerp(startY,endY,step)

scale = lerp(1,2,step)

draw_sprite_ext(sprite_index,image_index,drawX,drawY,scale,scale,0,c_white,0.5)
step+=stepSpd
if step >= 1{
	instance_destroy()
}