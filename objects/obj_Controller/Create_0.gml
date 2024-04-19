<<<<<<< Updated upstream
=======
randomize()
activate = false
currSprite = sTest;
imgnum = 0;
maximgnum = 0;
>>>>>>> Stashed changes
weaponstats = {
	peashooter : 
	{
		wepname : "peashooter",
		mainidlesprite : spr_peashooterIdle,
		mainreloadsprite : spr_peashooterReload,
		mainshootsprite : spr_peashooterShoot,
		projsprite : sPea,
		movespeed : 1,
		firingspeed : 19,
		accuracy : 3,
		clip : 8,
		damage : 2
	},
	repeater : 
	{
		wepname: "repeater",
		mainidlesprite : spr_peashooterIdle,
		mainreloadsprite : spr_peashooterReload,
		mainshootsprite : spr_peashooterShoot,
		projsprite : sPea,
		movespeed : 1,
		firingspeed : 19,
		accuracy : 3,
		clip : 8,
		damage : 2
	},
	snowpea : 
	{
		wepname: "snowpea",
		mainidlesprite : spr_snowpeaIdle,
		mainreloadsprite : spr_snowpeaReload,
		mainshootsprite : spr_snowpeaShoot,
		projsprite : TESTspr_frozenpea,
		movespeed : 7,
		accuracy : 7,
		clip : 8,
		damage : 2,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5
	},
	threepeater : 
	{
		wepname: "threepeater",
		mainidlesprite : spr_threepeaterIdle,
		mainreloadsprite : spr_threepeaterReload,
		mainshootsprite : spr_threepeaterShoot,
		projsprite : spr_pea,
		projtype : "normal",
		projsplat : spr_splatPea,
		movespeed : 7,
		lifetime: 20,
		accuracy : 2,
		clip : 4,
		damage : 2,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5
	}
		
}

//mainweapon = "peashooter"
<<<<<<< Updated upstream
mainweapon = weaponstats.repeater
=======
mainweapon = weaponstats.threepeater
>>>>>>> Stashed changes

subweapon = "torchwood"
//subweapon = "torchwood"


<<<<<<< Updated upstream
=======




enemystats = {
	basic :
	{
		type : "basic",
		hp : 3,
		idlespr : spr_zombieIdle,
		movespr : spr_zombieRun,
		attackspr : spr_zombieAttack,
		attacksprHB : spr_zombieAttackHB,
		spd : .5,
		onhead : "none"
	},
	conehead :
	{
		type : "conehead",
<<<<<<< Updated upstream
		hp : 5,
=======
		hp : 4,
		armor : 3,
>>>>>>> Stashed changes
		idlespr : spr_zombieIdle,
		movespr : spr_zombieRun,
		attackspr : spr_zombieAttack,
		attacksprHB : spr_zombieAttackHB,
		spd : .5,
		onhead : "cone"
	},
	buckethead :
	{
		type : "buckethead",
<<<<<<< Updated upstream
		hp : 8,
=======
		hp : 4,
		armor : 5,
>>>>>>> Stashed changes
		idlespr : spr_zombieIdle,
		movespr : spr_zombieRun,
		attackspr : spr_zombieAttack,
		attacksprHB : spr_zombieAttackHB,
		spd : .5,
		onhead : "bucket"
	}
	
}






//BLACK MAGIC OOOOO
zombieHeadAnims = { //Storing it here for now
	idle : {
		x : [-28,-28,-27,-27,-28],
		y : [3,3,3,3,3]
	},
	run : {
		x : [-28,-29,-29,-28,-28],
		y : [3,3,3,3,3]
	},
	attack : {
		x : [-28,-28,-27,-26,-25,-25,-28,-29,-28,-25,-27,-28,-29,-26,-27],
		y : [3,3,3,3,3,4,3,4,5,4,3,3,4,4]
	}
}
>>>>>>> Stashed changes










