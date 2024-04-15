/// @description Insert description here
// You can write your code in this editor





//if keyboard_check(ord("B")){
//	main.projtype = "flaming"
//	//show_debug_message(main.projtype)
//	//show_debug_message("weapon on fcire")
//} else main.projtype = "normal"

cooldown --;

if ((mouse_check_button(mb_right)) or keyboard_check(ord("B")))  && subavailable == true{
	show_debug_message("sub activated!")
	show_debug_message(sub)
	if sub == "torchwood"{
		show_debug_message("torch activated!")
		obj_MainWeapon.projtype = "flaming" //the sprites are changed in oProjectile
		cooldown = 60
		subavailable = false
		alarm_set(0,cooldown)
	}
}



