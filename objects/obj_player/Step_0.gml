/// @description Insert description here
// You can write your code in this editor
if (hascontrol){
event_inherited()


//if (!instance_exists(obj_MainWeapon)){
//	instance_create_layer(x,y,"Gun",obj_MainWeapon)	
//}
//if (!instance_exists(obj_SubWeapon)){
//	instance_create_layer(x,y,"Gun",obj_SubWeapon)	
//}


xInput = keyboard_check(ord("D"))-keyboard_check(ord("A"))
yInput = keyboard_check(ord("S"))-keyboard_check(ord("W"))

xVel = xInput*moveSpd+forceX
yVel = yInput*moveSpd+forceY

//Normalizing Movement
if (abs(xVel)+abs(yVel)> moveSpd){
	xVel = xVel/sqrt(2)
	yVel = yVel/sqrt(2)
}

//Collisions
if !place_meeting(x+xVel,y,obj_wall) && !place_meeting(x+xVel,y,obj_wallPool){
	if !place_meeting(x+xVel,y, obj_actor){
		x+=xVel
	}else{
		//var _other = instance_place(x+xVel,y, obj_actor)
		//_other.Force(moveSpd,point_direction(0,0,xVel,yVel))
		var _other = instance_place(x+xVel,y, obj_actor)
		if _other.object_index == obj_Enemy{
			if !_other.dying{
				_other.Force(moveSpd,point_direction(0,0,xVel,yVel))
			}else{
				x+=xVel
			}
		}else{
			_other.Force(moveSpd,point_direction(0,0,xVel,yVel))
		}
	}
	
}else{
	if place_meeting(x+xVel,y,obj_graveDoor){
		if instance_nearest(x,y,obj_graveDoor).inactive{
			x+=xVel
		}
	}
}
if !place_meeting(x,y+yVel,obj_wall) && !place_meeting(x,y+yVel,obj_wallPool){
	if !place_meeting(x,y+yVel, obj_actor){
		y+=yVel
	}else{
		var _other = instance_place(x,y+yVel, obj_actor)
		if _other.object_index == obj_Enemy{
			if !_other.dying{
				_other.Force(moveSpd,point_direction(0,0,xVel,yVel))
			}else{
				y+=yVel
			}
		}else{
			_other.Force(moveSpd,point_direction(0,0,xVel,yVel))
		}
		//y+=yVel
	}
}else{
	if place_meeting(x,y+yVel,obj_graveDoor){
		if instance_nearest(x,y,obj_graveDoor).inactive{
			y+=yVel
		}
	}
}

}

if hp < 1 && !dead{
	audio_stop_all()
	with(obj_Music) instance_destroy()
	audio_play_sound(NOOO,2,false)
	audio_play_sound(losemusic,2,false)
	dead = true
	
	obj_endController.End()
}

if !dead{
	global.playtime += 1000/60
}
show_debug_message(Timer(global.playtime))
if itime > 0{
	itime -= 1
	flashAlpha = 0.25
	/*
	if itime % 15 == 0{
		flashAlpha = 1
	}
	*/
	if itime <= 0{
		invulnerable = false
	}
}