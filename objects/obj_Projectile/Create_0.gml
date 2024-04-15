main = obj_Controller.mainweapon

type = obj_MainWeapon.projtype
sprite_index = main.projsprite
//show_debug_message(type)
//show_debug_message("projetciles type: " + string(type))

if type == "flaming"{
	//show_debug_message("is flaming pea created")
	sprite_index = sFlamingPea;
}
if type == "frozen"{
	//show_debug_message("is flaming pea created")
	sprite_index = sFrozenPea;
}











