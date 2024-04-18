
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

enemyType = obj_Controller.enemystats.conehead;
//-------------------
hp = enemyType.hp
armor = enemyType.armor
counter = 0;
spd = enemyType.spd
my_dir = irandom_range(0,359)
moveX = lengthdir_x(1, my_dir);
moveY = lengthdir_y(1, my_dir);

xVel = moveX*spd + forceX
yVel = moveY*spd + forceY

hasHand = true
hasHat = false
hat = enemyType.onhead
hatSpr = spr_pea //Just placeholder
hatFrame = 0
hatX = 0
hatY = 0
	
if hat == "cone"{
	hatSpr = spr_zombieCone
	hasHat = true
}else if hat == "bucket"{
	hatSpr = spr_zombieBucket
	hasHat = true
}

hb = instance_create_layer(x,y,"Player",obj_zombieHitbox)

function Hit(damage,type,dir){
	if armor > 0{
		armor -= damage
		if armor <= 0{
			hasHat = false
			SpawnHat(hatSpr)
			hp+=armor
			armor=0
		}
	}else{
		hp -= damage;
	}
	if hasHand && hp <= enemyType.hp/2{
		hasHand = false
		instance_create_layer(x-2*image_xscale,y-8,"Bullets",obj_zombieGib)
	}
	flashAlpha = 1;
	if type == "frozen"{
		flashColor = c_aqua;
	}else if type == "flaming"{
		flashColor = c_red;
	}else{
		flashColor = c_white;
	}
	Force(2,dir)
}

function SpawnHat(spr){
	var hat = instance_create_layer(x+hatX,y+hatY,"Bullets",obj_zombieGib)
	hat.sprite_index = hatSpr
	hat.image_index = hatFrame
	hat.height = y//-hatY/2
}

function Destroy(){
	instance_destroy(hb)
	instance_destroy()
}