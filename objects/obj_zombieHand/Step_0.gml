/// @description Insert description here
// You can write your code in this editor



yVel+=grav

x+=xVel
if y < height{
	y+=yVel
	image_angle += rotForce
}else{
	yVel = yVel * -0.5
	xVel = xVel * 0.5
	if !hasFallen{
		hasFallen = true
		alarm[0] = 60
	}
}




