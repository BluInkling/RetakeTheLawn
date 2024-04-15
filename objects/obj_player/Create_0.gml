/// @description Insert description here
// You can write your code in this editor
event_inherited()

xInput = 0
yInput = 0

xVel = 0
yVel = 0
moveSpd = 1.5

xDir = 1 //for sprite flipping

activeWeapon = obj_primary
//instance_create_layer(x,y,"Instances",obj_playerArms)

//States
moving = false

//Animations
animIdle = spr_daveIdle
animRun = spr_daveRun

hascontrol = true;

instance_create_layer(0,0,"Player",obj_Controller)
instance_create_layer(0,0,"Player",obj_MainWeapon)
instance_create_layer(0,0,"Player",obj_SubWeapon)

