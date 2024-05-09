/// @description Insert description here
// You can write your code in this editor
draw_self()
if place_meeting(x,y,obj_crosshair){
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,image_yscale,image_angle,c_white,0.1)
	shader_reset();
	if mouse_check_button_pressed(mb_left){
		switch (type){
			case "yes":
				global.levelProgress = 0
				global.wallArmor = false
				global.pumpArmor = false
				global.primaryInventory = []
				global.ammoPrimary = []
				global.secondaryInventory = []
				global.cooldownSecondary = []
				global.primary = 0
				global.secondary = 0
				global.hasDoneTutorial = false
				global.hasNewMain = false
				global.hasNewSub = false
				global.hasCollected = false
				var _string = json_stringify(global.emptyData,true)
				var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed, 1)
				buffer_write(_buffer, buffer_string,_string)
				buffer_save(_buffer,"saveData.json")
				buffer_delete(_buffer)
				host.ChangeMenu("done")
				break;
			case "no":
				host.ChangeMenu("continue")
				break
			case "okay":
				host.ChangeMenu("new")
				break
		}
	}
}










