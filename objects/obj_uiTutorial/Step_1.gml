/// @description Insert description here
// You can write your code in this editor

progressInputs = [
[keyboard_check(ord("W")),keyboard_check(ord("A")),keyboard_check(ord("S")),keyboard_check(ord("D"))],
[mouse_check_button(mb_left)]
]
//show_debug_message(alpha)
if active{
	if alpha < 3{
		alpha += alphaStep*3
	}
}else{
	if alpha > 0{
		alpha -= alphaStep
	}
}

if progress >= 0 && active{
	for (var i = 0;i<array_length(progressInputs[progress]);i++){
		if progressInputs[progress][i]{
			toNext = true
		}
	}
}
if toNext{
	toNext = false
	active = false
	alarm[0] = delay
}







