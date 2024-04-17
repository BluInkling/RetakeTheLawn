main = obj_Controller.mainweapon

type = obj_MainWeapon.projtype
show_debug_message(type)
sprite_index = main.projsprite
splat = main.projsplat
//show_debug_message(type)
//show_debug_message("projetciles type: " + string(type))

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


moveDir = point_direction(x,y,mouse_x,mouse_y) + random_range(-main.accuracy,main.accuracy)
moveSpd = main.movespeed

alarm[0] = main.lifetime

function Destroy(_other){ //Will eventually add splat animation
	if !is_undefined(_other){
		if _other.object_index == obj_wall{
			var splatObj = instance_create_layer(x,y,"Bullets",obj_splat)
			splatObj.sprite_index = splat
			splatObj.image_angle = round(point_direction(_other.x,_other.y,x,y)/90)*90+180
		}
	}
	instance_destroy()
}




