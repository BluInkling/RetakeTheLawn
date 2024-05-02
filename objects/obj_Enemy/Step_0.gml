/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !dying && !isDead{
	if !spawning{
		if !frozen{
		if enemyType.behavior = "ranged"{
			switch (state){
					case ENEMYSTATE.IDLE: EnemyState_Idle(); break;
					//case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
					case ENEMYSTATE.WANDER: EnemyState_Wander(); break;
					case ENEMYSTATE.ATTACK: EnemyState_Attack(); break;
			}
			if (state != ENEMYSTATE.ATTACK){
				shootcounter += random_range(0.4,1);
			}

			if(shootcounter >= room_speed * 3){ //100% chance to start SHOOT every 2 seconds
				state = ENEMYSTATE.ATTACK
				shootcounter = 0
			}
		} else if enemyType.behavior == "melee" {
			switch (state){
					case ENEMYSTATE.IDLE: EnemyState_Idle(); break;
					case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
					case ENEMYSTATE.WANDER: EnemyState_Wander(); break;
					case ENEMYSTATE.ATTACK: EnemyState_Attack(); break;
	
				}
		} else if enemyType.behavior == "support"{
			//show_debug_message(state)
			switch (state){
				case ENEMYSTATE.IDLE: EnemyState_Wander(); break;//EnemyState_Idle(); break;
				case ENEMYSTATE.CHASE: EnemyState_Wander(); break;
				case ENEMYSTATE.WANDER: EnemyState_Wander(); break;
				case ENEMYSTATE.ATTACK: EnemyState_Attack(); break;
			}
			if (state != ENEMYSTATE.ATTACK){
				shootcounter += random_range(0.5,1);
			}

			if(shootcounter >= room_speed * 3){ //buff every 3 seconds
				audio_play_sound(choose(sukhbir,sukhbir2,sukhbir3),1,false,1,0,random_range(0.90,1.20))
				state = ENEMYSTATE.ATTACK
				shootcounter = 0
			}
		}
		}
	}
	else{
		moveX = 0
		moveY = 0
		sprite_index = enemyType.spawnspr
		if image_index > image_number-1{
			spawning = false
			var chance = irandom_range(0,100)
			grsound = groansounds[irandom_range(0,array_length(groansounds)-1)]
			if (chance < 30) audio_play_sound(grsound,1,false,1,0,random_range(0.90,1.20))
			hb = instance_create_layer(x,y,"Player",obj_zombieHitbox)
			if (enemyType.type == "footsoldier"){ //gives footsoldiers a GUN
				egun = instance_create_layer(x,y,"Gun",obj_EnemyWeapon);
				with(egun){
					spawned = other.id;
					type = "gun"
					projspd = other.projspd
					damage = other.damage
					projspr = other.projspr
					sprite_index = other.wepspr
				}
			}
		}
	}
}else if !isDead{
	if state != ENEMYSTATE.IDLE{
		//Run death
	}else{
		
	}
	moveX = 0
	moveY = 0
	sprite_index = enemyType.dyingspr
	if image_index > image_number-1{
		isDead = true
		alarm[1] = 60
	}
}

if isDead{
	sprite_index = enemyType.deadspr
}

if sprite_index == spr_zombieDying && image_index > 10 && image_index < 13 && !audio_is_playing(fallsound){
	audio_play_sound(fallsound,1,false,1,0,1)	
}