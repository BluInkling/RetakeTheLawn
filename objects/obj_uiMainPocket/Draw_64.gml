/// @description Insert description here
// You can write your code in this editor

sprite_index = obj_MainWeapon.sprite_index

ammoSprite = obj_Controller.mainweapon.projsprite
	

draw_sprite(spr_pocket,0,300,160)
draw_sprite(sprite_index,obj_MainWeapon.image_index,300,160)

for (var i=0; i<obj_MainWeapon.ammo; i++){
	draw_sprite(ammoSprite,0,314,138-8*i)
}




