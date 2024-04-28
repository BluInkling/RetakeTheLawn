
//draw_self()

draw_set_font(fnt1)
if overlap == spr_potatomineIdle{
	draw_sprite(overlap,image_index,x,y+4)
}else{
	draw_sprite(overlap,image_index,x,y)
}

if (draw){
	//draw_text_transformed(x-10,y-48,"Pickup " + name + "?",0.35,0.35,0)
	//draw_text_transformed(x-10,y-30,"Press E",0.25,0.25,0)
	shader_set(shd_outline)
	shader_set_uniform_f(upixelW,texelW)
	shader_set_uniform_f(upixelH,texelH)
	if overlap == spr_potatomineIdle{
		draw_sprite(overlap,image_index,x,y+4)
	}else{
		draw_sprite(overlap,image_index,x,y)
	}
	shader_reset()
} //else draw_text_transformed(x,y-32,"noo?",0.25,0.25,0)
depth = 400-y+12












