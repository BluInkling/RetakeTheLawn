waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
soldier = obj_Controller.enemystats.footsoldier
flag = obj_Controller.enemystats.flagzombie
impA = obj_Controller.enemystats.imp

ds_list_add(waves,[0,obj_Enemy,0,0,flag]);
ds_list_add(waves,[0,obj_Enemy,0,50,flag]);
ds_list_add(waves,[0,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,50,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,50,conehead]);
ds_list_add(waves,[0,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[0,obj_Enemy,0,50,buckethead]);


ds_list_add(waves,[1,obj_Enemy,0,0,flag]);
ds_list_add(waves,[1,obj_Enemy,0,0,flag]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,50,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[1,obj_Enemy,0,50,soldier]);

ds_list_add(waves,[2,obj_Enemy,0,0,flag]);
ds_list_add(waves,[2,obj_Enemy,0,0,flag]);
ds_list_add(waves,[2,obj_Enemy,0,0,flag]);
ds_list_add(waves,[2,obj_Enemy,0,50,impA]);
ds_list_add(waves,[2,obj_Enemy,0,50,impA]);
ds_list_add(waves,[2,obj_Enemy,0,50,impA]);
ds_list_add(waves,[2,obj_Enemy,0,50,impA]);
ds_list_add(waves,[2,obj_Enemy,0,50,impA]);
ds_list_add(waves,[2,obj_Enemy,0,100,impA]);
ds_list_add(waves,[2,obj_Enemy,0,100,impA]);
ds_list_add(waves,[2,obj_Enemy,0,150,impA]);
ds_list_add(waves,[2,obj_Enemy,0,150,impA]);
ds_list_add(waves,[2,obj_Enemy,0,200,impA]);
ds_list_add(waves,[2,obj_Enemy,0,200,impA]);
ds_list_add(waves,[2,obj_Enemy,0,200,impA]);

ds_list_add(waves,[3,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[3,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[3,obj_Enemy,0,0,flag]);
ds_list_add(waves,[3,obj_Enemy,0,0,flag]);
ds_list_add(waves,[3,obj_Enemy,0,50,impA]);
ds_list_add(waves,[3,obj_Enemy,0,50,impA]);
ds_list_add(waves,[3,obj_Enemy,0,50,impA]);
ds_list_add(waves,[3,obj_Enemy,0,100,buckethead]);
ds_list_add(waves,[3,obj_Enemy,0,100,buckethead]);
ds_list_add(waves,[3,obj_Enemy,0,300,soldier]);
ds_list_add(waves,[3,obj_Enemy,0,100,basic]);
ds_list_add(waves,[3,obj_Enemy,0,150,basic]);
ds_list_add(waves,[3,obj_Enemy,0,100,basic]);
ds_list_add(waves,[3,obj_Enemy,0,200,basic]);
ds_list_add(waves,[3,obj_Enemy,0,100,basic]);
ds_list_add(waves,[3,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[3,obj_Enemy,0,0,buckethead]);

ds_list_add(waves,[4,obj_Enemy,0,400,impA]);
//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 528
spawn[0,1] = 448

spawn[1,0] = 480
spawn[1,1] = 512

spawn[2,0] = 576
spawn[2,1] = 512
/*
spawn[3,0] = 304
spawn[3,1] = 336

spawn[4,0] = 752
spawn[4,1] = 320
*/
spawn[3,0] = 176
spawn[3,1] = 560

spawn[4,0] = 336
spawn[4,1] = 640

spawn[5,0] = 720
spawn[5,1] = 640