//LONG POOL ROOM

waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
flag = obj_Controller.enemystats.flagzombie
soldier = obj_Controller.enemystats.footsoldier
imp = obj_Controller.enemystats.imp

ds_list_add(waves,[0,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,100,conehead]);
ds_list_add(waves,[0,obj_Enemy,0,100,conehead]);
ds_list_add(waves,[0,obj_Enemy,0,100,conehead]);


ds_list_add(waves,[1,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,10,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,0,flag]);
ds_list_add(waves,[1,obj_Enemy,0,90,basic]);
ds_list_add(waves,[1,obj_Enemy,0,120,basic]);
ds_list_add(waves,[1,obj_Enemy,0,150,basic]);
ds_list_add(waves,[1,obj_Enemy,0,200,buckethead]);


ds_list_add(waves,[2,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,300,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,20,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,100,flag]);
ds_list_add(waves,[2,obj_Enemy,0,150,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,200,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,200,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,200,conehead]);

//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 846
spawn[0,1] = 229

spawn[1,0] = 1342
spawn[1,1] = 357

spawn[2,0] = 1353
spawn[2,1] = 236

spawn[3,0] = 830
spawn[3,1] = 359

