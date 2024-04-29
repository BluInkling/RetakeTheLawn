waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
soldier = obj_Controller.enemystats.footsoldier
flag = obj_Controller.enemystats.flagzombie

ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,50,basic]);
ds_list_add(waves,[0,obj_Enemy,0,100,basic]);
ds_list_add(waves,[0,obj_Enemy,0,150,basic]);



ds_list_add(waves,[1,obj_Enemy,0,0,basic]);
ds_list_add(waves,[1,obj_Enemy,0,50,basic]);
ds_list_add(waves,[1,obj_Enemy,0,50,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,90,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,90,conehead]);


ds_list_add(waves,[2,obj_Enemy,0,0,basic]);
ds_list_add(waves,[2,obj_Enemy,0,70,basic]);
ds_list_add(waves,[2,obj_Enemy,0,100,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,130,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,230,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,230,conehead]);

//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 315
spawn[0,1] = 640

spawn[1,0] = 563
spawn[1,1] = 648

spawn[2,0] = 304
spawn[2,1] = 849

spawn[3,0] = 542
spawn[3,1] = 848