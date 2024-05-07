/// @description more test

//if (alarm[0] > 0) draw_text(x,y-55,"Reloading...")
if (reloading){
	draw_sprite(spr_reload,image_index*11/image_number,obj_player.x,y-24)
	//To get the frame for reload: (current frame) * (total reload frames) / (total current animation frames)
}

image_yscale = obj_player.xDir
image_angle = (round(obj_playerArms.handsAngle/20)*20)+recoil*5




if obj_MainWeapon.flaming{
	image_blend = c_orange
	if flamePS == noone{
		flamePS = part_system_create_layer(layer_get_id("Gun"),0,ps_fire)
	}else{
		part_system_position(flamePS,x,y)
	}
}else{
	if flamePS != noone{
		part_system_destroy(flamePS)
		flamePS = noone
	}
	image_blend = c_white
}

if idle{
	sprite_index = animIdle
}else if shooting{
	//if main.wepname == "puffshroom"{
	//	if puffCheck == -1{
	//		spr_puffshroomShoot
	//	} else sprite_index = spr_puffshroomSingleShoot
	//} 
	//else {
		sprite_index = animShoot
	//}
}else if reloading{
	sprite_index = animReload
}else if charging{
	sprite_index = animCharge
}else if chargeMax{
	sprite_index = animChargeMax
}
depth = obj_player.depth-5

if drawcharging and !reloading{
	// draw_circular_bar(x ,y ,value, max, colour, radius, transparency, width)
	draw_circular_bar(x ,y-24 ,counter, main.chargetime, c_white, 8, .75,5)
}

if recoil > 0{
	recoil-=recoilRecovery
}else{
	recoil = 0
}

draw_self()
