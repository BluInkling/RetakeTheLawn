/// @description Insert description here
// You can write your code in this editor

alpha += 0.01

if alpha >= 1{
	with obj_pickupable{
		part_system_destroy(part)
	}
	with obj_taco{
		part_system_destroy(part)
	}
	audio_stop_sound(mus_menu_zombieonlawnINST)
	room_goto(next)
}

draw_set_color(c_black)
draw_set_alpha(alpha)
draw_rectangle(0,0,room_width,room_height,0)

draw_set_alpha(1)