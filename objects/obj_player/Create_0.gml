/// @description Insert description here
// You can write your code in this editor
event_inherited()


maxhp = 8
hp = maxhp;
wallnutArmor = 0
pumpkinArmor = 0

xInput = 0
yInput = 0

xVel = 0
yVel = 0
moveSpd = 1.5

xDir = 1 //for sprite flipping

//instance_create_layer(x,y,"Instances",obj_playerArms)

//States
moving = false

//Animations
animIdle = spr_daveIdle
animRun = spr_daveRun

hascontrol = true;

//how morbid!
dead = false

cold = false;

instance_create_layer(0,0,"Player",obj_Controller)
instance_create_layer(0,0,"Gun",obj_MainWeapon)
instance_create_layer(0,0,"Player",obj_SubWeapon)


function Hit(damage){
	if wallnutArmor+pumpkinArmor > 0{
		var tempHp = hp+wallnutArmor+pumpkinArmor
		var tempArmor = 0
		tempHp-=damage
		if tempHp >= maxhp{
			hp = maxhp
			tempArmor = tempHp - maxhp
			show_debug_message(tempHp)
			if tempArmor == 1{
				pumpkinArmor = 0
			}else if tempArmor == 0{
				wallnutArmor = 0
			}
		}else{
			hp = tempHp
		}
	}else{
		hp -= damage;
	}
	flashAlpha = 1;
	/*
	if wallnutArmor > 0{ //if has armor
		wallnutArmor -= damage//armor takes damage
		if wallnutArmor <= 0{ //if no more armor
			hp += wallnutArmor;
			wallnutArmor=0
		}
	}else if pumpkinArmor > 0{ //if has armor
		pumpkinArmor -= damage//armor takes damage
		if pumpkinArmor <= 0{ //if no more armor
			hp += pumpkinArmor;
			pumpkinArmor=0
		}
	}else{ //if no armor, health takes damage
		hp -= damage;
	}
	*/

}

/*
//Outline Shader
upixelH = shader_get_uniform(shd_outline,"pixelH")
upixelW = shader_get_uniform(shd_outline,"pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0))
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0))

var lay_id = layer_get_id("Player");
layer_shader(lay_id,shd_outline);
//layer_shader(layer_get_id("Gun"),shd_outline);
shader_set(shd_outline)
shader_set_uniform_f(upixelW,texelW)
shader_set_uniform_f(upixelH,texelH)
shader_reset()
*/