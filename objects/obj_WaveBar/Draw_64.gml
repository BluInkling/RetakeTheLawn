/// @description Insert description here
// You can write your code in this editor

if created != noone && !done{
	done = true
	//show_debug_message(created.remaining)
	array_copy(waveNums,0,created.remaining,0,array_length(created.remaining))
	//for (var w=0;w<array_length((created.remaining))
}

//show_debug_message(created.remaining[created.current_wave])
if done && instance_exists(created){
	//minispacing = spacing/waveNums[created.current_wave] waveNums[created.current_wave] + 
	progress = spacing * created.current_wave + lerp(spacing,0,created.remaining[created.current_wave]/waveNums[created.current_wave])
	show_debug_message(spacing)
}
if !fading{

var _wave= (created.current_wave+1)/(wavenum+1)

draw_sprite_ext(spr_waveBar,0,xplace,yplace,scale,scale,0,c_white,1)
draw_sprite_part_ext(spr_waveBar,1,0,0,progress,16,xplace,yplace-8,scale,scale,c_white,1)
//var pos = (169 * _wave) + 52
//draw_sprite_ext(spr_zombieHead,0,pos,12,1,1,0,c_white,1)
//draw_sprite_part(sWaveBar,1,0,0,169 * _wave,32,0,0)
//draw_text_transformed(0,0,string(created.current_wave+1) + "/" + string(wavenum+1),.5,.5,0)
spacing = width/(wavenum+1)
//show_debug_message(spacing)
for (var f=0;f<wavenum+1;f++){
	if room == rm_dayFinal && f==0{
		draw_sprite(spr_tacoImpIdle,0,xplace+width-(spacing*f),yplace+8)
	}else{
		draw_sprite(spr_flag,0,xplace+width-(spacing*f),yplace)
	}
	//show_debug_message(spacing)
}
draw_sprite(spr_zombieHead,0,xplace+progress,yplace+1)


} else {
	


	draw_sprite_ext(spr_waveBar,0,xplace,yplace,scale,scale,0,c_white,imgalpha)
	draw_sprite_part_ext(spr_waveBar,1,0,0,width,16,xplace,yplace-8,scale,scale,c_white,imgalpha)
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








