
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
		projOffsetY : -5
		
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
		projOffsetY : -5
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

inventoryPrimary = [weaponstats.peashooter,weaponstats.repeater,weaponstats.snowpea,weaponstats.threepeater]
ammoPrimary = [weaponstats.peashooter.clip,weaponstats.repeater.clip,weaponstats.snowpea.clip,weaponstats.threepeater.clip]

inventorySecondary = [subweaponstats.potatomine,subweaponstats.torchwood]
cooldownSecondary = [0,0]
primary = 0
secondary = 0

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
	}
}











