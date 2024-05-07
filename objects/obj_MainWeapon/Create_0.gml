
main = obj_Controller.mainweapon //gets the main weapon from controller

recoil = 0;

sprite_index = main.mainidlesprite

increasing = true
counter = 0

clip = main.clip
ammo = clip
shootavailable = true
recoil = 0
recoilRecovery = 0.25
recoilMax = 2.5
recoilX = 0
recoilY = 0

projtype = main.projtype // flaming, ice, butter SET IN CONTROLLER SRTUCT
angle = 0

chargeable = main.chargeable
drawcharging = false

bubbleCounter = 0
bubblesShot = 0

puffCheck = 1

peasounds = [snd_peashoot,snd_peashoot2]
flingsounds =[flingFling,flingFling2,flingFling3]
fumesounds = [Fume]
puffsounds =[Puff]

function PlaySound(type){
	if main.family == "pea"{
		sound = peasounds[irandom_range(0,array_length(peasounds)-1)]
		audio_sound_pitch(sound,random_range(0.90,1.40))
		if main.wepname == "snowpea"{
			sparklesound = Snow_pea_sparkles
			audio_sound_pitch(sparklesound,random_range(0.90,1.40))
			audio_play_sound(sparklesound,1,false,0.9,0,1)
			audio_play_sound(sound,1,false,0.9,0,1)
		} else {
			audio_play_sound(sound,1,false,0.9)
		}
	}
	else if main.family == "fling"{
		sound = flingsounds[irandom_range(0,array_length(flingsounds)-1)]
		audio_sound_pitch(sound,random_range(0.95,1.40))
		if (type == "butter") {
			//buttersound = snd_butter
			//audio_sound_pitch(buttersound,random_range(0.90,1.40))
			//audio_play_sound(buttersound,1,false,0.9,0,1)
			audio_sound_pitch(sound,random_range(0.70,.80))
			audio_play_sound(sound,1,false,0.9,0,1)
		} else {
			audio_play_sound(sound,1,false,0.9)
		}
	}
	else if main.family == "bubble"{
		sound = fumesounds[irandom_range(0,array_length(fumesounds)-1)]
		audio_sound_pitch(sound,random_range(0.90,1.40))
		if (type == "small") {
			puffsound = Puff
			audio_sound_pitch(puffsound,random_range(0.90,1.30))
			audio_play_sound(puffsound,1,false,0.9,0,1)
		} else {
			audio_play_sound(sound,8,false,0.75)
		}
	}
	
}

peasoundsReload = [Turret_PeaShooter_VO_Spawn_0_2_0,Turret_PeaShooter_VO_Spawn_0_3_0,Turret_PeaShooter_VO_Spawn_0_5_0,Turret_PeaShooter_VO_Spawn_0_6_0,Turret_PeaShooter_VO_Spawn_1_1_0]
repeatersoundsReload = [Turret_PeaRepeater_VO_Spawn_0_0_0,Turret_PeaRepeater_VO_Spawn_0_1_0,Turret_PeaRepeater_VO_Spawn_0_5_0,Turret_PeaRepeater_VO_Spawn_0_6_0,Turret_PeaRepeater_VO_Spawn_1_0_0]
puffsoundsReload = [Turret_ScaredyShroom_VO_Spawn_1_0_0,Turret_ScaredyShroom_VO_Spawn_1_1_0,Turret_ScaredyShroom_VO_Spawn_1_4_0,Turret_ScaredyShroom_VO_Spawn_2_0_0]
snowsoundsReload = [Turret_PeaShooter_Ice_VO_Spawn_0_0_0,Turret_PeaShooter_Ice_VO_Spawn_1_3_0,Turret_PeaShooter_Ice_VO_Spawn_1_5_0,Turret_PeaShooter_Ice_VO_Spawn_1_2_0]
gatlingsoundsReload = [Turret_PeaGatling_VO_Spawn_0_0_0,Turret_PeaGatling_VO_Spawn_0_2_0,Turret_PeaGatling_VO_Spawn_0_3_0,Turret_PeaGatling_VO_Spawn_0_5_0,Turret_PeaGatling_VO_Spawn_1_1_0]
fumesoundsReload = [vo_turret_fume_shroom_spawn_0_3_0,vo_turret_fume_shroom_spawn_0_4_0,vo_turret_fume_shroom_spawn_0_7_0,vo_turret_fume_shroom_spawn_1_2_0]
cabbagesoundsReload = [Turret_DoomShroom_VO_Spawn_0_1_0,Turret_DoomShroom_VO_Spawn_1_3_0,Turret_DoomShroom_VO_Spawn_2_1_0,Turret_DoomShroom_VO_Spawn_2_3_0]
kernelsoundsReload = [Turret_ScaredyShroom_VO_Unhide_0_0_0,Turret_ScaredyShroom_VO_Unhide_1_1_0,Turret_ScaredyShroom_VO_Unhide_1_2_0,Turret_ScaredyShroom_VO_Unhide_1_3_0,Turret_ScaredyShroom_VO_Unhide_1_4_0]

