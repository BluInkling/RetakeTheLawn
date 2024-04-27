/// @description Insert description here
// You can write your code in this editor


if type == "sun"{
	
	if moving == true{
		yVel+=grav
		x+=xVel
		if y < height{
			y+=yVel
		}else{
			yVel = yVel * -0.5
			xVel = xVel * 0.5
			if !hasFallen{
				hasFallen = true
				moving = false
			}
		}
	}
/*
	counter += 1; // Update position in the arc.
	x = quad_bezier(ax,bx,cx,counter/60); // Move in an arc over 60 steps.
	y = quad_bezier(ay,by,cy,counter/60);
	//image_angle = point_direction(xprevious, yprevious, x, y);
	if counter == 60
	{
		moving = false; 
	  //instance_destroy(self) // Destroy or do stuff...
	}

	} else x = x y = y
	*/
	
	
	if(moving == false && place_meeting(x,y,obj_player)){
		with(obj_player){
			hp += 3;
		}
		
		instance_create_layer(x,y,"Gun",obj_uiSun)
		instance_destroy()//self
		//audio_sound_pitch(sunsfx,random_range(0.90,1.50))
		//audio_play_sound(sunsfx,1,false)
		

	}
	
}


if type == "stagnantsun"{
	sprite_index = spr_sun
	if(place_meeting(x,y,obj_player)){
		with(obj_player){
			hp += 3;
		}
		//audio_sound_pitch(sunsfx,random_range(0.90,1.50))
		//audio_play_sound(sunsfx,1,false)
		
		instance_create_layer(x,y,"Gun",obj_uiSun)
		instance_destroy()//self
		

	}
}











