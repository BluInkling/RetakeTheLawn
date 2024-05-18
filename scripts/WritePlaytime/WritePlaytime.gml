// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WritePlaytime(){
	var _file = file_text_open_read("saveData.json")
	var _fileStr = ""

	while !file_text_eof(_file){
		_fileStr += file_text_readln(_file)
	}
	file_text_close(_file)
	saveData = json_parse(_fileStr)
	var save = {
		levelProgress : saveData.levelProgress,
		playtime : global.playtime,
		wallArmor : saveData.wallArmor,
		pumpArmor : saveData.pumpArmor,
		primaryInventory : saveData.primaryInventory,
		ammoPrimary : saveData.ammoPrimary,
		secondaryInventory : saveData.secondaryInventory,
		cooldownSecondary : saveData.cooldownSecondary,
		primary : saveData.primary,
		secondary : saveData.secondary
	}
	var _string = json_stringify(save,true)
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed, 1)
	buffer_write(_buffer, buffer_string,_string)
	buffer_save(_buffer,"saveData.json")
	buffer_delete(_buffer)
}