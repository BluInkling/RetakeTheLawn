/// @description Insert description here
// You can write your code in this editor

switch (type){
	case "space":
		image_index = 0
		break;
	case "new":
		image_index = 1
		x = host.x
		y = host.y
		break
	case "continue":
		image_index = 2
		x = host.x+37
		y = host.y-25
		break
	case "reset":
		image_index = 3
		x = host.x+37
		y = host.y+27
		break
}









