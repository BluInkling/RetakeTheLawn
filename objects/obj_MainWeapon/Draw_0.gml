/// @description more test

draw_set_font(fnt1)
//if (alarm[0] > 0) draw_text(x,y-55,"Reloading...")
if (reloading) draw_text_transformed(x,y-55,"Reloading...",0.15,0.15,0)

image_yscale = obj_player.xDir
image_angle = obj_playerArms.handsAngle



if idle{
	sprite_index = animIdle
}else if shooting{
	sprite_index = animShoot
}else if reloading{
	sprite_index = animReload
}

draw_self()


