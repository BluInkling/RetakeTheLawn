/// @description Insert description here
// You can write your code in this editor
options = irandom_range(2,3)
optionList = []
for (var i=0;i<options;++i){
	var base = instance_create_layer(x-(20*(options-1))+40*i,y,"Walls",obj_zenBase)
	base.host = self
}

function Collapse(){
	for (var i=0;i<array_length(optionList);++i){
		part_system_destroy(optionList[i].part)
		instance_destroy(optionList[i])
	}
	instance_destroy()
}







