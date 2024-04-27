
// Inherit the parent event
event_inherited();


radius = 220;
lineofsight = false;
attackradius = 48

hitByAttack = ds_list_create();


enum ENEMYSTATE
{
	IDLE, //stands still
	WANDER, //moves to a random nearby spot
	CHASE, //moves towards player
	ATTACK //Attacks toward player
	
}

enemyType = obj_Controller.enemystats.basic;

if enemyType.behavior == "ranged"{
	state = ENEMYSTATE.WANDER
} else state = ENEMYSTATE.IDLE

//enemyType = obj_Controller.enemystats.conehead;

enemyType = global.grabthis;
//show_debug_message("grabbed:" + string(enemyType))

//-------------------
hp = enemyType.hp
armor = enemyType.armor
counter = 0;
shootcounter = 0;
spd = enemyType.spd
coldspd = spd*2 / 3;
coldLength = 180
my_dir = irandom_range(0,359)
moveX = lengthdir_x(1, my_dir);
moveY = lengthdir_y(1, my_dir);
cold = false
attackDir = 0

hasButter = false
stunLength = 120
butterX = 0
butterY = 0


xVel = moveX*spd + forceX
yVel = moveY*spd + forceY

hasHand = true
hasHat = false
hat = enemyType.onhead
hatSpr = spr_butter //Just placeholder
hatFrame = 0
hatX = 0
hatY = 0

dying = false
isDead = false

spawning = true
sprite_index = enemyType.spawnspr

hb = noone
egun = noone

hasHit = false
	
if hat == "cone"{
	hatSpr = spr_zombieCone
	hasHat = true
}else if hat == "bucket"{
	hatSpr = spr_zombieBucket
	hasHat = true
}else if hat == "armyhat"{ //if soldier zombie then give it a hat and gun
	hatSpr = sArmyHat
	hasHat = true	
	projspd = enemyType.projspd
	damage = enemyType.damage
	wepspr = enemyType.weaponspr
	projspr = enemyType.projspr

}

function Hit(damage,type,dir,flaming){
	if armor > 0{ //if has armor
		armor -= damage//armor takes damage
		if armor <= 0{ //if no more armor
			hasHat = false
			SpawnHat(hatSpr)
			hp += armor;
			armor=0
		}
	}else{ //if no armor, health takes damage
		//show_debug_message(damage)
		//show_debug_message("minus")
		//show_debug_message(hp)
		hp -= damage;
	}

	if hasHand && hp <= enemyType.hp/2{
		hasHand = false
		instance_create_layer(x-2*image_xscale,y-8,"Bullets",obj_zombieGib)
	}
	flashAlpha = 1;

	if type == obj_Controller.projstats.butter{ //BUTTER STUN
		spd = 0;
		hasButter = true;
		alarm_set(0,stunLength)
	}
	if type == obj_Controller.projstats.snow{
		cold = true
		flashAlpha = 0.2;
		flashColor = c_blue//c_aqua;
		spd = coldspd;
		image_speed = 0.5
		alarm_set(0,coldLength)
	}else if flaming{
		if obj_MainWeapon.main.wepname == "snowpea"{
			flashColor = c_white;
		} else {
			flashColor = c_red;
		}
	}else{
		if !cold{
			flashColor = c_white;
		}else{
			flashAlpha = 0.2;
		}
	}
	Force(clamp(damage,0,2),dir)
}


function SpawnHat(){
	var hat = instance_create_layer(x+hatX,y+hatY,"Bullets",obj_zombieGib)
	hat.sprite_index = hatSpr
	hat.image_xscale = image_xscale
	hat.image_index = hatFrame
	hat.height = y//-hatY/2
}

function SpawnHead(spr){
	var head = instance_create_layer(x+4*image_xscale,y-16,"Bullets",obj_zombieGib)
	head.sprite_index = spr
	head.image_xscale = image_xscale
	head.height = y
}

function Destroy(){
	
	instance_destroy(hb)
	instance_destroy()
}
