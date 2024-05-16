/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(moveSpd,moveDir)
y += lengthdir_y(moveSpd,moveDir)

if place_meeting(x,y,obj_vaseHB){
	var vase = instance_nearest(x,y,obj_vase)
	if !vase.breaking{
		vase.Break()
		audio_play_sound(vase_breaking,1,false,0.9,0,random_range(0.8,1.2))
	}
}

if place_meeting(x,y,obj_wall){
	Destroy(instance_nearest(x,y,obj_wall))
}

if place_meeting(x,y,obj_zombieHitbox){
	var enemy = instance_nearest(x,y,obj_zombieHitbox).host
	PlaySoundSplat()
	if piercing{
		if !array_contains(piercingList,enemy){
			enemy.Hit(damage,type,moveDir,flaming)
			array_push(piercingList,enemy)
		}
		//show_debug_message(string(enemy.hp+enemy.armor)+" = "+string(damage))
		if type == obj_Controller.projstats.cabbage && array_length(piercingList) > 1 && damage/2 >= enemy.hp+enemy.armor{
			audio_play_sound(snd_killDing,4,0,0.25)
		}
		if type.mainsprite == spr_butter{
			type = obj_Controller.projstats.kernel
			sprite_index = type.mainsprite //sets sprite to mainweapons normal proj sprite
			splat = type.splatsprite
			damage = type.damage
			dispSpr = type.dispsprite
			piercing = false
		}
	}else{
		if !array_contains(piercingList,enemy){
			enemy.Hit(damage,type,moveDir,flaming)
			Destroy()
		}
	}
	//show_debug_message("Enemy hit!")
}

//lil fun easter egg
if place_meeting(x,y,obj_pickupable){
	var col = instance_nearest(x,y,obj_pickupable)
	if !is_undefined(col.type){
		if col.type.wepname =="torchwood" && !flaming{
			flaming = true
			image_blend = c_orange
			damage += 2
			flamePS = part_system_create(ps_fire)
		}
	}
}

if disp && sprite_index == dispSpr{
	//show_debug_message(image_index)
	sprite_index = dispSpr
	if image_index > image_number-1{// || image_number == 1{
		Destroy()
	}
}
if flaming && flamePS != noone && part_system_exists(flamePS){
	part_system_position(flamePS,x,y)
}


