/// @description Insert description here
// You can write your code in this editor

sprite_index = obj_MainWeapon.sprite_index

ammoSprite = obj_Controller.mainweapon.projtype.mainsprite
	
for (var i=0; i<array_length(obj_Controller.inventoryPrimary)-1; i++){
	draw_sprite(spr_pocket,0,(300-3*(array_length(obj_Controller.inventoryPrimary)-1))+3*i,160)
	//draw_sprite(obj_Controller.inventoryPrimary[i].mainidlesprite,0,(300-3*(array_length(obj_Controller.inventoryPrimary)-1))+3*i,160)
}
draw_sprite(spr_pocket,0,300,160)
draw_sprite(sprite_index,obj_MainWeapon.image_index,300,160)

for (var i=0; i<obj_MainWeapon.ammo; i++){
	draw_sprite(ammoSprite,0,314,138-8*i)
}

if alpha > 0{
	draw_set_color(c_white)
	draw_set_alpha(alpha)
	draw_set_halign(fa_center)
	draw_set_font(global.fnt_textSmall)
	draw_text(300,140,"FULL")
	draw_set_halign(fa_left)
	draw_set_alpha(1)
}


