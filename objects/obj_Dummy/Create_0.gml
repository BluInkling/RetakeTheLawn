/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//only keep variables that need to be reset

radius = 0;
lineofsight = false;
attackradius = 0
//state = ENEMYSTATE.IDLE
//hitByAttack = ds_list_create();


enemyType = obj_Controller.enemystats.basic;
//-------------------
hp = 10
armor = 0
counter = 0;
spd = 0
coldspd = 0;
my_dir = irandom_range(0,359)
moveX =0
moveY = 0;
cold = false


xVel = 0
yVel = 0

hasHand = true
hasHat = false
hat = enemyType.onhead
hatSpr = spr_pea //Just placeholder
hatFrame = 0
hatX = 0
hatY = 0
	
//if hat == "cone"{
//	hatSpr = spr_zombieCone
//	hasHat = true
//}else if hat == "bucket"{
//	hatSpr = spr_zombieBucket
//	hasHat = true
//}

hb = instance_create_layer(x,y,"Player",obj_zombieHitbox)

function Hit(damage,type,dir){
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
	if hasHand && hp <= enemyType.hp/2{
		hasHand = false
		instance_create_layer(x-2*image_xscale,y-8,"Bullets",obj_zombieGib)
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
		} else {
			flashColor = c_red;
		}
	}else{
		flashColor = c_white;
	}
	//Force(2,dir)
}

//function SpawnHat(spr){
//	var hat = instance_create_layer(x+hatX,y+hatY,"Bullets",obj_zombieGib)
//	hat.sprite_index = hatSpr
//	hat.image_index = hatFrame
//	hat.height = y//-hatY/2
//}

//function Destroy(){
//	instance_destroy(hb)
//	instance_destroy()
//}











/////////////////////////////////////////////////////////////////

function EnemyState_Idle(){
	moveX = 0
	moveY = 0
	//show_debug_message("IDLE")

	//counter += 1;
	
	////Transition triggers
	//if(counter >= room_speed * 3){ //50% chance to start wandering every 3 seconds
	//	var change = choose(0,1)
	//	switch(change){
	//		case 0 : state = ENEMYSTATE.WANDER
	//		case 1 : counter = 0; break;
	//	}
	//}
	////I DID NTO KNOW COLLISON CIRCLE WAS A FUNCTION THIS IS AMAZING NEWS
	
	////if hiding behind wall goes back and forth btwn idle and chase
	
	////if player is  in range AND enemy can see them
	//if (collision_circle(x,y,radius, obj_player,false,false) && !collision_line(x,y-16,obj_player.x,obj_player.y,obj_wall,false,false)){
	//	state = ENEMYSTATE.CHASE;	//okay 64 is to big, 32 is too small
	//}
	
	if hasHand{
		sprite_index = obj_Controller.enemystats.basic.idlespr
	}else{
		sprite_index = spr_zombieNoHandIdle
	}
}