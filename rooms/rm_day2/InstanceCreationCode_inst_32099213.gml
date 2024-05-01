waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
soldier = obj_Controller.enemystats.footsoldier
flag = obj_Controller.enemystats.flagzombie
imp = obj_Controller.enemystats.imp

ds_list_add(waves,[0,obj_Enemy,0,0,flag]);
ds_list_add(waves,[0,obj_Enemy,0,50,flag]);
ds_list_add(waves,[0,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,50,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,50,imp]);
ds_list_add(waves,[0,obj_Enemy,0,50,imp]);
ds_list_add(waves,[0,obj_Enemy,0,50,imp]);
ds_list_add(waves,[0,obj_Enemy,0,50,conehead]);
ds_list_add(waves,[0,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[0,obj_Enemy,0,50,buckethead]);



ds_list_add(waves,[1,obj_Enemy,0,0,flag]);
ds_list_add(waves,[1,obj_Enemy,0,0,flag]);
ds_list_add(waves,[1,obj_Enemy,0,0,flag]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);


ds_list_add(waves,[2,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,0,flag]);
ds_list_add(waves,[2,obj_Enemy,0,0,flag]);
ds_list_add(waves,[0,obj_Enemy,0,50,imp]);
ds_list_add(waves,[0,obj_Enemy,0,50,imp]);
ds_list_add(waves,[0,obj_Enemy,0,50,imp]);
ds_list_add(waves,[2,obj_Enemy,0,100,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,100,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,300,soldier]);

//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 1427
spawn[0,1] = 256

spawn[1,0] = 1736
spawn[1,1] = 417

spawn[1,0] = 1117
spawn[1,1] = 441