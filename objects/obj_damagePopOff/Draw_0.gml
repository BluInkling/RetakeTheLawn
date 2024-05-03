/// @description Insert description here
// You can write your code in this editor

if moving == true{
		yVel+=grav
		x+=xVel
		if y < height{
			y+=yVel
		}else{
			yVel = yVel * -0.5
			xVel = xVel * 0.5
			if !hasFallen{
				hasFallen = true
				moving = false
			}
		}
	} else {
		fade = true
	}


draw_set_font(global.fnt_bold)
draw_set_color(color)

//show_debug_message(num)
//draw_text_ext_transformed(x,y-24,string(num),3,64,0.6,0.5,0)
draw_text_ext_transformed_color(x,y-24,string(num),3,64,0.6,0.5,0,color,color,color,color,alpha)




if fade && alpha >= 0{
	alpha -= fadeStep
	if alpha < fadeStep{
		//Destroy()
		instance_destroy()
	}
}

//draw_self()











