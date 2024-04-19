/// @description more test

draw_set_font(fnt1)
//if (alarm[0] > 0) draw_text(x,y-55,"Reloading...")
if (reloading){
	draw_sprite(spr_reload,image_index*11/image_number,obj_player.x,y-24)
	//To get the frame for reload: (current frame) * (total reload frames) / (total current animation frames)
}

image_yscale = obj_player.xDir
image_angle = round(obj_playerArms.handsAngle/20)*20



if idle{
	sprite_index = animIdle
}else if shooting{
	sprite_index = animShoot
}else if reloading{
	sprite_index = animReload
}

draw_self()


