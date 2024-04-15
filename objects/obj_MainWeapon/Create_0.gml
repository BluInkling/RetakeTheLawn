
main = obj_Controller.mainweapon //gets the main weapon from controller

recoil = 0;

sprite_index = main.mainidlesprite


clip = main.clip
ammo = clip
shootavailable = true
projtype = "normal" // flaming, ice, butter

function ShootProjectile(){
	var proj = instance_create_layer(x+lengthdir_x(shootOffsetDistance,shootOffsetAngle),y+lengthdir_y(shootOffsetDistance,shootOffsetAngle),"Bullets",obj_Projectile)
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
	if (obj_Controller.mainweapon.wepname == "peashooter"){
		obj_Controller.mainweapon = obj_Controller.weaponstats.repeater
	} else {
		obj_Controller.mainweapon = obj_Controller.weaponstats.peashooter
	}
	
	main = obj_Controller.mainweapon
	animIdle = main.mainidlesprite
	animShoot = main.mainshootsprite
	animReload = main.mainreloadsprite
}

function Reload(){
	shootavailable = false
	idle = false
	shooting = false
	reloading = true
	image_index = 0 
}