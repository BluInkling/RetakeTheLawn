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
<<<<<<< Updated upstream
		damage : 2
=======
		damage : 2,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false
		
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
		damage : 2
=======
		damage : 2,
		shootFrames : [1,2],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false
>>>>>>> Stashed changes
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
		projOffsetY : -5,
		chargeable : false
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
		projOffsetY : -5,
		chargeable : false
	},
	cabbagepult : 
	{
		wepname : "cabbagepult",
		mainidlesprite : sCabbagepult,
		mainreloadsprite : sCabbagepult,
		mainshootsprite : sCabbagepult,
		projsprite : sCabbage,
		projtype : "normal",
		projsplat : spr_splatPea,
		movespeed : 8,
		lifetime: 30,
		accuracy : 4,
		clip : 8,
		damage : 3.5,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : true,
		chargetime : 30
		
	}
		
}

<<<<<<< Updated upstream
//mainweapon = "peashooter"
<<<<<<< Updated upstream
mainweapon = weaponstats.repeater
=======
mainweapon = weaponstats.threepeater
>>>>>>> Stashed changes
=======
subweaponstats = {
	potatomine :{
		wepname : "potatomine",
		subidlesprite : spr_potatomineIdle, // for pocket
		subdownsprite : spr_potatomineThrow,
		cooldown : 1200,
		throwable : true
	},
	torchwood :{
		wepname : "torchwood",
		subidlesprite : spr_torchwoodIdle, // for pocket
		subdownsprite : spr_torchwoodActivate,
		cooldown : 200,
		throwable: false
	}
}

//inventoryPrimary = [weaponstats.peashooter,weaponstats.repeater,weaponstats.snowpea,weaponstats.threepeater]
<<<<<<< Updated upstream
inventoryPrimary = [weaponstats.peashooter]
ammoPrimary = [weaponstats.peashooter.clip,weaponstats.repeater.clip,weaponstats.snowpea.clip,weaponstats.threepeater.clip]
=======
//inventoryPrimary = [weaponstats.peashooter]
inventoryPrimary = [weaponstats.cabbagepult]
//ammoPrimary = [weaponstats.peashooter.clip,weaponstats.repeater.clip,weaponstats.snowpea.clip,weaponstats.threepeater.clip]
ammoPrimary = [weaponstats.cabbagepult.clip]
>>>>>>> Stashed changes

//inventorySecondary = [subweaponstats.potatomine,subweaponstats.torchwood]
inventorySecondary = [subweaponstats.potatomine]
cooldownSecondary = [0,0]
primary = 0
secondary = 0

<<<<<<< Updated upstream
mainamount = 4 //total amn of main weps
=======

mainamount = 5 //total amn of main weps
>>>>>>> Stashed changes
secondaryamount = 2; //total amnt of subs

mainweapon = inventoryPrimary[primary]
subweapon = inventorySecondary[secondary]
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










