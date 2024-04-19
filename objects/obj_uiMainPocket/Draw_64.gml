/// @description Insert description here
// You can write your code in this editor

sprite_index = obj_MainWeapon.sprite_index

ammoSprite = obj_Controller.mainweapon.projsprite
	

draw_sprite(spr_pocket,0,320,172)
draw_sprite(sprite_index,obj_MainWeapon.image_index,321,174)

for (var i=0; i<obj_MainWeapon.ammo; i++){
	draw_sprite(ammoSprite,0,336,150-8*i)
}




