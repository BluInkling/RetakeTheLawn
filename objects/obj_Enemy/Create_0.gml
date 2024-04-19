
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

<<<<<<< Updated upstream
enemyType = obj_Controller.enemystats.basic;
=======
//enemyType = obj_Controller.enemystats.conehead;

enemyType = global.grabthis;
show_debug_message("grabbed:" + string(enemyType))
>>>>>>> Stashed changes
//-------------------
hp = enemyType.hp
counter = 0;
spd = enemyType.spd
coldspd = spd / 2;
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
<<<<<<< Updated upstream
	hp -= damage;
=======
	if armor > 0{ //if has armor
		armor -= damage//armor takes damage
		if armor <= 0{ //if no more armor
			hasHat = false
			SpawnHat(hatSpr)
			hp += armor;
			armor=0
		}
	}else{ //if no armor, health takes damage
		show_debug_message(damage)
		show_debug_message("minus")
		show_debug_message(hp)
		hp -= damage;
	}
>>>>>>> Stashed changes
	if hasHand && hp <= enemyType.hp/2{
		hasHand = false
		instance_create_layer(x-2*image_xscale,y-8,"Bullets",obj_zombieHand)
	}
	flashAlpha = 0.7;
	if type == "frozen"{
		cold = true
		flashAlpha = 0.2;
		flashColor = c_aqua;
		spd = coldspd;
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
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======

function SpawnHat(spr){
	var hat = instance_create_layer(x+hatX,y+hatY,"Bullets",obj_zombieGib)
	hat.sprite_index = hatSpr
	hat.image_index = hatFrame
	hat.height = y//-hatY/2
}

function Destroy(){
	if (instance_exists(obj_RoomController))
	{
		with(obj_RoomController)
		{
			if(triggered)
			{
				remaining[current_wave]--;
			}
		}
	}
	//WAVE STUFF ^^
	instance_destroy(hb)
	instance_destroy()
}
>>>>>>> Stashed changes
