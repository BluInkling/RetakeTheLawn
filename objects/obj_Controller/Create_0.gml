
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
		splatsprite : spr_butterDisp,
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
		movespeed : 4,
		lifetime: 8,//20,
		damage : 1.25,
	},
	smallbubble :
	{
		mainsprite : spr_bubbleSmall,//spr_bubbleSmall,
		splatsprite : spr_bubbleSmallDisp,
		dispsprite : spr_bubbleSmallDisp,
		movespeed : 6,
		lifetime: 10,//20,
		damage : 0.75,
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
		secondammo : false,
		showname : "Peashooter",
		desc : "Reliable all-arounder"
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
		secondammo : false,
		showname : "Repeater",
		desc : "Fires two peas at a time!"
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
		secondammo : false,
		showname : "Snow Pea",
		desc : "Shoots frozen peas that slow zombies"
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
		secondammo : false,
		showname : "Threepeater",
		desc : "Fires three peas at a time in a wide spread"
	},
	cabbagepult : 
	{
		wepname : "cabbagepult",
		mainidlesprite : spr_cabbagePultIdle,
		mainreloadsprite : spr_cabbagePultReload,
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
		secondammo : false, //FOR USE IN THE FUME SHROOM AND KERNEL PULT TO DEFINE SECONDARY AMMO AND AMMO TYPE/CHANCE
		showname : "Cabbage-pult",
		desc : "Chargeable, fully charged shots pierce enemies"
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
		secondammo : projstats.butter, //FOR USE IN THE FUME SHROOM AND KERNEL PULT TO DEFINE SECONDARY AMMO AND AMMO TYPE/CHANCE
		showname : "Kernel-pult",
		desc : "Chargeable, fully charged shots butter enemies"
	},	
	fumeshroom : 
	{
		wepname : "fumeshroom",
		mainidlesprite : spr_fumeshroomIdle,
		mainreloadsprite : spr_fumeshroomReload,
		mainshootsprite : spr_fumeshroomShoot,
		projtype : projstats.bigbubble,
		accuracy : 20,
		clip : 5,
		shootFrames : [5],
		projOffsetX : 2,
		projOffsetY : -2,
		chargeable : false,
		secondammo : projstats.smallbubble,
		showname : "Fume-shroom",
		desc : "Shoots lots of bubbles in a small range, pierceing enemies"
	},
	puffshroom : 
	{
		wepname : "puffshroom",
		mainidlesprite : spr_puffshroomIdle,
		mainreloadsprite : spr_puffshroomReload,
		mainshootsprite : spr_puffshroomShoot2,
		projtype : projstats.smallbubble,
		accuracy : 12,
		clip : 12,
		shootFrames : [0,2],
		projOffsetX : 3,
		projOffsetY : -2,
		chargeable : false,
		secondammo : false,
		showname : "Puff-shrooms",
		desc : "Dual-wield, rapidly shoots bubbles in a small range"
	},
	gatlingpea : 
	{
		wepname : "gatlingpea",
		mainidlesprite : spr_gatlingPeaIdle,
		mainreloadsprite : spr_gatlingPeaReload,
		mainshootsprite : spr_gatlingPeaShoot,
		projtype : projstats.pea,
		accuracy : 25,
		clip : 8,
		shootFrames : [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],
		projOffsetX : 2,
		projOffsetY : -5,
		chargeable : false,
		secondammo : false,
		showname : "Gatling Pea",
		desc : "Shoots lots of peas in bursts, but unreliable at long range"
	},
}

subweaponstats = {
	potatomine :{
		wepname : "potatomine",
		subidlesprite : spr_potatomineIdle, // for pocket
		subdownsprite : spr_potatomineThrow,
		cooldown : 1200,
		throwable : true,
		showname : "Potato Mine",
		desc : "Throws three mines onto the field which explode on contact with enemies"
	},
	torchwood :{
		wepname : "torchwood",
		subidlesprite : spr_torchwoodIdle, // for pocket
		subdownsprite : spr_torchwoodActivate,
		cooldown : 600,
		throwable: false,
		showname : "Torchwood",
		desc : "Empowers the primary plant to shoot flaming projectiles"
	},
	cocoabean :{
		wepname : "cocoabean",
		subidlesprite : spr_cocoaBeanIdle, // for pocket
		subdownsprite : spr_cocoaBeanActivate,
		cooldown : 800,
		throwable: false,
		showname : "Cocoa Bean",
		desc : "Doubles the primary plant's speed by for a time"
	},
	cherrybomb :{
		wepname : "cherrybomb",
		subidlesprite : spr_cherryBombIdle, // for pocket
		subdownsprite : spr_cherryBombIdle,
		cooldown : 600,
		throwable : true,
		showname : "Cherry Bomb",
		desc : "Throws a Cherry Bomb that explodes on contact"
	},
	iceberglettuce :{
		wepname : "iceberglettuce",
		subidlesprite : spr_iceshroomIdle, // for pocket
		subdownsprite : spr_iceshroomIdle,
		cooldown : 400,
		throwable : false,
		showname : "Ice-shroom",
		desc : "Throws an Ice-shroom that slows enemies on contact"
	}
}

