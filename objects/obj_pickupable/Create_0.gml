
randomize()
draw = false


type = noone;
overlap = spr_none
name = "none"

fixed = false
savedStat = 0
//set "what it is" with a string
//if player in radius and pickable thing isnt in players inventory array: 
//then add it to their array and switch to it

//If in a collection
host = noone

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
			//type = choose(kindofpickup.repeater,kindofpickup.snowpea,kindofpickup.threepeater,kindofpickup.cabbagepult,kindofpickup.kernelpult,kindofpickup.puffshroom,kindofpickup.fumeshroom)
			
			do{
				type = choose(kindofpickup.peashooter,kindofpickup.repeater,kindofpickup.snowpea,kindofpickup.threepeater,kindofpickup.cabbagepult,kindofpickup.kernelpult,kindofpickup.puffshroom,kindofpickup.fumeshroom)
			} until(!(array_contains(obj_Controller.inventoryPrimary,type))); //repeat new item is not in the inventory
			
			overlap = type.mainidlesprite
			name = type.wepname
			savedStat = type.clip
		}
	
	} 
	else {
		if (array_length(obj_Controller.inventorySecondary) == obj_Controller.secondaryamount){
			kindofpickup = "sun"
			type = "sun" //random collectable
			overlap = spr_sun
			name = "sun"
		
		} else {
			//type = choose(kindofpickup.torchwood,kindofpickup.cocoabean)
			var timeout = 0
			do{
				type = choose(kindofpickup.torchwood,kindofpickup.cocoabean,kindofpickup.potatomine,kindofpickup.cherrybomb,kindofpickup.iceberglettuce)
				/*
				timeout += 1
				if timeout > 100{
					show_debug_message(obj_Controller.inventorySecondary)
					break
				}
				*/
			} until(!(array_contains(obj_Controller.inventorySecondary,type)))
			
			overlap = type.subidlesprite
			name = type.wepname
			savedStat = 0
		}
	}
}

part = part_system_create(ps_sparkle)
part_system_position(part,x,y)

if global.fixedDrop != noone{
	fixed = true
	kindofpickup = global.fixedDropType
	type = global.fixedDrop
	savedStat = global.fixedStat
	global.fixedDropType = noone
	global.fixedDrop = noone
	global.fixedStat = 0
	if kindofpickup == obj_Controller.weaponstats{
		overlap = type.mainidlesprite
	}else{
		overlap = type.subidlesprite
	}
	name = type.wepname
}else{
	RandomChoose()
	//show_debug_message(2)
}


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

//Outline Shader
upixelH = shader_get_uniform(shd_outline,"pixelH")
upixelW = shader_get_uniform(shd_outline,"pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0))
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0))
/*
var lay_id = layer_get_id("Player");
layer_shader(lay_id,shd_outline);
*/
//layer_shader(layer_get_id("Gun"),shd_outline);


