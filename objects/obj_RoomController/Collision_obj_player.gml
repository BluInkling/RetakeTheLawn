/// @description Insert description here
// You can write your code in this editor

if(triggered == false){
	//close doors and stop from retriggering
	with(obj_Door) closed = true;
	with(obj_graveDoor){
		inactive = false
		spawning = 
		audio_play_sound(snd_graveRise,10,0,0.15,0,random_range(0.75,1.1))
		image_index = 0
	}
	with(obj_Music) switchMusic = true;
	with(obj_player) inBattle = true;
	audio_play_sound(zombiesWereComing,1,false,0.9)
	//instance_create_layer(x+irandom_range(-10,10),y+irandom_range(-10,10),"Walls",obj_enviornmentPlant)
	triggered = true
	

	
	//work out number of waves and enmies fper wave
	total_waves = -1;
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var thisentry = ds_list_find_value(waves,i);
		if(thisentry[_WAVE] > total_waves)
		{
			total_waves++;
			remaining[total_waves] = 0;
		}
		remaining[total_waves]++;
	}
	//show_debug_message("spawning grave")
	wavebar = instance_create_layer(x,y,"WaveBar",obj_WaveBar)
	wavebar.wavenum = total_waves
	wavebar.created = id
	
	for(var h = 0;h < array_length(spawn); h++){ //SPAWNS GRAVES ACCORIFNG TO COORDS IN INSTRANCE CREATION CODE
		instance_create_layer(spawn[h,0],spawn[h,1],"Walls",obj_Gravestone)
	}

	
	for (var b = 0; b < instance_number(obj_Gravestone); ++b;)
	{
		graves[b] = instance_find(obj_Gravestone,b);
		//show_debug_message("grave found" + string(graves[b]))
	}
	
}












