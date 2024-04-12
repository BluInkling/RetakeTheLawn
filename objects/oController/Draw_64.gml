draw_text(0,0,"Main weapon: " + string(mainweapon))
draw_text(0,32,"Sub weapon: " + string(subweapon))


draw_sprite(modernpacket,0,1155,640)
if (mainweapon == "peashooter") draw_sprite(sPeashooter,0,1230,695)
if (mainweapon == "repeater") draw_sprite(sRepeater,0,1230,695)


draw_sprite(spocket,0,190,5)
if ((subweapon == "torchwood") && (oSubWeapon.subavailable==true)) draw_sprite(sTorchvood,0,220,35)
if (subweapon == "potatomine") draw_sprite(sPotatomin,0,220,35)
//if (mainweapon == "repeater") draw_sprite(sRepeater,0,1230,695)




