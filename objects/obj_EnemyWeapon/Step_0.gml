
 
x = spawned.x
y = spawned.y
if instance_exists(obj_player){
image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}

if (image_angle > 90 and image_angle < 270){
	image_yscale = -1
} else image_yscale = 1
















