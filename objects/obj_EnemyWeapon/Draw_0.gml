/// @description Insert description here
// You can write your code in this editor

if shooting{
	sprite_index = spr_zombieGunShoot
	if image_index >= image_number-1{
		shooting = false
		sprite_index = baseSpr
		eproj = instance_create_layer(x+lengthdir_x(12,image_angle-15),y+lengthdir_y(12,image_angle-15),"Bullets",obj_EnemyProjectile)
		with (eproj){
			zomid = other.spawned
			sprite_index = other.projspr
			moveSpd = other.projspd
			damage = other.damage
		} 
	}
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,round(image_angle/10)*10,c_white,1)









