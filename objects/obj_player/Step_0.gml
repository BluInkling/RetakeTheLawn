/// @description Insert description here
// You can write your code in this editor
event_inherited()

xInput = keyboard_check(ord("D"))-keyboard_check(ord("A"))
yInput = keyboard_check(ord("S"))-keyboard_check(ord("W"))

xVel = xInput*moveSpd+forceX
yVel = yInput*moveSpd+forceY

//Normalizing Movement
if (abs(xVel)+abs(yVel)> moveSpd){
	xVel = xVel/sqrt(2)
	yVel = yVel/sqrt(2)
}

//Collisions
if !place_meeting(x+xVel,y,obj_wall){
	x+=xVel
}
if !place_meeting(x,y+yVel,obj_wall){
	y+=yVel
}
