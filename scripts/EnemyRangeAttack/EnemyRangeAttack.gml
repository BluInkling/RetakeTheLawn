// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyRangeAttack(){
	if point_distance(x,y,obj_player.x,obj_player.y) < 180{
		with (egun){
			Shoot()
		}
	}
}
