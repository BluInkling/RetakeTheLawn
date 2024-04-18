/*
draw_set_font(fnt1)

draw_text_transformed(0,0,"Main weapon: " + string(mainweapon.wepname),0.10,.10,0)
draw_text_transformed(0,10,"Sub weapon: " + string(subweapon),0.10,.10,0)


//draw_sprite(modernpacket,0,1155,640)
draw_sprite_ext(modernpacket,0,190,1155,0.10,0.10,0,c_white,1)
if (mainweapon == "peashooter") draw_sprite_ext(sPeashooter,0,1230,695,0.10,0.10,0,c_white,1)
if (mainweapon == "repeater") draw_sprite_ext(sRepeater,0,1230,695,0.10,0.10,0,c_white,1)



//draw_sprite(spocket,0,190,5)
draw_sprite_ext(spocket,0,190,5,0.10,0.10,0,c_white,1)
if ((subweapon == "torchwood") && (obj_SubWeapon.subavailable==true)) draw_sprite_ext(sTorchvood,0,220,35,0.10,0.10,0,c_white,1)
if (subweapon == "potatomine") draw_sprite_ext(sPotatomin,0,220,35,0.10,0.10,0,c_white,1)
//if (mainweapon == "repeater") draw_sprite(sRepeater,0,1230,695)
*/


draw_sprite(spr_pocket,0,52,17)
switch(subweapon){
	case "torchwood": 
		if obj_SubWeapon.subavailable == true{
			activate = true;
			imgnum = 0
			maximgnum = 5 //frames in activatetorchwood
			//show_debug_message("drawign idle")
			currSprite = spr_torchwoodIdle
			//draw_sprite(currSprite,image_index,52,17)
		}
		else if obj_SubWeapon.subavailable == false{
			if activate{
				//show_debug_message("drawign activATE")
				currSprite = spr_torchwoodActivate
				//draw_sprite(currSprite,image_index,52,17)
				imgnum ++;
				//show_debug_message(string(imgnum) + "/" + string(maximgnum))
			}
			if (currSprite = spr_torchwoodActivate and imgnum >= maximgnum){
				//show_debug_message("drawign active")
				activate = false;
				currSprite = spr_torchwoodActive
				//draw_sprite(currSprite,image_index,52,17)
			}
		}
		draw_sprite(currSprite,image_index,52,17)
		break;
	case "potatomine":
		draw_sprite(spr_potatomineIdle,image_index,52,17)
		break;
		
	
	
}
