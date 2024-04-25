main = obj_Controller.mainweapon

type = obj_MainWeapon.projtype
//show_debug_message(type)
/*
if main.wepname == "peashooter" or main.wepname == "repeater"{ //tochwood only affects NORMAL peas
	if type == "flaming"{
		//show_debug_message("is flaming pea created")
		sprite_index = sFlamingPea;
	}
	if type == "frozen"{
		//show_debug_message("is frozen pea created")
		//sprite_index = sFrozenPea;
	}
}
*/
sprite_index = type.mainsprite //sets sprite to mainweapons normal proj sprite
splat = type.splatsprite
damage = type.damage
dispSpr = type.dispsprite

piercing = false
piercingList = []
//show_debug_message(type)
//show_debug_message("projetciles type: " + string(type))

//show_debug_message("before checks")
//show_debug_message(type)
//show_debug_message(damage)

//changes the sprite if buff is active

if obj_MainWeapon.flaming{
	if type == obj_Controller.projstats.snow{
		type = obj_Controller.projstats.pea
		sprite_index = type.mainsprite
		splat = type.splatsprite
		damage = type.damage
		dispSpr = type.dispsprite
	}else{
		image_blend = c_orange
		damage += 2
	}
}
/*
if type == "flaming"{
	if main.wepname == "peashooter" or main.wepname == "repeater" or main.wepname == "threepeater"{ //tochwood only affects NORMAL peas
		//show_debug_message("is flaming pea created") 
		sprite_index = sFlamingPea;
		//show_debug_message("sprite changed to on fire!")
		//sprite_index = sCabbage;
		damage = damage + 2;
	}
	if main.wepname == "snowpea"{ //tochwood makes frozen peas normal
		//show_debug_message("sprite changed to normal!")
		sprite_index = spr_pea
	}	

}
*/

//show_debug_message("after checks")
//show_debug_message(type)
//show_debug_message(damage)

moveDir = point_direction(x,y,mouse_x,mouse_y) + random_range(-main.accuracy,main.accuracy) + obj_MainWeapon.angle
moveSpd = type.movespeed
lifetime = type.lifetime

image_angle = moveDir
alarm[0] = lifetime

disp = false //Determines when a projectile dissipates

function Destroy(_other){ //Will eventually add splat animation
	if !is_undefined(_other){
		//show_debug_message("SPLAT")
		//if _other.object_index == obj_wall{
			var splatObj = instance_create_layer(x,y,"Bullets",obj_splat)
			splatObj.sprite_index = splat
			splatObj.image_angle = round(point_direction(_other.x,_other.y,x,y)/90)*90+180
		//}
	}
	instance_destroy()
}




