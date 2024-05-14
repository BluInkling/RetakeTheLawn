/// @description Insert description here
// You can write your code in this editor
depth = -1000
if alpha > 0{
	draw_set_color(c_black)
	draw_set_alpha(0.5*clamp(alpha,0,1))
	draw_rectangle(center-width,0,center+width,height,false)
	draw_set_alpha(alpha)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_font(global.fnt_textSmall)
	draw_text(center,10,text)
	draw_set_halign(fa_left)
	draw_set_alpha(1)
}









