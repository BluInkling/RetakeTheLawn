/// @description more test

draw_set_font(fnt1)
//if (alarm[0] > 0) draw_text(x,y-55,"Reloading...")
if (alarm[0] > 0) draw_text_transformed(x,y-55,"Reloading...",0.15,0.15,0)

image_yscale = obj_player.xDir
image_angle = obj_playerArms.handsAngle
x = obj_playerArms.handsX + obj_player.xVel
y = obj_playerArms.handsY + obj_player.yVel
draw_self()











