
randomize()
draw = false


type = noone;
//set "what it is" with a string
//if player in radius and pickable thing isnt in players inventory array: 
//then add it to their array and switch to it
function RandomChoose(){
kindofpickup = choose(obj_Controller.weaponstats,obj_Controller.weaponstats,obj_Controller.weaponstats,obj_Controller.subweaponstats)

//if ((array_length(obj_Controller.inventoryPrimary) == obj_Controller.mainamount) and (array_length(obj_Controller.inventorySecondary) == obj_Controller.secondaryamount)){ DOESNT WORK FOR SOME REAOSN
	if (kindofpickup == obj_Controller.weaponstats){
		if (array_length(obj_Controller.inventoryPrimary) == obj_Controller.mainamount){
			kindofpickup = "sun"
			type = "sun" //random collectable
			overlap = spr_sun
			name = "sun"
		} else {
			do{
				type = choose(kindofpickup.repeater,kindofpickup.snowpea,kindofpickup.threepeater,kindofpickup.cabbagepult,kindofpickup.kernelpult,kindofpickup.puffshroom,kindofpickup.fumeshroom)
			} until(!(array_contains(obj_Controller.inventoryPrimary,type))); //repeat new item is not in the inventory
	
			overlap = type.mainidlesprite
			name = type.wepname
		}
	
	} 
	else {
		if (array_length(obj_Controller.inventorySecondary) == obj_Controller.secondaryamount){
			kindofpickup = "sun"
			type = "sun" //random collectable
			overlap = spr_sun
			name = "sun"
		
		} else {
			do{
				type = choose(kindofpickup.torchwood)
			} until(!(array_contains(obj_Controller.inventorySecondary,type)))
	
			overlap = type.subidlesprite
			name = type.wepname
		}
	}
}

RandomChoose()
//} 
//else {
//	show_debug_message(array_length(obj_Controller.inventoryPrimary))
//	show_debug_message("=")
//	show_debug_message(obj_Controller.mainamount)
	
//	show_debug_message("-----------------------")
//	show_debug_message(array_length(obj_Controller.inventorySecondary))
//	show_debug_message("=")
//	show_debug_message(obj_Controller.secondaryamount)
	
//	show_debug_message("else was called(pickupalble)")
//	type = "sun" //random collectable
//		overlap = spr_sun
//		name = "sun"
//}