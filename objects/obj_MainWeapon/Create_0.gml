
main = obj_Controller.mainweapon //gets the main weapon from controller

recoil = 0;

sprite_index = main.mainidlesprite

increasing = true
counter = 0

clip = main.clip
ammo = clip
shootavailable = true

projtype = main.projtype // flaming, ice, butter SET IN CONTROLLER SRTUCT
angle = 0

chargeable = main.chargeable

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

function ShootProjectile(){

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
}

function GotoPrimary(ind){
	if !(ind > array_length(obj_Controller.inventoryPrimary)-1){
		obj_Controller.primary = ind
		obj_Controller.mainweapon = obj_Controller.inventoryPrimary[obj_Controller.primary]
		ChangePrimary()
	}
}

//show_debug_message("Initial typee:" + string(projtype))