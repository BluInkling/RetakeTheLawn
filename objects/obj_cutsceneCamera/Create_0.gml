/// @description Insert description here
// You can write your code in this editor



//From https://www.reddit.com/r/gamemaker/comments/p4la1c/any_idea_how_to_get_this_effect_where_the_pixels/

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
	x: 384,
	y: 288,
	zoom : 1.25,
	hold: 275,
	transition: 50
},
{
	note: "toDave",
	x: 288,
	y: 320,
	zoom : 0.75,
	hold: 100,
	transition: 25
},
{
	note: "toImp",
	x: 464,
	y: 310,
	zoom : 0.5,
	hold: 175,
	transition: 25
},
{
	note: "stir", //At 650
	x: 288,
	y: 320,
	zoom : 0.5,
	hold: 90, //end at 740
	transition: 10
},
{
	note: "impRun",
	x: 464,
	y: 310,
	zoom : 0.5,
	hold: 20,
	transition: 10
},
{
	note: "Get up", //At 770
	x: 288,
	y: 320,
	zoom : 0.5,
	hold: 60,
	transition: 10
},
{
	note: "impRun", //At 840
	x: 484,
	y: 310,
	zoom : 0.5,
	hold: 75,
	transition: 50
},
{
	note: "Dave Chase", //at 950
	x: 304,
	y: 312,
	zoom : 0.75,
	hold: 10,
	transition: 75
},
{
	note: "To game",
	x: 456,
	y: 288,
	zoom : 1,
	hold: 60,
	transition: 300
},
]

counter = 0
curr = 0

camX = views[curr].x
camY = views[curr].y

zoomX = 1
zoomY = 1

holding = true
transitioning = false
/*
function NextView(){
	curr += 1
	counter = 0
	holding = true
	holdTime = views[curr].hold
}*/





