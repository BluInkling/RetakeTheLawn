/// @description Insert description here
// You can write your code in this editor

aimAngle = 0
activePlant = noone

/*
//Rotation Variables
handOffsetX = 17
handOffsetY = 0

handOffsetAngle = point_direction(0,0,handOffsetX,handOffsetY)
handsDistance = sqrt(sqr(handOffsetX)+sqr(handOffsetY)) //Pythagoren theorum
*/
//Hand Animation
//diffAngle=0
armAngle = 0
handsAngle = 0
handsDistance = 17
handsX = 0
handsY = 0

//Outline Shader
upixelH = shader_get_uniform(shd_outline,"pixelH")
upixelW = shader_get_uniform(shd_outline,"pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0))
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0))