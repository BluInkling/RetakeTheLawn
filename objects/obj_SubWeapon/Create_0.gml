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
	sub = obj_Controller.subweapon
	sprite_index = sub.subidlesprite
	//cooldown = obj_Controller.cooldownSecondary[secondary]
}



