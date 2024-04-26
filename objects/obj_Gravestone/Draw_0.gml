if spawning{
	if image_index > image_number-1{
		spawning = false
		sprite_index = graveSprite
		image_index = style
	}
}

if breaking{
	if image_index > image_number-1{
		instance_destroy()
	}
}

draw_self()

if (summoning == true) && (alarm[0] <= 0){
	//show_debug_message("SHining")
	//sprite_index = sgraveShine
	alarm_set(0,60)
}










