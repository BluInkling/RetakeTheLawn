

// Inherit the parent event
draw_self();



if(flashAlpha > 0){
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,image_yscale,image_angle,flashColor,flashAlpha)
	shader_reset();
}

depth = 300-(y)///100)

draw_set_font(fnt1)
draw_text_transformed(x,y+16,string(depth)+" Health: " + string(hp+armor) + "Type: " + string(enemyType.type),.20,.20,0)




//draw_self()
//If drawself is after event_inherit the flahs doesnt work

















