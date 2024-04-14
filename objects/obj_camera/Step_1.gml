/// @description Insert description here
// You can write your code in this editor


camX = lerp(followTarget.x,mouse_x,0.2)//mean(followTarget.x,mouse_x)
camY = lerp(followTarget.y-10,mouse_y,0.2)

camera_set_view_pos(view_camera[0],camX-camera_get_view_width(view_camera[0])/2,camY-camera_get_view_height(view_camera[0])/2)





