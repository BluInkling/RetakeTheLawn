
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

function ShootProjectile(){

	if (chargeable){
		var proj = instance_create_layer(x+lengthdir_x(shootOffsetDistance,shootOffsetAngle+(obj_playerArms.handsAngle-obj_playerArms.armAngle)),y+lengthdir_y(shootOffsetDistance,shootOffsetAngle+(obj_playerArms.handsAngle-obj_playerArms.armAngle)),"Bullets",obj_Projectile)
		with (proj){
			var percentagecharged = 0
			show_debug_message(other.counter)
			percentagecharged = other.counter / other.main.chargetime
			show_debug_message(percentagecharged)
			alarm[0] = 10 + main.lifetime * percentagecharged
			damage = 1 + damage * percentagecharged
			moveSpd = 5 + moveSpd * percentagecharged
			if percentagecharged == 1{
				piercing = true
			}
		}
		counter = 0
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

function ChangePrimary(){
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