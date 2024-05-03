/// @description Insert description here
// You can write your code in this editor




//graveSprite = spr_doorsH
//spawnSprites = [spr_graveASpawn,spr_graveBSpawn,spr_graveCSpawn,spr_graveDSpawn]
//breakSprites = [spr_graveABreak,spr_graveBBreak,spr_graveCBreak,spr_graveDBreak]

style = 0
if vertical{
	baseSpr = spr_doorsV
	spawnSpr = spr_doorESpawn
	breakSpr = spr_doorEBreak
}else{
	//style = irandom_range(0,1)
	baseSpr = spr_doorsH
	spawnSpr = spr_doorASpawn
	breakSpr = spr_doorABreak
}

spawning = false
breaking = false
inactive = true

//sprite_index = spr_doorsH[style]
//spawnSprites[style]










