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

instance_create_depth(x,y,-10,obj_playerArms)


//States
moving = false

//Animations
animIdle = spr_daveIdle
animRun = spr_daveRun



