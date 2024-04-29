/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,round(2*(1-(obj_player.hp/obj_player.maxhp))),24,24,1+beat/10,1+beat/10,beat*10,c_white,1)
draw_set_halign(fa_center)
draw_set_font(global.fnt_bold)
//draw_text(52,17,obj_player.hp)
//draw_text_transformed(23,14,obj_player.hp,0.4,0.4,0)
draw_set_halign(fa_left)
//show_debug_message(obj_player.hp)
if obj_player.wallnutArmor > 0{
	draw_sprite(spr_wallnutArmor,0,24,24)
}

if obj_player.pumpkinArmor > 0{
	draw_sprite(spr_pumpkinArmor,0,24,24)
}
draw_text(19,17,obj_player.hp)





