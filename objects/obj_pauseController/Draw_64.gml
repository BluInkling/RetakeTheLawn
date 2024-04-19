/// @description Insert description here
// You can write your code in this editor

if paused == true{
	if !surface_exists(paused_surf)
	    {
	    if paused_surf == -1
	        {
	        instance_deactivate_all(true);
	        }
	    paused_surf = surface_create(room_width, room_height);
	    surface_set_target(paused_surf);
	    draw_surface(application_surface,0,0);
		/*
		surface_reset_target();
		surface_set_target(obj_outlineControl.surf_outline);
	    draw_surface(application_surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
	    */
		surface_reset_target();
    }else{
		draw_set_font(fnt1)
	    draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_text_transformed_colour(camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 4, "PAUSED", 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
	    draw_set_halign(fa_left);
    }
}








