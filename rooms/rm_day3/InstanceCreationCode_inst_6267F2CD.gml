//FOREST

waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
flag = obj_Controller.enemystats.flagzombie
soldier = obj_Controller.enemystats.footsoldier
imp = obj_Controller.enemystats.imp

ds_list_add(waves,[0,obj_Enemy,0,0,imp]);
ds_list_add(waves,[0,obj_Enemy,0,100,imp]);
ds_list_add(waves,[0,obj_Enemy,0,200,imp]);
ds_list_add(waves,[0,obj_Enemy,0,300,imp]);
ds_list_add(waves,[0,obj_Enemy,0,50,basic]);


ds_list_add(waves,[1,obj_Enemy,0,0,basic]);
ds_list_add(waves,[1,obj_Enemy,0,200,imp]);
ds_list_add(waves,[1,obj_Enemy,0,200,imp]);
ds_list_add(waves,[1,obj_Enemy,0,0,basic]);



//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 1692
spawn[0,1] = 335
