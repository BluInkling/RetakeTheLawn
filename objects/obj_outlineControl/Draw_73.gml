/// @description Insert description here
// You can write your code in this editor

if !surface_exists(surf_outline) surf_outline= surface_create(room_width,room_height)
surface_set_target(surf_outline)
draw_clear_alpha(1, 0)
    with (obj_outlinable) {
        // draw event for object; if no additional effects are needed, just use draw_self()
		//draw_sprite(sprite_index,image_index,round(x),round(y))
    }
	with (obj_MainWeapon) {
		draw_self()
    }
	with (obj_playerArms){
		draw_self()
		draw_sprite_ext(spr_daveHandR,0,handsX,handsY,1,obj_player.xDir,handsAngle,c_white,1)
		draw_sprite_ext(spr_daveHandL,0,handsX,handsY,1,obj_player.xDir,handsAngle,c_white,1)
	}
	with (obj_Projectile) {
		draw_self()
    }
surface_reset_target()
outline_start_surface(1,c_black, surf_outline,4)
draw_surface(surf_outline,0,0) //camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])) // 0,0 if using room dimensions, camera_get_view_x/y if using view
shader_reset()






