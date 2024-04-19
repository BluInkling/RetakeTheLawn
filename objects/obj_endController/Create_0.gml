/// @description Insert description here
// You can write your code in this editor

paused = false;
paused_surf = -1;

function End(){
	paused = !paused;
	if paused == false{
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
	}
}






