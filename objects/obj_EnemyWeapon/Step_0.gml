
 
x = spawned.x + 2*spawned.image_xscale
y = spawned.y-8
depth = spawned.depth -10
if instance_exists(obj_player){
image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}

if (image_angle > 90 and image_angle < 270){
	image_yscale = -1
} else image_yscale = 1
















