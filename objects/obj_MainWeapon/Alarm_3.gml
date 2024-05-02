/// @description fumeshroom shot

<<<<<<< Updated upstream
show_debug_message("shot")
ShootProjectile()
if (bubblesShot <= 3){
	alarm_set(3,5)
	bubblesShot ++;
=======
//show_debug_message("shot")
if main.wepname == "fumeshroom"{
	
	ShootProjectile()
	if (bubblesShot == 0) PlaySound("");
	if (bubblesShot <= 3){
		alarm_set(3,5)
		bubblesShot ++;
	}
}else{
	bubblesShot = 0
>>>>>>> Stashed changes
}












