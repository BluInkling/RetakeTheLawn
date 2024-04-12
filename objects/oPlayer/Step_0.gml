if (hascontrol)
{
	
	
	//get player input
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	//key_jump = keyboard_check_pressed(vk_space);
	

	switch (state){
		case PLAYERSTATE.FREE: PlayerState_Free(); break;

	
	}

} else
{
	key_right = 0;
	key_jump = 0;
	key_attack = 0;
	key_left = 0;
	
}
















