/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


if global.debug{
	draw_set_font(global.fnt_bold)
	draw_text_transformed(x,y+16,string(depth)+" Health: " + string(hp+armor) + "Type: " + string(enemyType.type),.25,.25,0)
	//draw_set_alpha(0.25)
	//draw_circle_color(x,y,radius,c_yellow,c_yellow,false)
	//draw_circle_color(x,y,attackradius,c_red,c_red,false)
	//draw_set_alpha(1)

	//if collision_line(x,y-16,obj_player.x,obj_player.y,obj_wall,0,0){
	//	draw_line_color(x,y-16,obj_player.x,obj_player.y,c_red,c_red)
	//}else{
	//	draw_line_color(x,y-16,obj_player.x,obj_player.y,c_green,c_lime)
	//}
}
if !spawning{
	draw_sprite(spr_shadowMain,0,x,y-2) 
}
if (instance_exists(egun)){
	if obj_player.x > x{
		image_xscale = 1
	}else{
		image_xscale = -1
	}
}
draw_self()

event_inherited();


if hasHat{
	hatFrame = armor <= enemyType.armor/2
	if sprite_index == spr_zombieIdle || sprite_index == spr_zombieNoHandIdle || sprite_index == spr_zombieIdleNoArms{
		hatX = obj_Controller.zombieHeadAnims.idle.x[image_index]*image_xscale
		hatY = obj_Controller.zombieHeadAnims.idle.y[image_index]
	}else if sprite_index == spr_zombieAttack || sprite_index == spr_zombieNoHandAttack{
		hatX = obj_Controller.zombieHeadAnims.attack.x[image_index]*image_xscale
		hatY = obj_Controller.zombieHeadAnims.attack.y[image_index]
	}else if sprite_index == spr_zombieRun || sprite_index == spr_zombieNoHandRun || sprite_index == spr_zombieRunNoArms{
		hatX = obj_Controller.zombieHeadAnims.run.x[image_index]*image_xscale
		hatY = obj_Controller.zombieHeadAnims.run.y[image_index]
	} else if sprite_index == spr_zombieSpawn{
		hatX = obj_Controller.zombieHeadAnims.spawn.x[image_index]*image_xscale
		hatY = obj_Controller.zombieHeadAnims.spawn.y[image_index]
	}
	if hatY < 0{
		draw_sprite_ext(hatSpr,hatFrame,x+hatX,y+hatY,image_xscale,1,0,c_white,1)
	}
}


if hasButter{
	
	if sprite_index == spr_zombieIdle{
		butterX = obj_Controller.zombieHeadAnims.idle.x[image_index]//*image_xscale
		butterY = obj_Controller.zombieHeadAnims.idle.y[image_index]
	}else if sprite_index == spr_zombieAttack{
		butterX = obj_Controller.zombieHeadAnims.attack.x[image_index]//*image_xscale
		butterY = obj_Controller.zombieHeadAnims.attack.y[image_index]
	}else if sprite_index == spr_zombieRun{
		butterX = obj_Controller.zombieHeadAnims.run.x[image_index]//*image_xscale
		butterY = obj_Controller.zombieHeadAnims.run.y[image_index]
	} else if sprite_index == spr_zombieSpawn{
		butterX = obj_Controller.zombieHeadAnims.spawn.x[image_index]//*image_xscale
		butterY = obj_Controller.zombieHeadAnims.spawn.y[image_index]
	}
	
	//draw_sprite_ext(spr_zombieButter,0,x+hatX,y+hatY,image_xscale,1,0,c_white,1)
	if butterY < 0{
		draw_sprite_ext(spr_zombieButter,0,x+butterX*image_xscale,y+butterY,image_xscale,1,0,c_white,1)
	}
	
}

if buffField{
	draw_sprite(spr_flagBuff,0,x,y)
}

if alreadyBuffed{
	draw_sprite(sBuffed,0,x,y)
}

if frozen{
	draw_sprite(sIce,0,x,y)
}