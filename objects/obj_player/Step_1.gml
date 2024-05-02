/// @description Insert description here
// You can write your code in this editor






//need to make death state/animation
if(hp <= 0) game_restart()

if(hp > maxhp) hp = maxhp


if (hp <= 4) and !warned{
	warned = true
	audio_play_sound(closetohome,1,false)
}

if (hp > 4){
	warned = false	
}
