/// @description Insert description here
// You can write your code in this editor

state = "continue"

function ChangeMenu(_state){
	state = _state
	with obj_menuButtonLarge{instance_destroy()}
	with obj_menuButtonSmall{instance_destroy()}
	with obj_menuPortraitMain{instance_destroy()}
	with obj_menuPortraitMini{instance_destroy()}
	switch (state){
		case "new":
			with instance_create_depth(-1000,0,-100,obj_menuButtonLarge){
				type = "new"
			}
			break
		case "continue":
			with instance_create_depth(-1000,0,-100,obj_menuButtonLarge){
				type = "continue"
			}
			with instance_create_depth(-1000,0,-100,obj_menuButtonLarge){
				type = "reset"
			}
			instance_create_depth(-1000,0,-100,obj_menuPortraitMain)
			var counter = 0
			var bigCounter = 0
			var toSecondary = false
			for (var i = 0; i < 3; i++){
				var port = instance_create_depth(-1000,0,-100,obj_menuPortraitMini)
				port.index = i
				if !toSecondary{
					if array_length(global.primaryInventory)-1 > bigCounter{
						counter += 1
						bigCounter += 1
						if counter == global.primary{
							counter += 1
							bigCounter += 1
						}
						if counter > array_length(global.primaryInventory)-1{
							counter = 0
						}
						port.vis = global.primaryInventory[counter].mainidlesprite
					}else{
						toSecondary = true
						counter = -1
					}
				}
				if toSecondary{
					if array_length(global.secondaryInventory)-1 > counter{
						counter += 1
						port.vis = global.secondaryInventory[counter].subidlesprite
					}
				}
				//port.visual = 
			}
			break
		case "sure":
			with instance_create_depth(-1000,0,-100,obj_menuButtonSmall){
				type = "yes"
			}
			with instance_create_depth(-1000,0,-100,obj_menuButtonSmall){
				type = "no"
			}
			break
		case "done":
			with instance_create_depth(-1000,0,-100,obj_menuButtonSmall){
				type = "okay"
			}
			break
	}
	
}
if !global.hasDoneTutorial && global.levelProgress == 0{
	ChangeMenu("new")
}else{
	ChangeMenu("continue")
}





