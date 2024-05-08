/// @description Insert description here
// You can write your code in this editor
if y > 96{
	y-= 4
}
draw_self()
switch (state){
		case "continue":
			draw_set_color(c_white)
			draw_set_halign(fa_left)
			draw_set_font(global.fnt_textSmall)
			draw_text(x-8,y-4,"Level: "+string(global.levelProgress+1)+" / "+string(array_length(global.roomOrder)))
			draw_text(x-8,y+8,"Playtime: "+Timer(global.playtime))
			break
		case "sure":
			draw_set_color(c_white)
			draw_set_halign(fa_center)
			draw_set_font(global.fnt_textSmall)
			draw_text(x,y-8,"Are you sure?")
			draw_set_halign(fa_left)
			break
		case "done":
			draw_set_color(c_white)
			draw_set_halign(fa_center)
			draw_set_font(global.fnt_textSmall)
			draw_text(x,y-8,"Progress Reset")
			draw_set_halign(fa_left)
			break
}








