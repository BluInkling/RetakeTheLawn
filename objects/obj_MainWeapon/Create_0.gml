
main = obj_Controller.mainweapon //gets the main weapon from controller

recoil = 0;

sprite_index = main.mainidlesprite


clip = main.clip
ammo = clip
shootavailable = true

projtype = main.projtype // flaming, ice, butter SET IN CONTROLLER SRTUCT
angle = 0

function ShootProjectile(){
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

//Shoot Offset
shootOffsetAngle = point_direction(0,0,main.projOffsetX,main.projOffsetY)
shootOffsetDistance = sqrt(sqr(main.projOffsetX)+sqr(main.projOffsetY)) //Pythagoren theorum

//Animations
animIdle = main.mainidlesprite
animShoot = main.mainshootsprite
animReload = main.mainreloadsprite

//Animation States
idle = true
shooting = false
reloading = false

function ChangePrimary(){
	main = obj_Controller.mainweapon
	animIdle = main.mainidlesprite
	animShoot = main.mainshootsprite
	animReload = main.mainreloadsprite
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