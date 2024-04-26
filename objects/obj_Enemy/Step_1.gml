
xVel = moveX*spd + forceX
yVel = moveY*spd + forceY

//show_debug_message(string(moveX)+","+string(moveY))


if !place_meeting(x+xVel,y,obj_wall){
	if !place_meeting(x+xVel,y, obj_Enemy){
		x+=xVel
	}else{
		var _other = instance_place(x+xVel,y, obj_Enemy)
		_other.Force(point_distance(0,0,xVel,yVel),point_direction(x,y,_other.x,_other.y))
		x+=xVel
	}
	
}
if !place_meeting(x,y+yVel,obj_wall){
	if !place_meeting(x,y+yVel, obj_Enemy){
		y+=yVel
	}else{
		var _other = instance_place(x,y+yVel, obj_Enemy)
		_other.Force(point_distance(0,0,xVel,yVel),point_direction(x,y,_other.x,_other.y))//point_direction(0,0,xVel,yVel))
		y+=yVel
	}
}



if (hp <= 0 && !dying)
{
	dying = true
	if (instance_exists(egun)) instance_destroy(egun)
	image_index = 0
	SpawnHead(spr_zombieHead)
	if hb != noone{
		instance_destroy(hb)
	}
	if (instance_exists(obj_RoomController))
	{
		with(obj_RoomController)
		{
			if(triggered)
			{
				remaining[current_wave]--;
			}
		}
	}
}












