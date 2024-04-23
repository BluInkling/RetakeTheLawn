/// @description Insert description here
// You can write your code in this editor

//states for potato and cherry

//in poatato
//    state flying

//    state landed

//	  state waiting

//    state explode


//if(place_meeting(x,y,obj_wall)) speed=0;


switch(sub.wepname){
	case "potatomine":
		switch(state){
			case "flying":
				//show_debug_message("flying")
				sprite_index = spr_potatomineThrow
				step+=stepSpd
				if !place_meeting(lerp(startX,targetX,step),y,obj_wall){
					x = lerp(startX,targetX,step)
				}
				if !place_meeting(x,lerp(startY,targetY,step),obj_wall){
					y = lerp(startY,targetY,step)
				}
				drawX = x
				drawY = y-z
				z=(-1*power(step,2)+step)*175
				if step > 1{
					state = "landed"
					image_index = 0
				}
				break;
			case "landed":
				//show_debug_message("landed")
				sprite_index = spr_potatomineEmerge
				if image_index >= image_number -1{
					//show_debug_message("chnage to waiting")
					state = "waiting"
				}
				break;
			case "waiting":
				//show_debug_message("waiting")
				sprite_index = spr_potatomineIdle
				if(collision_circle(x,y-6,8,obj_zombieHitbox,false,false)){
					state = "explode"
					image_index = 0
				}
				break;
			case "explode":
				//show_debug_message("exploding")
				sprite_index = spr_potatomineExplode
				ProcessExplosion()
				if image_index >= image_number-1{
					//show_debug_message("dying")
					instance_destroy(self)
				}
				break;
			
			
		}
		break;
	
	
}







