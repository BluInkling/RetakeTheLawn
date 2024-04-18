/// @description Insert description here
// You can write your code in this editor
event_inherited()

maxhp = 10
hp = maxhp;

xInput = 0
yInput = 0

xVel = 0
yVel = 0
moveSpd = 1.5

xDir = 1 //for sprite flipping

activeWeapon = obj_primary
//instance_create_layer(x,y,"Instances",obj_playerArms)

//States
moving = false

//Animations
animIdle = spr_daveIdle
animRun = spr_daveRun

hascontrol = true;



instance_create_layer(0,0,"Player",obj_Controller)
instance_create_layer(0,0,"Gun",obj_MainWeapon)
instance_create_layer(0,0,"Player",obj_SubWeapon)


/*
//Outline Shader
upixelH = shader_get_uniform(shd_outline,"pixelH")
upixelW = shader_get_uniform(shd_outline,"pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0))
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0))

var lay_id = layer_get_id("Player");
layer_shader(lay_id,shd_outline);
//layer_shader(layer_get_id("Gun"),shd_outline);
shader_set(shd_outline)
shader_set_uniform_f(upixelW,texelW)
shader_set_uniform_f(upixelH,texelH)
shader_reset()
*/