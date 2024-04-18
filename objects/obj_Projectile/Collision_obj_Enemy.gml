/// @description Insert description here
// You can write your code in this editor

if main.wepname == "peashooter" or main.wepname == "repeater" or main.wepname == "snowpea" { //Pea collisons
	if type == "flaming"{
			with (other){
			hp --;
			flashAlpha = 1;
			flashColor = c_red;
			show_debug_message("Enemy hit!")
			}
		}
		if type == "frozen"{
			with (other){
			hp --;
			flashAlpha = 1;
			flashColor = c_aqua;
			show_debug_message("Enemy hit!")
			spd = .2
			alarm_set(0,120)
			}
		}
		else{
			with (other){
				hp --;
				flashAlpha = 1;
				show_debug_message("Enemy hit!")
			}
	}
	Destroy()
}










