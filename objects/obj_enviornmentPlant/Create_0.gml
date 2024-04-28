

type = choose("sunflower","wallnut","pumpkin")

hasSunned = false


if type == "sunflower"{
	sprite_index = spr_sunflower
	//alarm[0] = 100
}
if type == "wallnut"{
	sprite_index = spr_wallnut
}
if type == "pumpkin"{
	sprite_index = spr_pumpkin
}

//Outline Shader
draw = false
upixelH = shader_get_uniform(shd_outline,"pixelH")
upixelW = shader_get_uniform(shd_outline,"pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0))
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0))







