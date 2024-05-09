// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WriteJSON(){
	var save = {
		levelProgress : global.levelProgress,
		playtime : global.playtime,
		wallArmor : global.wallArmor,
		pumpArmor : global.pumpArmor,
		primaryInventory : global.primaryInventory,
		ammoPrimary : global.ammoPrimary,
		secondaryInventory : global.secondaryInventory,
		cooldownSecondary : global.cooldownSecondary,
		primary : global.primary,
		secondary : global.secondary
	}
	var _string = json_stringify(save,true)
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed, 1)
	buffer_write(_buffer, buffer_string,_string)
	buffer_save(_buffer,"saveData.json")
	buffer_delete(_buffer)
	//ReadJSON()
}