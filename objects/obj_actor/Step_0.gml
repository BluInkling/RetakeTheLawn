/// @description Insert description here
// You can write your code in this editor

//Forces (this isn't neat but it works)
if forceX != 0 || forceY != 0{
	if forceX > forceDecay{
		forceX -= forceDecay
	}else if forceX < -forceDecay{
		forceX += forceDecay
	}else{
		forceX = 0
	}
	if forceY > forceDecay{
		forceY -= forceDecay
	}else if forceY < -forceDecay{
		forceY += forceDecay
	}else{
		forceY = 0
	}
}


//if(mouse_check_button_pressed(mb_left)){
//	show_debug_message("FLASH")
//	flashAlpha = 1;
//}
if (flashAlpha > 0){
	flashAlpha -= 0.05;
}

