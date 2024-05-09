//////////////////////////////////////////////////
//J POOL ROOM

waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
flag = obj_Controller.enemystats.flagzombie
soldier = obj_Controller.enemystats.footsoldier
imp = obj_Controller.enemystats.imp

ds_list_add(waves,[0,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[0,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,100,basic]);
ds_list_add(waves,[0,obj_Enemy,0,100,basic]);
ds_list_add(waves,[0,obj_Enemy,0,300,soldier]);


ds_list_add(waves,[1,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,200,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,400,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,400,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,0,imp]);
ds_list_add(waves,[1,obj_Enemy,0,500,imp]);
ds_list_add(waves,[1,obj_Enemy,0,500,imp]);
ds_list_add(waves,[1,obj_Enemy,0,500,imp]);


ds_list_add(waves,[2,obj_Enemy,0,400,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,150,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,0,conehead]);

//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 2406
spawn[0,1] = 158

spawn[1,0] = 2037
spawn[1,1] = 333



