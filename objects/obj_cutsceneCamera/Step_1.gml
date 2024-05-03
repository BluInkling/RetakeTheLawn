/// @description Insert description here
// You can write your code in this editor
/*
camX = lerp(followTarget.x,mouse_x,0.2)//mean(followTarget.x,mouse_x)
camY = lerp(followTarget.y-10,mouse_y,0.2)
*/
counter += 1
if holding{
	if counter > views[curr].hold{
		transitioning = true
		holding = false
		counter = 0
	}
	show_debug_message("HOLDING: "+string(counter))
}

if transitioning{
	if curr+1 > array_length(views)-1{
		room_goto(rm_prototyperoom)
		transitioning = false
	}
	if counter > views[curr].transition{
		curr+=1
		holding = true
		transitioning = false
		counter = 0
	}
	show_debug_message("transitioning: "+string(counter))
}

if holding{
	zoomX = views[curr].zoom
	zoomY = views[curr].zoom
	camX = views[curr].x
	camY = views[curr].y
}
if transitioning{
	zoomX = lerp(views[curr].zoom,views[curr+1].zoom,counter/views[curr].transition)
	zoomY = lerp(views[curr].zoom,views[curr+1].zoom,counter/views[curr].transition)
	camX = lerp(views[curr].x,views[curr+1].x,counter/views[curr].transition)
	camY = lerp(views[curr].y,views[curr+1].y,counter/views[curr].transition)
}

audio_listener_position(camX,camY,100*zoomX)
audio_listener_orientation(0, 0, 1000, 0, -1 ,0);

camera_set_view_size(view,zoomX*view_width,zoomY*view_height)
camera_set_view_pos(view_camera[0],camX-camera_get_view_width(view_camera[0])/2,camY-camera_get_view_height(view_camera[0])/2)











