if !fixedDist{
	if dist > maxDist{
		targetX = x+lengthdir_x(maxDist,dir)
		targetY = y+lengthdir_y(maxDist,dir)
	}else{
		targetX = x+lengthdir_x(dist,dir)
		targetY = y+lengthdir_y(dist,dir)
	}
}else{
	targetX = x+lengthdir_x(maxDist,dir)
	targetY = y+lengthdir_y(maxDist,dir)
}






