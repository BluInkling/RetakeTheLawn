// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FadeOut(_next){
	if !instance_exists(obj_fadeIn){
		var wall = instance_create_depth(x,y,-10000,obj_fadeOut)
		wall.next = _next
	}
}