
randomize()
/*
activate = false
currSprite = sTest;
imgnum = 0;
maximgnum = 0;
*/
<<<<<<< Updated upstream
=======
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
	},
	kernel :
	{
		mainsprite : spr_kernel,
		splatsprite : spr_kernelDisp,
		dispsprite: spr_kernelDisp,
		movespeed : 8,
		lifetime: 20,
		damage : 2,
	},
	butter :
	{
		mainsprite : spr_butter,
		splatsprite : spr_kernelDisp,
		dispsprite: spr_butterDisp,
		movespeed : 7,
		lifetime: 20,
		damage : 2.5,
	},
	bigbubble :
	{
		mainsprite : spr_bubbleBig,
		splatsprite : spr_bubbleBigDisp,
		dispsprite : spr_bubbleBigDisp,
		movespeed : 8,
		lifetime: 13,//20,
		damage : 1,
	},
	smallbubble :
	{
		mainsprite : spr_bubbleSmall,
		splatsprite : spr_bubbleSmallDisp,
		dispsprite : spr_bubbleSmallDisp,
		movespeed : 10,
		lifetime: 11,//20,
		damage : 0.5,
	}
}

>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
		chargetime : 30
		
	}
		
=======
		chargetime : 30,//30,
		secondammo : false //FOR USE IN THE FUME SHROOM AND KERNEL PULT TO DEFINE SECONDARY AMMO AND AMMO TYPE/CHANCE
	},
	kernelpult : 
	{
		wepname : "kernelpult",
		mainidlesprite : spr_kernelPultIdle,
		mainreloadsprite : spr_kernelPultReload,
		mainshootsprite : spr_kernelPultShoot,
		mainchargesprite : spr_kernelPultCharge,
		mainchargemaxsprite : spr_kernelPultChargeMax,
		projtype : projstats.kernel,
		accuracy : 4,
		clip : 6,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : true,
		chargetime : 35,//30,
		secondammo : projstats.butter //FOR USE IN THE FUME SHROOM AND KERNEL PULT TO DEFINE SECONDARY AMMO AND AMMO TYPE/CHANCE
	},	
	fumeshroom : 
	{
		wepname : "fumeshroom",
		mainidlesprite : spr_fumeshroomIdle,
		mainreloadsprite : spr_fumeshroomReload,
		mainshootsprite : spr_fumeshroomShoot,
		projtype : projstats.bigbubble,
		accuracy : 10,
		clip : 5,
		shootFrames : [5],
		projOffsetX : 2,
		projOffsetY : -2,
		chargeable : false,
		secondammo : projstats.smallbubble
	},
	puffshroom : 
	{
		wepname : "puffshroom",
		mainidlesprite : spr_puffshroomIdle,
		mainreloadsprite : spr_puffshroomReload,
		mainshootsprite : spr_puffshroomShoot,
		projtype : projstats.smallbubble,
		accuracy : 4,
		clip : 12,
		shootFrames : [2,4],
		projOffsetX : 3,
		projOffsetY : -2,
		chargeable : false,
		secondammo : false
	}
>>>>>>> Stashed changes
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
	},
	cherrybomb :{
		wepname : "cherrybomb",
		subidlesprite : sCherry, // for pocket
		subdownsprite : sCherry,
		cooldown : 300,
		throwable : true
	},
	iceberglettuce :{
		wepname : "iceberglettuce",
		subidlesprite : sFrozenPea, // for pocket
		subdownsprite : sFrozenPea,
		cooldown : 300,
		throwable : false
	}
}




inventoryPrimary = [weaponstats.peashooter]
ammoPrimary = [weaponstats.peashooter.clip]
//inventoryPrimary = [weaponstats.puffshroom]
//ammoPrimary = [weaponstats.puffshroom.clip]
//inventorySecondary = [subweaponstats.potatomine,subweaponstats.torchwood]
inventorySecondary = [subweaponstats.cherrybomb]
cooldownSecondary = [0]//[0,0]

primary = 0
secondary = 0

mainamount = 8 //total amn of main weps

secondaryamount = 3; //total amnt of subs

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
	},
	flagzombie :
	{
		type : "flagzombie",
		hp : 8,
		armor : 0,
		idlespr : spr_zombieFlagIdle,
		movespr : spr_zombieFlagRun,
		attackspr : spr_zombieFlagWave,
		attacksprHB : spr_zombieFlagWave,
		spawnspr : spr_zombieFlagSpawn,
		spd : .9,
		onhead : "flag", //TEMPORARY UNTIL FLAG ZOMBIE SPRITES PUTIN
		behavior : "support",
		damage : 0,
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



