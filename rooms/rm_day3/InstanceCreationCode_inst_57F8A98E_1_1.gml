waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead

ds_list_add(waves,[0,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[0,obj_Enemy,0,50,conehead]);
ds_list_add(waves,[0,obj_Enemy,0,90,conehead]);



ds_list_add(waves,[1,obj_Enemy,0,0,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,100,buckethead]);
ds_list_add(waves,[1,obj_Enemy,0,100,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,150,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,150,buckethead]);

ds_list_add(waves,[2,obj_Enemy,0,0,basic]);
ds_list_add(waves,[2,obj_Enemy,0,0,basic]);
ds_list_add(waves,[2,obj_Enemy,0,0,basic]);
ds_list_add(waves,[2,obj_Enemy,0,0,basic]);
ds_list_add(waves,[2,obj_Enemy,0,0,basic]);
ds_list_add(waves,[2,obj_Enemy,0,100,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,100,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,300,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,300,buckethead]);


//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 159
spawn[0,1] = 816

spawn[1,0] = 448
spawn[1,1] = 817