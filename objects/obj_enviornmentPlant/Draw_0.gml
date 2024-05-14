/// @description Insert description here
// You can write your code in this editor
if type == "wallnut"{
	draw_sprite(spr_shadowPlant,0,x,y+3)
}else if type == "sunflower"{
	draw_sprite(spr_shadowPlant,0,x,y+4)
}else if type == "pumpkin"{
	draw_sprite(spr_shadowMain,0,x,y+2)
}

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
		if type == "wallnut"{
			obj_uiPickupDesc.name = "Wall-nut"
		}else if type == "pumpkin"{
			obj_uiPickupDesc.name = "Pumpkin"
		}
		obj_uiPickupDesc.desc = "Gives the player +1 armor, does not stack"
		with obj_uiPickupDesc{
			if alpha < 1{
				alpha += alphaStep*3
				if alpha > 1{
					alpha = 1
				}
			}
		}
	}else{
		draw_self()
	}
}

depth = 400-y+12





