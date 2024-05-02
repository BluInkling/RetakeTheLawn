audio_play_sound(choose(snd_plantplant,snd_plantplant2),1,false)

<<<<<<< Updated upstream
type = choose("sunflower")
=======
type = choose("sunflower","wallnut","pumpkin")
>>>>>>> Stashed changes
hasSunned = false


if type == "sunflower"{
	sprite_index = spr_sunflower
	//alarm[0] = 100
}
<<<<<<< Updated upstream

=======
if type == "wallnut"{
	sprite_index = spr_wallnut
}
if type == "pumpkin"{
	sprite_index = sPumpkinUI
}
>>>>>>> Stashed changes









