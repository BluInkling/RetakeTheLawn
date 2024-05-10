
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

if enemyType == obj_Controller.enemystats.imp{
	attackradius = 32
}
//-------------------
hp = enemyType.hp
armor = enemyType.armor
counter = 300;
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

buffField = false


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
sprite_index = enemyType.spawnspr;

hb = noone
egun = noone

hasHit = false
alreadyBuffed = false//NEVERMINDDD --> [] //when buffed by a flag, add its id to a list. it checks if the id that buffed this zombie is NOT the array to buff this. after the buff field is done, it romoves the id fro the array
	
frozen = false
	
	
if hat == "cone"{
	hatSpr = spr_zombieCone
	hasHat = true
}else if hat == "bucket"{
	hatSpr = spr_zombieBucket
	hasHat = true
}else if hat == "armyhat"{ //if soldier zombie then give it a hat and gun
	hatSpr = spr_zombieHelmet
	hasHat = true	
	projspd = enemyType.projspd
	damage = enemyType.damage
	wepspr = enemyType.weaponspr
	projspr = enemyType.projspr

}else if hat == "flag"{ //ALSO TEMPORARY
	hatSpr = spr_zombieFlag
	hasHat = true	
}

function Hit(damage,type,dir,flaming){
	var damagepopoff = instance_create_layer(x,y,"Bullets",obj_damagePopOff)
	with (damagepopoff) num = damage
	if armor > 0{ //if has armor
		PlaySoundHit()
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
		if enemyType != obj_Controller.enemystats.imp{
			audio_play_sound(snd_gibPop,1,false,0.9,0,random_range(0.8,1.2))
			hasHand = false
			instance_create_layer(x-2*image_xscale,y-8,"Bullets",obj_zombieGib)
		}
	}
	flashAlpha = 1;
	if type == obj_Controller.projstats.butter{ //BUTTER STUN
		spd = 0;
		hasButter = true;
		alarm_set(0,stunLength)
		
	}
	if type.mainsprite == obj_Controller.projstats.snow.mainsprite{
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
			cold = false
			frozen = false
		}
	}else{
		if !cold and !frozen{
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
	if enemyType != obj_Controller.enemystats.imp{
		var head = instance_create_layer(x+4*image_xscale,y-16,"Bullets",obj_zombieGib)
	}else{
		var head = instance_create_layer(x+4*image_xscale,y-8,"Bullets",obj_zombieGib)
		head.yVel = random_range(-3,-1.5)
	}
	head.sprite_index = spr
	head.image_xscale = image_xscale
	head.height = y
}

function Destroy(){
	
	instance_destroy(hb)
	instance_destroy()
}

function Buff(){
	spd += 0.25;
	hp += 2;
	alarm_set(2,240)
}

function Freeze(){
	state = ENEMYSTATE.IDLE
	sprite_index = enemyType.idlespr
	frozen = true
	flashAlpha = 0.3;
	flashColor = c_blue//c_aqua;
	image_speed = 0
	spd = 0;
	alarm_set(0,200)
}

bucketsounds = [snd_buckethit,snd_buckethit2]
conesounds = [snd_conehit,snd_conehit2]


function PlaySoundHit(){
	if hat == "bucket" or hat == "armyhat"{
		sound = bucketsounds[irandom_range(0,array_length(bucketsounds)-1)]
		audio_sound_pitch(sound,random_range(0.90,1.40))
		audio_play_sound(sound,1,false,0.9)
		
	}
	else if hat == "cone"{
		sound = conesounds[irandom_range(0,array_length(conesounds)-1)]
		audio_sound_pitch(sound,random_range(0.90,1.40))
		audio_play_sound(sound,1,false,0.9)
		
	}
}

groansounds = [Groan,Groan2,Groan3,Groan4,Groan5,Groan6,Groan7,Groan8]
fallsound = choose(zombie_falling_1,zombie_falling_2,bodyfall,bodyfall2)
