
if pausemenu{ //activates when paused is pressed
	if audio_is_playing(currNormalMusic){
		audio_pause_sound(currNormalMusic)
		//show_debug_message("normal music paused")
	}
	if audio_is_playing(currBattleMusic){
		audio_pause_sound(currBattleMusic)
		//show_debug_message("batttle music paused")
	}
	switchMusic = true
}
else if fadeOut{
	//show_debug_message("Fadeout song called")
	alarm_set(1,120)
	if audio_is_playing(currNormalMusic){
		audio_sound_gain(currNormalMusic,0,1000)
	}
	if audio_is_playing(currBattleMusic){
		audio_sound_gain(currBattleMusic,0,1000)
	}
	fadeOut = false
}
else if checkRoom{
	//show_debug_message("check room  called")
	if audio_is_playing(currNormalMusic){
		audio_stop_sound(currNormalMusic)
	}
	if audio_is_playing(currBattleMusic){
		audio_stop_sound(currBattleMusic)
	}
	var roomname = room_get_name(room)
	switch(roomname){
		case "rm_day3":
			type = "night"
			break;
		default:
			type = "day"
			break;
	}
	checkRoom = false
	switchMusic = true
	currNormalMusic = normal[global.levelProgress]
	currBattleMusic = battle[global.levelProgress]
}
else if switchMusic{
	//show_debug_message("music time!!")
	if !obj_player.inBattle && switchMusic{
		//show_debug_message("normal script looping")
		
		//audio_stop_sound(currBattleMusic)
		//currNormalMusic = normal[random_range(0,array_length(normal))]
		//show_debug_message(audio_sound_get_track_position(currNormalMusic))
		//show_debug_message(audio_sound_length(currNormalMusic))
	
		//catch is audio is paused
		if(audio_is_paused(currNormalMusic)){
			//show_debug_message("Soug is Resumed")
			audio_sound_gain(currBattleMusic,0,3000)
			alarm_set(0,240)
			audio_sound_gain(currNormalMusic,0,0)
			audio_sound_gain(currNormalMusic,1,3000)
			audio_resume_sound(currNormalMusic)
			switchMusic = false
		}
		if (audio_sound_get_track_position(currNormalMusic) >= audio_sound_length(currNormalMusic)) or !audio_is_playing(currNormalMusic){
			//show_debug_message("Soug is over")
			//show_debug_message(type)
			audio_sound_gain(currNormalMusic,1,0)
			currNormalMusic = normal[global.levelProgress]
			/*
			if type == "night"{
				currNormalMusic = night[random_range(0,array_length(night))]
			} else currNormalMusic = normal[random_range(0,array_length(normal))]
			*/
		}
		if !audio_is_playing(currNormalMusic){
			//show_debug_message("Soug is starting")
			audio_sound_gain(currNormalMusic,1,0)
			audio_play_sound(currNormalMusic,1,true)
			switchMusic = false
		}
		else{
			//show_debug_message("normal music already playing")
			audio_sound_gain(currNormalMusic,1,0)
			switchMusic = false
		}

	
	
	}

	else if obj_player.inBattle && switchMusic{
		audio_pause_sound(currNormalMusic)
		//show_debug_message("normal music paused")

		
		//show_debug_message(audio_is_playing(currBattleMusic))
		//show_debug_message(!audio_is_playing(currBattleMusic))		
		
		if(audio_is_paused(currBattleMusic)){
			//show_debug_message("Battle Soug is Resumed")
			audio_sound_gain(currBattleMusic,0,0)
			audio_sound_gain(currBattleMusic,1,3000)
			audio_resume_sound(currBattleMusic)
			switchMusic = false
		}
		if !(audio_is_playing(currBattleMusic)){
			/*
			if type == "night"{
				currBattleMusic = mus_WateryGraves
			} else currBattleMusic = battle[random_range(0,array_length(battle))]
			*/
			currBattleMusic = battle[global.levelProgress]
			//show_debug_message("playing zombie sound")
			audio_sound_gain(currBattleMusic,1,0)
			audio_play_sound(currBattleMusic,1,true)
			switchMusic = false
		}
		else {
			//show_debug_message("battl audio is alreayd playing")	
			switchMusic = false
		}
	}


	

}


//show_debug_message(obj_player.inBattle)
