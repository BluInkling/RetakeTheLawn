

//type = ""
spawned = 0;
projspd = 0
damage = 0
projspr = noone



eproj = noone








function Shoot(){
	//show_debug_message("Pew")
	//show_debug_message(spawned)
	//show_debug_message(projspr)
	//show_debug_message(projspd)
	//show_debug_message(damage)
	eproj = instance_create_layer(x,y,"Bullets",obj_EnemyProjectile)
	with (eproj){
		zomid = other.spawned
		sprite_index = other.projspr
		moveSpd = other.projspd
		damage = other.damage
	}
}