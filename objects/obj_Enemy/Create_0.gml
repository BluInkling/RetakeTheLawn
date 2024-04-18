
// Inherit the parent event
event_inherited();


radius = 220;
lineofsight = false;
attackradius = 16
state = ENEMYSTATE.IDLE
hitByAttack = ds_list_create();


enum ENEMYSTATE
{
	IDLE, //stands still
	WANDER, //moves to a random nearby spot
	CHASE, //moves towards player
	ATTACK //Attacks toward player
	
}

enemyType = obj_Controller.enemystats.basic;
//-------------------
hp = enemyType.hp
counter = 0;
spd = enemyType.spd
my_dir = irandom_range(0,359)
moveX = lengthdir_x(1, my_dir);
moveY = lengthdir_y(1, my_dir);

xVel = moveX*spd + forceX
yVel = moveY*spd + forceY