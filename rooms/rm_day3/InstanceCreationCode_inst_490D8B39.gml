
//////////////////////////////////////////////////
//LONG ERER ROOM

waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
flag = obj_Controller.enemystats.flagzombie
soldier = obj_Controller.enemystats.footsoldier
imp = obj_Controller.enemystats.imp


ds_list_add(waves,[0,obj_Enemy,0,0,flag]);
ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,100,basic]);
ds_list_add(waves,[0,obj_Enemy,0,100,basic]);
ds_list_add(waves,[0,obj_Enemy,0,300,basic]);



ds_list_add(waves,[1,obj_Enemy,0,0,imp]);
ds_list_add(waves,[1,obj_Enemy,0,100,basic]);
ds_list_add(waves,[1,obj_Enemy,0,200,basic]);
ds_list_add(waves,[1,obj_Enemy,0,300,basic]);
ds_list_add(waves,[1,obj_Enemy,0,400,buckethead]);



ds_list_add(waves,[2,obj_Enemy,0,0,flag]);
ds_list_add(waves,[2,obj_Enemy,400,10,flag]);
ds_list_add(waves,[2,obj_Enemy,700,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,700,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,600,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,350,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,300,0,conehead]);

//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 1504
spawn[0,1] = 832

spawn[1,0] = 1704
spawn[1,1] = 971
