/// @description RELOAID CHECK
main = obj_Controller.mainweapon //gets the main weapon from controller
clip = main.clip


sprite_index = main.mainidlesprite

if (ammo <= 0) && shootavailable = true{
	shootavailable = false
	alarm_set(0,60)
}












