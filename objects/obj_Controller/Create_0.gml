weaponstats = {
	peashooter : 
	{
		wepname : "peashooter",
		mainidlesprite : spr_peashooterIdle,
		mainreloadsprite : spr_peashooterReload,
		mainshootsprite : spr_peashooterShoot,
		projsprite : spr_pea,
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
		projsprite : spr_frozenpea,
		movespeed : 7,
		lifetime: 20,
		accuracy : 7,
		clip : 4,
		damage : 2,
		shootFrames : [1],
		projOffsetX : 2,
		projOffsetY : -5
	},
		
}

//mainweapon = "peashooter"
mainweapon = weaponstats.snowpea

subweapon = "torchwood"
//subweapon = "torchwood"

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










