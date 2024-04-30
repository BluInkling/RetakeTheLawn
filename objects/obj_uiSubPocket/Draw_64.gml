/// @description Insert description here
// You can write your code in this editor

//sprite_index = obj_SubWeapon.sprite_index


for (var i=0; i<array_length(obj_Controller.inventorySecondary)-1; i++){
	draw_sprite(spr_pocket,0,(20+3*(array_length(obj_Controller.inventorySecondary)-1))-3*i,160)
}

draw_sprite(spr_pocket,0,20,160)
//draw_sprite(sprite_index,0,20,174)


switch(obj_Controller.subweapon.wepname){
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
			if currSprite = spr_torchwoodActive && obj_MainWeapon.projtype == obj_SubWeapon.main.projtype{
				currSprite = spr_torchwoodIdle
			}
		}
		draw_sprite(currSprite,image_index,20,164)
		break;
	case "potatomine":
		draw_sprite(spr_potatomineIdle,image_index,20,164)
		break;
	case "cocoabean": 
		if obj_SubWeapon.subavailable == true{
			sprite_index = spr_cocoaBeanIdle
			activateCocoa = true
		}else if obj_SubWeapon.subavailable == false{
			if activateCocoa{
				sprite_index = spr_cocoaBeanActivate
				image_index = 0
				activateCocoa = false
			}else if sprite_index == spr_cocoaBeanActivate{
				if image_index > 20{
				//show_debug_message("drawign active")
					activate = false;
					//currSprite = spr_none
					sprite_index = spr_cocoaBeanReset
					image_index = 0
				//draw_sprite(currSprite,image_index,52,17)
				}
			}else if sprite_index == spr_cocoaBeanReset{
				if image_index > image_number-1{
					sprite_index = spr_cocoaBeanIdle
				}
			}
		}
		draw_sprite(sprite_index,image_index,20,164)
		break
	case "cherrybomb":
		//draw_sprite(obj_Controller.subweapon.subidlesprite,image_index,20,164)
		sprite_index = obj_Controller.subweapon.subidlesprite
		draw_sprite(sprite_index,image_index,20,164)
		break;
	case "iceberglettuce":
		sprite_index = obj_Controller.subweapon.subidlesprite
		draw_sprite(sprite_index,image_index,20,164)
		break;
}
//draw_sprite(spr_pocket,0,20,172)
var offset = lerp(32,0,obj_Controller.cooldownSecondary[obj_Controller.secondary]/obj_SubWeapon.sub.cooldown)
//draw_sprite_part(spr_pocket,0,0,0,32,32,4,156)
draw_sprite_part(spr_pocket,0,0,0+offset,32,32,4,144+offset)

if alpha > 0{
	draw_set_color(c_white)
	draw_set_alpha(alpha)
	draw_set_halign(fa_center)
	draw_set_font(global.fnt_textSmall)
	draw_text(20,140,"FULL")
	draw_set_halign(fa_left)
	draw_set_alpha(1)
}