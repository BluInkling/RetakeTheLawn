
randomize()
/*
activate = false
currSprite = sTest;
imgnum = 0;
maximgnum = 0;
*/
projstats = {
	pea :
	{
		mainsprite : spr_pea,
		splatsprite : spr_splatPea,
		dispsprite : spr_peaDisp,
		movespeed : 7,
		lifetime: 15,//20,
		damage : 2,
	},
	snow :
	{
		mainsprite : spr_frozenPea,
		splatsprite : spr_splatFrozenPea,
		dispsprite : spr_snowDisp,
		movespeed : 7,
		lifetime: 15,//20,
		damage : 2,
	},
	cabbage :
	{
		mainsprite : spr_cabbage,
		splatsprite : spr_splatPea,
		dispsprite: spr_cabbageDisp,
		movespeed : 8,
		lifetime: 20,
		damage : 3.5,
	}
}


weaponstats = {
	peashooter : 
	{
		wepname : "peashooter",
		mainidlesprite : spr_peashooterIdle,
		mainreloadsprite : spr_peashooterReload,
		mainshootsprite : spr_peashooterShoot,
		projtype : projstats.pea,
		accuracy : 7,
		clip : 8,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false,
		secondammo : false
	},
	repeater : 
	{
		wepname: "repeater",
		mainidlesprite : spr_repeaterIdle,
		mainreloadsprite : spr_repeaterReload,
		mainshootsprite : spr_repeaterShoot,
		projtype : projstats.pea,
		accuracy : 7,
		clip : 8,
		shootFrames : [1,2],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false,
		secondammo : false
	},
	snowpea : 
	{
		wepname: "snowpea",
		mainidlesprite : spr_snowpeaIdle,
		mainreloadsprite : spr_snowpeaReload,
		mainshootsprite : spr_snowpeaShoot,
		projtype : projstats.snow,
		accuracy : 7,
		clip : 4,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false,
		secondammo : false
	},
	threepeater : 
	{
		wepname: "threepeater",
		mainidlesprite : spr_threepeaterIdle,
		mainreloadsprite : spr_threepeaterReload,
		mainshootsprite : spr_threepeaterShoot,
		projtype : projstats.pea,
		accuracy : 2,
		clip : 4,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false,
		secondammo : false
	},
	cabbagepult : 
	{
		wepname : "cabbagepult",
		mainidlesprite : spr_cabbagePultIdle,
		mainreloadsprite : spr_cabbagePultIdle,
		mainshootsprite : spr_cabbagePultShoot,
		mainchargesprite : spr_cabbagePultCharge,
		mainchargemaxsprite : spr_cabbagePultChargeMax,
		projtype : projstats.cabbage,
		accuracy : 4,
		clip : 4,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : true,
		chargetime : 35,//30,
		secondammo : false //FOR USE IN THE FUME SHROOM AND KERNEL PULT TO DEFINE SECONDARY AMMO AND AMMO TYPE/CHANCE
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
		onhead : "none",
		behavior : "melee"
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
		onhead : "cone",
		behavior : "melee"
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
		onhead : "bucket",
		behavior : "melee"
	},
	footsoldier :
	{
		type : "footsoldier",
		hp : 4,
		armor : 6,
		idlespr : spr_zombieIdle,
		movespr : spr_zombieRun,
		attackspr : spr_zombieAttack,
		attacksprHB : spr_zombieAttackHB,
		spawnspr : spr_zombieSpawn,
		spd : .5,
		onhead : "armyhat",
		behavior : "ranged",
		damage : 2,
		projspd : 5,
		weaponspr : sEnemyGun,
		projspr : sFrozenPea
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



