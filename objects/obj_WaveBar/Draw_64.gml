/// @description Insert description here
// You can write your code in this editor


if !fading{

var _wave= (created.current_wave+1)/(wavenum+1)

draw_sprite_ext(sWaveBar,0,xplace,yplace,scale,scale,0,c_white,1)
draw_sprite_part_ext(sWaveBar,1,0,0,169 * _wave,32,xplace,yplace,scale,scale,c_white,1)
//var pos = (169 * _wave) + 52
//draw_sprite_ext(spr_zombieHead,0,pos,12,1,1,0,c_white,1)
//draw_sprite_part(sWaveBar,1,0,0,169 * _wave,32,0,0)
//draw_text_transformed(0,0,string(created.current_wave+1) + "/" + string(wavenum+1),.5,.5,0)


} else {
	


	draw_sprite_ext(sWaveBar,0,xplace,yplace,scale,scale,0,c_white,imgalpha)
	draw_sprite_part_ext(sWaveBar,1,0,0,169,32,xplace,yplace,scale,scale,c_white,imgalpha)
	//draw_sprite_ext(spr_zombieHead,0,169,16,1,1,0,c_white,1)
	//draw_sprite_part(sWaveBar,1,0,0,169 * _wave,32,0,0)
	//draw_text_transformed(0,0,string(wavenum+1) + "/" + string(wavenum+1),.5,.5,0)

	
	
	if fading && imgalpha >= 0{
	imgalpha -= fadeStep
	if imgalpha < fadeStep{
		
		instance_destroy()
	}
}

	
}










