/// @description Insert description here
// You can write your code in this editor

text = ""

alpha = 0
alphaStep = 0.05

center = camera_get_view_width(view_camera[0])/2
width = 100
height = 12

progress = -1
delay = 120
active = false
toNext = false
progressText = ["Use WASD to Move","Move the Mouse to Aim, Left click to shoot"]
progressInputs = [
[keyboard_check(ord("W")),keyboard_check(ord("A")),keyboard_check(ord("S")),keyboard_check(ord("D"))],
[mouse_check_button(mb_left)]
]

alarm[0] = 1
function NextProgress(){
	progress += 1
	if progress >= array_length(progressInputs){
		instance_destroy()
		show_debug_message("STOP")
	}else{
		active = true
		text = progressText[progress]
		width = string_width(text)/2.9//*3
	}
}








