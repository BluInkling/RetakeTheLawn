
/// @description Insert description here
// You can write your code in this editor
#region Complex Turning Attempts
/*
if aimAngle < 30 || aimAngle > 340 || (aimAngle > 150 && aimAngle < 200){
	armAngle = round(aimAngle/10)*10  //So the visual only increments in angles of 10
}else{
	armAngle = round(aimAngle/10)*10 //So the visual only increments in angles of 10
	armAngle = clamp(armAngle,150,200)
}
*/
//armAngle = round(aimAngle/10)*10 //So the visual only increments in angles of 10
/*
if obj_player.xDir == 1{
	if angle_difference(aimAngle,0) > 30{
		handsDistance = lerp(17,10,(angle_difference(aimAngle,0)-30)/60)
	}else{
		if angle_difference(aimAngle,0) < -10{
			handsDistance = lerp(17,15,-(angle_difference(aimAngle,0)+10)/60)
		}else{
			handsDistance = 17
		}
	}
	diffAngle = clamp(angle_difference(aimAngle,0),-10,30);
}else{
	diffAngle = clamp(angle_difference(aimAngle,180), -30,10);
}

armAngle = 90-90*obj_player.xDir + diffAngle

show_debug_message(armAngle)
image_yscale = obj_player.xDir

armAngle = round(armAngle/10)*10
image_angle = armAngle

draw_self()
handsX = x+lengthdir_x(handsDistance,armAngle+handOffsetAngle)
handsY = y+lengthdir_y(handsDistance,armAngle+handOffsetAngle)
handAngle = round(aimAngle/10)*10
*/
#endregion
image_yscale = obj_player.xDir
armAngle = round(aimAngle/10)*10 //So the visual only increments in angles of 10
handsX = x+lengthdir_x(handsDistance,armAngle)
handsY = y+lengthdir_y(handsDistance,armAngle)
handAngle = armAngle
image_angle = armAngle
draw_self()


//draw_sprite_ext(spr_peashooterIdle,0,handsX,handsY,1,obj_player.xDir,handAngle,c_white,1)
draw_sprite_ext(spr_daveHandR,0,handsX,handsY,1,obj_player.xDir,handAngle,c_white,1)
draw_sprite_ext(spr_daveHandL,0,handsX,handsY,1,obj_player.xDir,handAngle,c_white,1)




