/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player){
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
	global.ammoPrimary = obj_Controller.ammoPrimary
	global.levelProgress += 1
	room_goto(global.roomOrder[global.levelProgress])
}









