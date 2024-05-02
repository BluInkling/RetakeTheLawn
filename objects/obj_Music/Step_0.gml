
if !obj_player.inBattle && switchMusic{
	audio_stop_sound(currBattleMusic)
	//currNormalMusic = normal[random_range(0,array_length(normal))]
	//show_debug_message(audio_sound_get_track_position(currNormalMusic))
	//show_debug_message(audio_sound_length(currNormalMusic))
	
	//catch is audio is paused
	if(audio_is_paused(currNormalMusic)){
		show_debug_message("Soug is Resumed")
		audio_sound_gain(currNormalMusic,0,0)
		audio_sound_gain(currNormalMusic,1,3000)
		audio_resume_sound(currNormalMusic)
	}
	if (audio_sound_get_track_position(currNormalMusic) >= audio_sound_length(currNormalMusic)) or !audio_is_playing(currNormalMusic){
		show_debug_message("Soug is over")
		currNormalMusic = normal[random_range(0,array_length(normal))]
	}
	if !audio_is_playing(currNormalMusic){
		show_debug_message("Soug is starting")
		audio_play_sound(currNormalMusic,1,false)
		switchMusic = false
	}

	
	
}

if obj_player.inBattle && switchMusic{
	audio_pause_sound(currNormalMusic)
	show_debug_message("normal music paused")
	currBattleMusic = battle[random_range(0,array_length(battle))]
	if !audio_is_playing(currBattleMusic){
		show_debug_message("playing zombie sound")
		audio_play_sound(currBattleMusic,1,true)
		switchMusic = false
	}
}













