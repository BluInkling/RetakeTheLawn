waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead

ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,50,basic]);
ds_list_add(waves,[0,obj_Enemy,0,300,buckethead]);



ds_list_add(waves,[1,obj_Enemy,0,30,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,40,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,50,conehead]);

ds_list_add(waves,[2,obj_Enemy,0,30,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,30,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,30,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,30,buckethead]);


//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 925
spawn[0,1] = 317

spawn[1,0] = 927
spawn[1,1] = 190