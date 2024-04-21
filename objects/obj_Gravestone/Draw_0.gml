if spawning{
	if image_index > image_number-1{
		spawning = false
		sprite_index = graveSprite
		image_index = style
	}
}

draw_self()

if (summoning == true) && (alarm[0] <= 0){
	//show_debug_message("SHining")
	//sprite_index = sgraveShine
	alarm_set(0,60)
}