function PlayReloadSound(){
	switch(main.wepname){
		case "peashooter":
			reloadsound = peasoundsReload[irandom_range(0,array_length(peasoundsReload)-1)]
			audio_play_sound(reloadsound,1,false,0.15)
		break;
		
		case "repeater":
			reloadsound = repeatersoundsReload[irandom_range(0,array_length(repeatersoundsReload)-1)]
			audio_play_sound(reloadsound,1,false,0.15)
		break;
		
		case "snowpea":
			reloadsound = snowsoundsReload[irandom_range(0,array_length(snowsoundsReload)-1)]
			audio_play_sound(reloadsound,1,false,0.15)
		break;
		
		case "threepeater":
			var reloadsound1 = peasoundsReload[irandom_range(0,array_length(peasoundsReload)-1)]
			var reloadsound2 = peasoundsReload[irandom_range(0,array_length(peasoundsReload)-1)]
			var reloadsound3 = peasoundsReload[irandom_range(0,array_length(peasoundsReload)-1)]
			audio_play_sound(reloadsound1,1,false,0.07,0,1)
			audio_play_sound(reloadsound2,1,false,0.07,0.2,1.15)
			audio_play_sound(reloadsound3,1,false,0.07,0.4,0.9)
		break;
		
		case "cabbagepult":
			reloadsound = cabbagesoundsReload[irandom_range(0,array_length(cabbagesoundsReload)-1)]
			audio_play_sound(reloadsound,1,false,0.35)
		break;
		
		case "kernelpult":
			reloadsound = kernelsoundsReload[irandom_range(0,array_length(kernelsoundsReload)-1)]
			audio_play_sound(reloadsound,1,false,0.35)
		break;
		
		case "fumeshroom":
			reloadsound = fumesoundsReload[irandom_range(0,array_length(fumesoundsReload)-1)]
			audio_play_sound(reloadsound,1,false,0.30)
		break;
		
		case "puffshroom":
			var reloadsound4 = puffsoundsReload[irandom_range(0,array_length(puffsoundsReload)-1)]
			var reloadsound5 = puffsoundsReload[irandom_range(0,array_length(puffsoundsReload)-1)]
			audio_play_sound(reloadsound4,1,false,0.25,0,1.10)
			audio_play_sound(reloadsound5,1,false,0.25,0.3,1.25)
		break;
		
		case "gatlingpea":
			reloadsound = gatlingsoundsReload[irandom_range(0,array_length(gatlingsoundsReload)-1)]
			audio_play_sound(reloadsound,1,false,0.15)
		break;
		
	}

}

