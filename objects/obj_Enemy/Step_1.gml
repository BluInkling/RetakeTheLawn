
//forceX = clamp(forceX,-1.5,1.5)
//forceY = clamp(forceY,-1.5,1.5)

xVel = moveX*spd + forceX//*(1+((state == ENEMYSTATE.ATTACK)*1.5))
yVel = moveY*spd + forceY//*(1+((state == ENEMYSTATE.ATTACK)*1.5))
//show_debug_message(place_meeting(x+xVel,y,obj_wall))//forceX)
//show_debug_message(string(moveX)+","+string(moveY))

if !dying{
if !(place_meeting(x+xVel,y,obj_wall) || place_meeting(x+xVel,y,obj_wallPool)){
	if !place_meeting(x+xVel,y, obj_Enemy){
		x+=xVel
	}else{
		var _other = instance_place(x+xVel,y, obj_Enemy)
		_other.Force(point_distance(0,0,xVel,yVel),point_direction(x,y,_other.x,_other.y))
		x+=xVel
	}
	
}
if !(place_meeting(x,y+yVel,obj_wall) || place_meeting(x,y+yVel,obj_wallPool)){
	if !place_meeting(x,y+yVel, obj_Enemy){
		y+=yVel
	}else{
		var _other = instance_place(x,y+yVel, obj_Enemy)
		_other.Force(point_distance(0,0,xVel,yVel),point_direction(x,y,_other.x,_other.y))//point_direction(0,0,xVel,yVel))
		y+=yVel
	}
}
}


if (hp <= 0 && !dying)
{
	hasButter = false
	eggY = 16
	dying = true
	audio_play_sound(snd_gibPop,1,false,0.9,0,random_range(0.8,1.2))
	if (instance_exists(egun)) instance_destroy(egun)
	image_index = 0
	SpawnHead(enemyType.headspr)
	if hb != noone{
		instance_destroy(hb)
	}
	if (instance_exists(obj_RoomController) && !fromVase)
	{
		with(obj_RoomController)
		{
			if(triggered)
			{
				remaining[current_wave]--;
			}
		}
	}
	if enemyType.type == "tacoimp"{
		instance_create_depth(x,y,0,obj_taco)
	}
}












