/// @description Insert description here
// You can write your code in this editor

audio_play_sound(winmusic,0,0)

view = view_camera[0]

view_width = 320//1920/6;

view_height = 180//1080/6;

window_scale = 4;

surface_resize(application_surface,view_width*4, view_height*4);// * window_scale

//On room start
view_enabled = true;
view_visible[0] = true;

views = [
{
	note: "establish",
	x: 140,
	y: 90,
	zoom : 1,
	hold: 0,
	transition: 250
},
{
	note: "toDave",
	x: 140,
	y: 90,
	zoom : 0.5,
	hold: 10,
	transition: 15
}
]

counter = 0
curr = 0

camX = views[curr].x
camY = views[curr].y

zoomX = 1
zoomY = 1

holding = true
transitioning = false







