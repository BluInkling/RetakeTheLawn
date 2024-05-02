augement = "none"
 
main = obj_Controller.mainweapon
sub = obj_Controller.subweapon

throwsound = snd_throw
//cooldown = 0;
subavailable = true;

mineSpread = 30
sprite_index = sub.subidlesprite

function GotoSecondary(ind){
	if !(ind > array_length(obj_Controller.inventorySecondary)-1){
		obj_Controller.secondary = ind
		obj_Controller.subweapon = obj_Controller.inventorySecondary[obj_Controller.secondary]
	}
	ChangeSecondary()
}
function ChangeSecondary(){
	audio_play_sound(snd_selectpacket,1,false,1,0,random_range(0.9,1.2))
	sub = obj_Controller.subweapon
	sprite_index = sub.subidlesprite
	//cooldown = obj_Controller.cooldownSecondary[secondary]
}



