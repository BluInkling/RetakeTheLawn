/// @description Insert description here
// You can write your code in this editor
/*
draw_set_color(c_black)
draw_set_alpha(0.5)

draw_rectangle(center-width,bottom,center+width,bottom-height,false)
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_font(global.fnt_textSmall)
draw_text(center,bottom-height+10,name)
draw_text_ext(center,bottom-height+20,desc,0,100)
*/

if alpha > 0{
	draw_set_color(c_black)
	draw_set_alpha(0.5*alpha)
	draw_rectangle(center-width,bottom,center+width,bottom-height,false)
	draw_set_alpha(alpha)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_font(global.fnt_textSmall)
	draw_text(center,bottom-height+10,name)
	draw_set_color(c_ltgray)
	draw_text_ext(center,bottom-height+20,desc,9,width*2-10)
	draw_set_halign(fa_left)
	draw_set_alpha(1)
}

