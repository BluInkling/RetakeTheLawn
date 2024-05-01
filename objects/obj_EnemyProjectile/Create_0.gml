//show_debug_message("proj created")

zomid = noone






//show_debug_message(type)
//show_debug_message("projetciles type: " + string(type))

//show_debug_message("before checks")
//show_debug_message(type)
//show_debug_message(damage)




//show_debug_message("after checks")
//show_debug_message(type)
//show_debug_message(damage)

moveDir = point_direction(x,y,obj_player.x,obj_player.y) + random_range(-3,3)
moveSpd = 3

image_angle = moveDir
//alarm[0] = main.lifetime Bullets go until they hit a wall

function Destroy(_other){ //Will eventually add splat animation
	if !is_undefined(_other){
		//show_debug_message("SPLAT")
		//if _other.object_index == obj_wall{
			//var splatObj = instance_create_layer(x,y,"Bullets",obj_splat)
			//splatObj.sprite_index = splat
			//splatObj.image_angle = round(point_direction(_other.x,_other.y,x,y)/90)*90+180
		//}
	}
	instance_destroy()
}




