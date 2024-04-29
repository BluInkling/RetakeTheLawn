waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
soldier = obj_Controller.enemystats.footsoldier
flag = obj_Controller.enemystats.flagzombie

ds_list_add(waves,[0,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[0,obj_Enemy,0,200,buckethead]);
ds_list_add(waves,[0,obj_Enemy,0,400,buckethead]);



ds_list_add(waves,[1,obj_Enemy,0,0,basic]);
ds_list_add(waves,[1,obj_Enemy,0,50,basic]);
ds_list_add(waves,[1,obj_Enemy,0,100,basic]);
ds_list_add(waves,[1,obj_Enemy,0,130,flag]);
ds_list_add(waves,[1,obj_Enemy,0,150,basic]);
ds_list_add(waves,[1,obj_Enemy,0,200,basic]);
ds_list_add(waves,[1,obj_Enemy,0,250,basic]);
ds_list_add(waves,[1,obj_Enemy,0,300,basic]);


ds_list_add(waves,[2,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,100,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,150,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,350,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,350,buckethead]);

//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 715
spawn[0,1] = 1325

spawn[1,0] = 621
spawn[1,1] = 1504