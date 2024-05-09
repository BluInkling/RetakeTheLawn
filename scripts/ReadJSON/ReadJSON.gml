// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.emptyData = {
	levelProgress : 0,
	playtime : 0,
	wallArmor : 0,
	pumpArmor : 0,
	primaryInventory : [],
	ammoPrimary : [],
	secondaryInventory : [],
	cooldownSecondary : [],
	primary : 0,
	secondary : 0
}
function ReadJSON(){
	var _file = file_text_open_read("saveData.json")
	var _fileStr = ""

	while !file_text_eof(_file){
		_fileStr += file_text_readln(_file)
	}
	file_text_close(_file)
	saveData = json_parse(_fileStr)
	show_debug_message(saveData) 
	global.levelProgress = saveData.levelProgress
	global.playtime = saveData.playtime
	global.wallArmor = saveData.wallArmor
	global.pumpArmor = saveData.pumpArmor
	global.primaryInventory = saveData.primaryInventory
	global.ammoPrimary = saveData.ammoPrimary
	global.secondaryInventory = saveData.secondaryInventory 
	global.cooldownSecondary = saveData.cooldownSecondary
	global.primary = saveData.primary 
	global.secondary = saveData.secondary
}