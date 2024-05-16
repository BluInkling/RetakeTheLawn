audio_play_sound(choose(snd_plantplant,snd_plantplant2),1,false)

type = choose("sunflower","wallnut","pumpkin")

hasSunned = false

if room == rm_day3 && type == "sunflower"{
	type = choose("sunshroom","sunshroom","sunshroomL")
}
if type == "sunflower"{
	sprite_index = spr_sunflower
	//alarm[0] = 100
}
if type == "sunshroom"{
	sprite_index = spr_sunshroom
}
if type == "sunshroomL"{
	sprite_index = spr_bigSunshroom
}
if type == "wallnut"{
	sprite_index = spr_wallnut
}
if type == "pumpkin"{
	sprite_index = spr_pumpkin
}

//Outline Shader
draw = false
upixelH = shader_get_uniform(shd_outline,"pixelH")
upixelW = shader_get_uniform(shd_outline,"pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0))
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0))


function GiveSun(small){
	var xtogo = x + irandom_range(-40,40);
	var ytogo = y;

	/// Event were the archer creates the arrow.
	ax = x; // Starting position for the arc.
	ay = y;

	bx = xtogo; // Middle of the arc.
	by = ytogo - irandom_range(72,90); // Up 256 pixels to create an arc.

	cx = xtogo; // End position of the arc.
	cy = ytogo;
	if small{
		with(instance_create_layer(x,y,"Player",obj_collectable))
		{
		    ax = other.ax;
		    ay = other.ay;
		    bx = other.bx;
		    by = other.by;
		    cx = other.cx;
		    cy = other.cy;
			type = "sunS"
			counter = 0; // Increase as we move along the arc.
			moving = true;
			sprite_index = spr_sunS
		}
	}else{
		with(instance_create_layer(x,y,"Player",obj_collectable))
		{
		    ax = other.ax;
		    ay = other.ay;
		    bx = other.bx;
		    by = other.by;
		    cx = other.cx;
		    cy = other.cy;
			type = "sun"
			counter = 0; // Increase as we move along the arc.
			moving = true;
			sprite_index = spr_sun
		}
	}
	alarm[1] = 30
}




