/// @description Insert description here
// You can write your code in this editor

if alpha > 0{
	alpha -= alphaStep
	obj_uiTutorial.active = true
	obj_uiTutorial.text = "Use SPACE to pick up items" 
	obj_uiTutorial.width = string_width(obj_uiTutorial.text)/2.5//*3
	if alpha <= 0{
		obj_uiTutorial.active = false
	}
}









