
//draw_self()
if instance_exists(obj_Controller){
	if (kindofpickup == obj_Controller.weaponstats || kindofpickup == "sun"){
		draw_sprite(spr_shadowPlant,0,x,y+6)
	}else if type.wepname == "cherrybomb" || type.wepname == "iceberglettuce"{
		draw_sprite(spr_shadowPlant,0,x,y+2)
	}else if type.wepname == "cocoabean"{
		draw_sprite(spr_shadowPlant,0,x+2,y+4)
	}else if type.wepname == "torchwood"{
		draw_sprite(spr_shadowPlant,0,x,y+4)
	}
}
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
	
	obj_uiPickupDesc.name = type.showname
	obj_uiPickupDesc.desc = type.desc
	with obj_uiPickupDesc{
		if alpha < 1{
			alpha += alphaStep*3
			if alpha > 1{
				alpha = 1
			}
		}
	}
} //else draw_text_transformed(x,y-32,"noo?",0.25,0.25,0)
depth = 400-y+12












