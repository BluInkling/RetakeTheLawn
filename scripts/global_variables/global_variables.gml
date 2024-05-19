global.debug = false

global.fixedDropType = noone
global.fixedDrop = noone
global.fixedStat = 0 //Saving cooldown or ammo loaded to prevent spamming

font_add_enable_aa(false)
global.fnt_base = font_add("burbankbigcondensed_bold.otf",15,0,0,32,128)
global.fnt_bold = font_add("burbankbigcondensed_black.otf",15,0,0,32,128)
//font_add_enable_aa(true)

global.fnt_textSmall = font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!?':,./()+-",true,1)

//Player Inventory and Stats
global.roomOrder = [rm_prototyperoom,rm_day2,rm_day3,rm_dayFinal]
global.levelProgress = 0
global.playtime = 0

global.wallArmor = false
global.pumpArmor = false
global.primaryInventory = []
global.ammoPrimary = []
global.secondaryInventory = []
global.cooldownSecondary = []
global.primary = 0
global.secondary = 0

//global.test = []

//Tutorial Progress
global.hasDoneTutorial = false
global.hasNewMain = false
global.hasNewSub = false
global.hasCollected = false
