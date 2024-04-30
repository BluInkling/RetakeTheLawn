global.debug = false

global.fixedDropType = noone
global.fixedDrop = noone
global.fixedStat = 0 //Saving cooldown or ammo loaded to prevent spamming

font_add_enable_aa(false)
global.fnt_base = font_add("burbankbigcondensed_bold.otf",15,0,0,32,128)
global.fnt_bold = font_add("burbankbigcondensed_black.otf",15,0,0,32,128)
//font_add_enable_aa(true)

global.fnt_textSmall = font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!?',",true,1)
