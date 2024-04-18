
// Inherit the parent event
event_inherited();



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
<<<<<<< Updated upstream
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);
=======
moveX = lengthdir_x(1, my_dir);
moveY = lengthdir_y(1, my_dir);

cold = false

xVel = moveX*spd + forceX
yVel = moveY*spd + forceY

hasHand = true

function Hit(damage,type,dir){
	hp -= damage;
	if hasHand && hp <= enemyType.hp/2{
		hasHand = false
		instance_create_layer(x-2*image_xscale,y-8,"Bullets",obj_zombieHand)
	}
	flashAlpha = 0.7;
	if type == "frozen"{
		cold = true
		flashAlpha = 0.2;
		flashColor = c_aqua;
		spd = spd / 2;
		alarm_set(0,120)
	}else if type == "flaming"{
		if obj_MainWeapon.main.wepname == "snowpea"{
			flashColor = c_white;
		} else flashColor = c_red;
		
	}else{
		flashColor = c_white;
	}
	Force(2,dir)
}
>>>>>>> Stashed changes
