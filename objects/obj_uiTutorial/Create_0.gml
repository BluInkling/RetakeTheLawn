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
progressText = ["Use WASD to Move","Move the MOUSE to aim, LEFT CLICK to shoot","Use RIGHT CLICK to activate the secondary plant"]
progressInputs = [
[keyboard_check(ord("W")),keyboard_check(ord("A")),keyboard_check(ord("S")),keyboard_check(ord("D"))],
[mouse_check_button(mb_left)],
[mouse_check_button(mb_right)]
]

alarm[0] = 1
function NextProgress(){
	if !global.hasDoneTutorial{
		progress += 1
		if progress >= array_length(progressInputs){
			show_debug_message(array_length(progressInputs))
			global.hasDoneTutorial = true
		}else{
			active = true
			text = progressText[progress]
			width = string_width(text)/2.7//*3
		}
	}
}

function NewMain(){
	active = true
	text = "Use Q or SCROLL to switch primary plants " 
	width = string_width(text)/2.5//*3
}

function NewSub(){
	active = true
	text = "Use E or SHIFT to switch secondary plants " 
	width = string_width(text)/2.5//*3
}

function Collect(){
	active = true
	text = "Use SPACE to pick up items" 
	width = string_width(text)/2.5//*3
}





