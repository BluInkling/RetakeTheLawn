/// @description RELOAID CHECK
main = obj_Controller.mainweapon //gets the main weapon from controller
clip = main.clip
//projtype = main.projtype

//if (main.wepname == "snowpea") {
//	projtype = "frozen"
//} else projtype = "normal"


//sprite_index = main.mainidlesprite

if ((ammo <= 0) && shootavailable = true) || keyboard_check_pressed(ord("R")){
	Reload()
}












