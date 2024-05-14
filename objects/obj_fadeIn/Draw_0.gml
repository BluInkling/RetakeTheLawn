/// @description Insert description here
// You can write your code in this editor

alpha -= 0.01

if alpha <= 0{
	
	instance_destroy()
}

draw_set_color(c_black)
draw_set_alpha(alpha)
draw_rectangle(0,0,room_width,room_height,0)

draw_set_alpha(1)


if alpha <= 0.97{
	
	with(obj_Music) checkRoom = true
}




