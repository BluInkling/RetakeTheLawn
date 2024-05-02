main = obj_Controller.mainweapon

type = obj_MainWeapon.projtype

butter = false



if (main.wepname == "fumeshroom"){
	var num = irandom_range(0,100)
	if num < 45{ //45% chnace to be small bubuel
		type = main.secondammo
	}
}
//show_debug_message(type)
/*
if main.wepname == "peashooter" or main.wepname == "repeater"{ //tochwood only affects NORMAL peas
	if type == "flaming"{
		//show_debug_message("is flaming pea created")
		sprite_index = sFlamingPea;
	}
	if type == "frozen"{
		//show_debug_message("is frozen pea created")
		//sprite_index = sFrozenPea;
	}
}
*/
sprite_index = main.projsprite //sets sprite to mainweapons normal proj sprite
splat = main.projsplat
damage = main.damage

piercing = false
piercingList = []
if (main.wepname == "fumeshroom") piercing = true
//show_debug_message(type)
//show_debug_message("projetciles type: " + string(type))

//show_debug_message("before checks")
//show_debug_message(type)
//show_debug_message(damage)

//changes the sprite if buff is active
if type == "flaming"{
	if main.wepname == "peashooter" or main.wepname == "repeater" or main.wepname == "threepeater"{ //tochwood only affects NORMAL peas
		//show_debug_message("is flaming pea created") 
		sprite_index = sFlamingPea;
		//show_debug_message("sprite changed to on fire!")
		//sprite_index = sCabbage;
		damage = damage + 2;
	}
	if main.wepname == "snowpea"{ //tochwood makes frozen peas normal
		//show_debug_message("sprite changed to normal!")
		sprite_index = spr_pea
	}	

}


//show_debug_message("after checks")
//show_debug_message(type)
//show_debug_message(damage)

moveDir = point_direction(x,y,mouse_x,mouse_y) + random_range(-main.accuracy,main.accuracy) + obj_MainWeapon.angle
moveSpd = main.movespeed

image_angle = moveDir
alarm[0] = main.lifetime

function Destroy(_other){ //Will eventually add splat animation
	if !is_undefined(_other){
		//show_debug_message("SPLAT")
		//if _other.object_index == obj_wall{
			var splatObj = instance_create_layer(x,y,"Bullets",obj_splat)
			splatObj.sprite_index = splat
			splatObj.image_angle = round(point_direction(_other.x,_other.y,x,y)/90)*90+180
		//}
	}
	instance_destroy()
}

peasounds = [peaHit,peaHit2,peaHit3]
flingsounds = [flingHit,flingHit2,flingHit3]
bubblesound = popsfx

function PlaySoundSplat(){
	if main.family == "pea"{
		sound = peasounds[irandom_range(0,array_length(peasounds)-1)]
		audio_sound_pitch(sound,random_range(0.90,1.40))
		audio_play_sound(sound,1,false,0.9)
		
	}
	else if main.family == "fling"{
		sound = flingsounds[irandom_range(0,array_length(flingsounds)-1)]
		audio_sound_pitch(sound,random_range(0.95,1.40))
		if (butter == true) {
			buttersound = snd_butter
			audio_sound_pitch(buttersound,random_range(0.90,1.40))
			audio_play_sound(buttersound,1,false,0.9,0,1)
		} else {
			audio_play_sound(sound,1,false,0.9)
		}
	}
	//else if main.family == "bubble"{
	//	sound = bubblesound
	//	audio_sound_pitch(sound,random_range(0.80,1.40))
	//	audio_sound_gain(sound,50,0)
	//	audio_play_sound(sound,1,false)
		
	//}
	
}




