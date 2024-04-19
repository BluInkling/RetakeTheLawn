/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,round(2*(1-(obj_player.hp/obj_player.maxhp))),24,24,1+beat/10,1+beat/10,beat*10,c_white,1)
draw_set_halign(fa_center)
draw_text_transformed(23,14,obj_player.hp,0.4,0.4,0)
draw_set_halign(fa_left)
//show_debug_message(obj_player.hp)