function ShootProjectile(){
	recoil = clamp(projtype.damage*2,0,recoilMax)
	if (chargeable){
		var proj = instance_create_layer(x+lengthdir_x(shootOffsetDistance,shootOffsetAngle+(obj_playerArms.handsAngle-obj_playerArms.armAngle)),y+lengthdir_y(shootOffsetDistance,shootOffsetAngle+(obj_playerArms.handsAngle-obj_playerArms.armAngle)),"Bullets",obj_Projectile)
		with (proj){
			var percentagecharged = 0
			//show_debug_message(other.counter)
			percentagecharged = other.counter / other.main.chargetime
			//show_debug_message(percentagecharged)
			alarm[0] = 1 + lifetime * percentagecharged
			damage = 0.5 + damage * percentagecharged
			moveSpd = 5 + moveSpd * percentagecharged
			if percentagecharged == 1{
				if (main.wepname == "cabbagepult"){
					piercing = true
					with(other) PlaySound("");
				}
				if (main.wepname == "kernelpult"){
					type = main.secondammo
					sprite_index = type.mainsprite
					butter = true;
					piercing = true
					with(other) PlaySound("butter");
				}
				
			} else if(percentagecharged < 1){
				if (main.wepname == "kernelpult"){
					var num = irandom_range(0,100)
					if num < 20{ //20% chnace to be butter
						type = main.secondammo
						sprite_index = type.mainsprite
						butter = true;
						with(other) PlaySound("butter");
					} else with(other) PlaySound("");
				} else with(other) PlaySound("");
			}
		}
		counter = 0
		//TEST
	}
	else{
		if main.wepname == "threepeater"{
			angle = -30
			for(var i = 0; i<3;i++){
				var proj = instance_create_layer(x+lengthdir_x(shootOffsetDistance,shootOffsetAngle+(obj_playerArms.handsAngle-obj_playerArms.armAngle)),y+lengthdir_y(shootOffsetDistance,shootOffsetAngle+(obj_playerArms.handsAngle-obj_playerArms.armAngle)),"Bullets",obj_Projectile)
				angle += 30;
			}
			angle = 0;
		}
		else{
		var proj = instance_create_layer(x+lengthdir_x(shootOffsetDistance,shootOffsetAngle+(obj_playerArms.handsAngle-obj_playerArms.armAngle)),y+lengthdir_y(shootOffsetDistance,shootOffsetAngle+(obj_playerArms.handsAngle-obj_playerArms.armAngle)),"Bullets",obj_Projectile)
		}
		if main.family != "bubble"{
			PlaySound("");
		}
		else if main.wepname == "puffshroom"{
			PlaySound("small");
		}
	}
}

//Shoot Offset
shootOffsetAngle = point_direction(0,0,main.projOffsetX,main.projOffsetY)
shootOffsetDistance = sqrt(sqr(main.projOffsetX)+sqr(main.projOffsetY)) //Pythagoren theorum

//Animations
animIdle = main.mainidlesprite
animShoot = main.mainshootsprite
animReload = main.mainreloadsprite
if chargeable{
	animCharge = main.mainchargesprite
	animChargeMax = main.mainchargemaxsprite
}

//Animation States
idle = true
shooting = false
reloading = false
charging = false
chargeMax = false

flaming = false
flamePS = noone

//Audio
switchAudio = true

function ChangePrimary(){
	image_index = 0
	reloading = false
	shootavailable = true
	idle = true
	main = obj_Controller.mainweapon
	animIdle = main.mainidlesprite
	animShoot = main.mainshootsprite
	animReload = main.mainreloadsprite
	chargeable = main.chargeable
	if chargeable{
		animCharge = main.mainchargesprite
		animChargeMax = main.mainchargemaxsprite
	}
	projtype = main.projtype
	ammo = obj_Controller.ammoPrimary[obj_Controller.primary]
	//show_debug_message(projtype)
	shootOffsetAngle = point_direction(0,0,main.projOffsetX,main.projOffsetY)
	shootOffsetDistance = sqrt(sqr(main.projOffsetX)+sqr(main.projOffsetY))
}

function Reload(){
	shootavailable = false
	idle = false
	shooting = false
	reloading = true
	image_index = 0 
	PlayReloadSound()
}

function GotoPrimary(ind){
	if !(ind > array_length(obj_Controller.inventoryPrimary)-1){
		obj_Controller.primary = ind
		obj_Controller.mainweapon = obj_Controller.inventoryPrimary[obj_Controller.primary]
		ChangePrimary()
	}
}

//show_debug_message("Initial typee:" + string(projtype))