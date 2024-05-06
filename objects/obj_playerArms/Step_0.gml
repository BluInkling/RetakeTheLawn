/// @description Insert description here
// You can write your code in this editor

x = (obj_player.x-7*obj_player.xDir) - obj_MainWeapon.recoilX//*obj_player.image_xscale
y = obj_player.y - obj_MainWeapon.recoilY

aimAngle = point_direction(x,y,mouse_x,mouse_y)





