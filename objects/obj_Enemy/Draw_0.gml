/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event




event_inherited();

draw_set_font(fnt1)
draw_text_transformed(x,y+16,"Health: " + string(hp) + "Type: " + string(enemyType.type),.20,.20,0)

if global.debug{
	draw_circle_color(x,y,radius,c_yellow,c_yellow,false)
	draw_circle_color(x,y,attackradius,c_red,c_red,false)


	if collision_line(x,y-16,obj_player.x,obj_player.y,obj_wall,0,0){
		draw_line_color(x,y-16,obj_player.x,obj_player.y,c_red,c_red)
	}else{
		draw_line_color(x,y-16,obj_player.x,obj_player.y,c_green,c_lime)
	}
}

draw_self()

