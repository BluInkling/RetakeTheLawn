/// @description Insert description here
// You can write your code in this editor

if type == "sunflower"{
	draw_self()
}else{
	if (draw){
		//draw_text_transformed(x-10,y-48,"Pickup " + name + "?",0.35,0.35,0)
		//draw_text_transformed(x-10,y-30,"Press E",0.25,0.25,0)
		shader_set(shd_outline)
		shader_set_uniform_f(upixelW,texelW)
		shader_set_uniform_f(upixelH,texelH)
		draw_self()
		shader_reset()
	}else{
		draw_self()
	}
}







