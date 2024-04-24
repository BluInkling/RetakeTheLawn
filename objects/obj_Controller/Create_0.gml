
randomize()
/*
activate = false
currSprite = sTest;
imgnum = 0;
maximgnum = 0;
*/

weaponstats = {
	peashooter : 
	{
		wepname : "peashooter",
		mainidlesprite : spr_peashooterIdle,
		mainreloadsprite : spr_peashooterReload,
		mainshootsprite : spr_peashooterShoot,
		projsprite : spr_pea,
		projtype : "normal",
		projsplat : spr_splatPea,
		movespeed : 7,
		lifetime: 20,
		accuracy : 7,
		clip : 8,
		damage : 2,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false
	},
	repeater : 
	{
		wepname: "repeater",
		mainidlesprite : spr_repeaterIdle,
		mainreloadsprite : spr_repeaterReload,
		mainshootsprite : spr_repeaterShoot,
		projsprite : spr_pea,
		projtype : "normal",
		projsplat : spr_splatPea,
		movespeed : 7,
		lifetime: 20,
		accuracy : 7,
		clip : 8,
		damage : 2,
		shootFrames : [1,2],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false
	},
	snowpea : 
	{
		wepname: "snowpea",
		mainidlesprite : spr_snowpeaIdle,
		mainreloadsprite : spr_snowpeaReload,
		mainshootsprite : spr_snowpeaShoot,
		projsprite : spr_frozenPea,
		projtype : "frozen",
		projsplat : spr_splatFrozenPea,
		movespeed : 7,
		lifetime: 20,
		accuracy : 7,
		clip : 4,
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
		mainidlesprite : spr_cabbagePultIdle,
		mainreloadsprite : spr_cabbagePultIdle,
		mainshootsprite : spr_cabbagePultShoot,
		mainchargesprite : spr_cabbagePultCharge,
		mainchargemaxsprite : spr_cabbagePultChargeMax,
		projsprite : spr_cabbage,
		projtype : "normal",
		projsplat : spr_splatPea,
		movespeed : 8,
		lifetime: 30,
		accuracy : 4,
		clip : 4,
		damage : 3,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : true,
		chargetime : 30
		
	}
		
}

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
		cooldown : 600,
		throwable: false
	}
}




inventoryPrimary = [weaponstats.peashooter]
ammoPrimary = [weaponstats.peashooter.clip]
//inventorySecondary = [subweaponstats.potatomine,subweaponstats.torchwood]
inventorySecondary = [subweaponstats.potatomine]
cooldownSecondary = [0]//[0,0]

primary = 0
secondary = 0

mainamount = 5 //total amn of main weps

secondaryamount = 2; //total amnt of subs

mainweapon = inventoryPrimary[primary]
subweapon = inventorySecondary[secondary]


//subweapon = "torchwood"

enemystats = {
	basic :
	{
		type : "basic",
		hp : 8,
		armor : 0,
		idlespr : spr_zombieIdle,
		movespr : spr_zombieRun,
		attackspr : spr_zombieAttack,
		attacksprHB : spr_zombieAttackHB,
		spawnspr : spr_zombieSpawn,
		spd : .75,
		onhead : "none"
	},
	conehead :
	{
		type : "conehead",
		hp : 8,
		armor : 4,
		idlespr : spr_zombieIdle,
		movespr : spr_zombieRun,
		attackspr : spr_zombieAttack,
		attacksprHB : spr_zombieAttackHB,
		spawnspr : spr_zombieSpawn,
		spd : .5,
		onhead : "cone"
	},
	buckethead :
	{
		type : "buckethead",
		hp : 8,
		armor : 8,
		idlespr : spr_zombieIdle,
		movespr : spr_zombieRun,
		attackspr : spr_zombieAttack,
		attacksprHB : spr_zombieAttackHB,
		spawnspr : spr_zombieSpawn,
		spd : .5,
		onhead : "bucket"
	}
	
}






//BLACK MAGIC OOOOO

zombieHeadAnims = { //Storing it here for now
	idle : {
		y : [-28,-28,-27,-27,-28],
		x : [3,3,3,3,3]
	},
	run : {
		y : [-28,-29,-29,-28,-28],
		x : [3,3,3,3,3]
	},
	attack : {
		y : [-28,-28,-27,-26,-25,-25,-28,-29,-28,-25,-27,-28,-29,-26,-27],
		x : [3,3,3,3,3,4,3,4,5,4,3,3,4,4]
	},
	spawn : {
		y : [16,16,16,16,16,16,-7,-13,-19,-23,-26,-28,-29,-27],
		x : [0,0,0,0,0,0,-3,-3,0,3,4,3,4]
	}
}



