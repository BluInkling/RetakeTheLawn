/// @description Insert description here
// You can write your code in this editor
if (hascontrol){
event_inherited()

//if (!instance_exists(obj_MainWeapon)){
//	instance_create_layer(x,y,"Gun",obj_MainWeapon)	
//}
//if (!instance_exists(obj_SubWeapon)){
//	instance_create_layer(x,y,"Gun",obj_SubWeapon)	
//}


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

}
