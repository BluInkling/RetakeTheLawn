main = obj_Controller.mainweapon

type = obj_MainWeapon.projtype
show_debug_message(type)
<<<<<<< Updated upstream
sprite_index = main.projsprite
//show_debug_message(type)
//show_debug_message("projetciles type: " + string(type))

<<<<<<< Updated upstream
if main.wepname == "peashooter" or main.wepname == "repeater"{ //tochwood only affects NORMAL peas
	if type == "flaming"{
		//show_debug_message("is flaming pea created")
		sprite_index = sFlamingPea;
	}
	if type == "frozen"{
		//show_debug_message("is frozen pea created")
		//sprite_index = sFrozenPea;
	}
=======
=======

//if main.wepname == "peashooter" or main.wepname == "repeater"{ //tochwood only affects NORMAL peas
//	if type == "flaming"{
//		//show_debug_message("is flaming pea created")
//		sprite_index = sFlamingPea;
//	}
//	if type == "frozen"{
//		//show_debug_message("is frozen pea created")
//		//sprite_index = sFrozenPea;
//	}
//}

>>>>>>> Stashed changes
sprite_index = main.projsprite //sets sprite to mainweapons normal proj sprite
splat = main.projsplat
damage = main.damage
//show_debug_message(type)
//show_debug_message("projetciles type: " + string(type))

show_debug_message("before checks")
show_debug_message(type)
show_debug_message(damage)

//changes the sprite if buff is active
if type == "flaming"{
	if main.wepname == "peashooter" or main.wepname == "repeater" or main.wepname == "threepeater"{ //tochwood only affects NORMAL peas
		//show_debug_message("is flaming pea created") 
<<<<<<< Updated upstream
		show_debug_message("sprite changed to on fire!")
		sprite_index = sFlamingPea;
=======
		//show_debug_message("sprite changed to on fire!")
		sprite_index = sCabbage;
>>>>>>> Stashed changes
		damage = damage + 2;
	}
	if main.wepname == "snowpea"{ //tochwood makes frozen peas normal
		show_debug_message("sprite changed to normal!")
		sprite_index = spr_pea
	}	
>>>>>>> Stashed changes
}

show_debug_message("after checks")
show_debug_message(type)
show_debug_message(damage)

moveDir = point_direction(x,y,mouse_x,mouse_y) + random_range(-main.accuracy,main.accuracy) + obj_MainWeapon.angle
moveSpd = main.movespeed

alarm[0] = main.lifetime

function Destroy(){ //Will eventually add splat animation
	instance_destroy()
}




