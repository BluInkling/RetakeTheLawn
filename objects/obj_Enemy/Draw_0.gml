/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
<<<<<<< Updated upstream


<<<<<<< Updated upstream
draw_self()

=======

draw_self()
>>>>>>> Stashed changes
=======
draw_self();

>>>>>>> Stashed changes
event_inherited();

draw_set_font(fnt1)
draw_text_transformed(x,y+16,"Health: " + string(hp) + "Type: " + string(enemyType.type),.20,.20,0)


<<<<<<< Updated upstream
=======
//draw_circle_color(x,y,radius,c_yellow,c_yellow,false)
//draw_circle_color(x,y,attackradius,c_red,c_red,false)

//if collision_line(x,y-16,obj_player.x,obj_player.y,obj_wall,0,0){
//	draw_line_color(x,y-16,obj_player.x,obj_player.y,c_red,c_red)
//}else{
//	draw_line_color(x,y-16,obj_player.x,obj_player.y,c_green,c_lime)
//}

<<<<<<< Updated upstream
<<<<<<< Updated upstream
draw_self()
>>>>>>> Stashed changes
=======


>>>>>>> Stashed changes
=======
//draw_self()
//If drawself is after event_inherit the flahs doesnt work

if hasHat{
	hatFrame = armor <= enemyType.armor/2
	if sprite_index == spr_zombieIdle{
		hatX = obj_Controller.zombieHeadAnims.idle.x[image_index]*image_xscale
		hatY = obj_Controller.zombieHeadAnims.idle.y[image_index]
	}else if sprite_index == spr_zombieAttack{
		hatX = obj_Controller.zombieHeadAnims.attack.x[image_index]*image_xscale
		hatY = obj_Controller.zombieHeadAnims.attack.y[image_index]
	}else if sprite_index == spr_zombieRun{
		hatX = obj_Controller.zombieHeadAnims.run.x[image_index]*image_xscale
		hatY = obj_Controller.zombieHeadAnims.run.y[image_index]
	}
	draw_sprite_ext(hatSpr,hatFrame,x+hatX,y+hatY,image_xscale,1,0,c_white,1)
	//show_debug_message("HAS HAT")
}

>>>>>>> Stashed changes
