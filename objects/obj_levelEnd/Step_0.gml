/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player) && !instance_exists(obj_fadeOut){
	global.wallArmor = obj_player.wallnutArmor
	global.pumpArmor = obj_player.pumpkinArmor
	/*
	obj_inventoryTracker.primaryInv = obj_Controller.inventoryPrimary
	obj_inventoryTracker.primaryInv = [obj_Controller.weaponstats.peashooter]
	obj_inventoryTracker.ammo = obj_Controller.ammoPrimary
	obj_inventoryTracker.secondaryInv = obj_Controller.inventorySecondary
	obj_inventoryTracker.cool = obj_Controller.cooldownSecondary
	show_debug_message(obj_inventoryTracker.primaryInv)
	*/
	//global.test = obj_Controller.testA
	global.primaryInventory = obj_Controller.inventoryPrimary
	global.secondaryInventory = obj_Controller.inventorySecondary
	global.ammoPrimary = obj_Controller.ammoPrimary
	global.cooldownSecondary = obj_Controller.cooldownSecondary
	global.primary = obj_Controller.primary
	global.secondary = obj_Controller.secondary
	global.levelProgress += 1
	FadeOut(global.roomOrder[global.levelProgress])
	//room_goto(global.roomOrder[global.levelProgress])
}









