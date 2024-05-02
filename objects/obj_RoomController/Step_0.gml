/// @description SPAWN THINGS!

if(triggered)
{
	//check the list for enemies tat are ready to spawn and if they are the right wave/time to spawn them
	for (var i = 0; i < ds_list_size(waves); i++){ //waves is in instance creation code of each indiviucal spanwer object in room. 
		var next = ds_list_find_value(waves,i)
		if (next[_WAVE] == current_wave) && (next[_DELAY] == timer){ //if eney is in the current wave and its its time 2 shine
			//spawnpoints are defined in instance creation code
			var spawnpoint = next[_SPAWN];
			//instance_create_layer(spawn[spawnpoint,0],spawn[spawnpoint,1],"Player",next[_TYPE]);
			enemytospawn = next[_OBJ]
			enemytype = next[_TYPE]
			with(graves[irandom_range(0,array_length(graves)-1)]) kakusummongai(other.enemytospawn,other.enemytype);
		}
	}
	
	//increase timer
	timer++;
	
	//next wave OR end spawner when all enemies have died
	if (remaining[current_wave] <= 0){
		if(current_wave == total_waves){
			with (obj_Door) closed = false;
			with(obj_Gravestone) crumble();
			with(obj_player) inBattle = false;
			with(obj_Music) switchMusic = true;
			audio_play_sound(winmusic,1,false) //maybe another sound... its too long
			//with(obj_enviornmentPlant) instance_destroy();
			instance_create_layer(x+32,y+32,"Walls",obj_enviornmentPlant)
			instance_destroy();
		}
		else {
			current_wave++;
			timer = 0;
		}
	
}
}











