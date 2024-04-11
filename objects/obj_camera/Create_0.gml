/// @description Insert description here
// You can write your code in this editor

//From https://www.reddit.com/r/gamemaker/comments/p4la1c/any_idea_how_to_get_this_effect_where_the_pixels/

view = view_camera[0]

view_width = 340//1920/6;

view_height = 192//1080/6;

window_scale = 4;

window_set_size(view_width * window_scale, view_height * window_scale);

alarm[0] = 1;

surface_resize(application_surface,view_width, view_height);// * window_scale

//On room start
view_enabled = true;
view_visible[0] = true;