if array_length(global.primaryInventory) == 0{
	global.primaryInventory = [weaponstats.peashooter]
	global.ammoPrimary = [weaponstats.peashooter.clip]
	global.secondaryInventory = [subweaponstats.torchwood]
	global.cooldownSecondary = [0]
}

function InvSetup(_prim,_ammo,_sec,_cool){ // DO NOT TOUCH, I DON'T KNOW WHY THIS WORKS BUT IT DOES
	var test = [0]
	array_copy(test,0,_prim,0,array_length(_prim))
	inventoryPrimary = test
	var test2 = [0]
	array_copy(test2,0,_ammo,0,array_length(_ammo))
	ammoPrimary = test2
	var test3 = [0]
	array_copy(test3,0,_sec,0,array_length(_sec))
	inventorySecondary = test3
	var test4 = [0]
	array_copy(test4,0,_cool,0,array_length(_cool))
	cooldownSecondary = test4
}
InvSetup(global.primaryInventory,global.ammoPrimary,global.secondaryInventory,global.subCooldown)
show_debug_message(inventoryPrimary)
//show_debug_message(inventoryPrimary)
primary = 0
secondary = 0

mainamount = 9 //total amn of main weps
secondaryamount = 5; //total amnt of subs

mainInventorySpace = 4
subInventorySpace = 2

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
		idlesprH : spr_zombieNoHandIdle,
		movesprH : spr_zombieNoHandRun,
		attacksprH : spr_zombieNoHandAttack,
		dyingspr: spr_zombieDying,
		deadspr: spr_zombieDead,
		headspr: spr_zombieHead,
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
		idlesprH : spr_zombieNoHandIdle,
		movesprH : spr_zombieNoHandRun,
		attacksprH : spr_zombieNoHandAttack,
		dyingspr: spr_zombieDying,
		deadspr: spr_zombieDead,
		headspr: spr_zombieHead,
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
		idlesprH : spr_zombieNoHandIdle,
		movesprH : spr_zombieNoHandRun,
		attacksprH : spr_zombieNoHandAttack,
		dyingspr: spr_zombieDying,
		deadspr: spr_zombieDead,
		headspr: spr_zombieHead,
		spd : .5,
		onhead : "bucket",
		behavior : "melee"
	},
	footsoldier :
	{
		type : "footsoldier",
		hp : 4,
		armor : 6,
		idlespr : spr_zombieIdleNoArms,
		movespr : spr_zombieRunNoArms,
		attackspr : spr_zombieAttack,
		attacksprHB : spr_zombieAttackHB,
		spawnspr : spr_zombieSpawn,
		idlesprH : spr_zombieIdleNoArms,
		movesprH : spr_zombieRunNoArms,
		attacksprH : spr_zombieNoHandAttack,
		dyingspr: spr_zombieDying,
		deadspr: spr_zombieDead,
		headspr: spr_zombieHead,
		spd : .5,
		onhead : "armyhat",
		behavior : "ranged",
		damage : 2,
		projspd : 5,
		weaponspr : spr_zombieGunIdle,
		projspr : spr_zombieBullet
	},
	flagzombie :
	{
		type : "flagzombie",
		hp : 8,
		armor : 0,
		idlespr : spr_zombieFlagIdle,
		movespr : spr_zombieFlagRun,
		attackspr : spr_zombieFlagWave,
		attacksprHB : spr_zombieAttackHB,
		spawnspr : spr_zombieFlagSpawn,
		idlesprH : spr_zombieNoHandFlagIdle,
		movesprH : spr_zombieNoHandFlagRun,
		attacksprH : spr_zombieNoHandFlagWave,
		dyingspr: spr_zombieDying,
		deadspr: spr_zombieDead,
		headspr: spr_zombieHead,
		spd : .9,
		onhead : "none", //TEMPORARY UNTIL FLAG ZOMBIE SPRITES PUTIN
		behavior : "support",
		damage : 0,
	},
	imp :
	{
		type : "imp",
		hp : 4,
		armor : 0,
		idlespr : spr_impIdle,
		movespr : spr_impRun,
		attackspr : spr_impAttack,
		attacksprHB : spr_impAttack,//HB,
		spawnspr : spr_impSpawn,
		idlesprH : spr_impIdle,
		movesprH : spr_impRun,
		attacksprH : spr_impAttack,
		dyingspr: spr_impDying,
		deadspr: spr_impDead,
		headspr: spr_impHead,
		spd : 1.5,
		onhead : "none",
		behavior : "melee"
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

//Spawn Managers
instance_create_depth(0,0,0,obj_devManager)
instance_create_depth(0,0,0,obj_endController)
instance_create_depth(0,0,0,obj_pauseController)
instance_create_depth(0,0,0,obj_camera)

//UI
instance_create_depth(0,0,0,obj_uiHeart)
instance_create_depth(0,0,0,obj_uiMainPocket)
instance_create_depth(0,0,0,obj_uiSubPocket)
instance_create_depth(0,0,0,obj_uiPickupDesc)
instance_create_depth(0,0,0,obj_uiTutorial)
