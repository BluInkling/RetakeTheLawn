waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead

ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
ds_list_add(waves,[0,obj_Enemy,0,50,conehead]);
ds_list_add(waves,[0,obj_Enemy,0,90,conehead]);



ds_list_add(waves,[1,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,60,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,100,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,150,conehead]);

ds_list_add(waves,[2,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,30,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,60,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,200,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,200,buckethead]);


//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 1195
spawn[0,1] = 823

spawn[1,0] = 1469
spawn[1,1] = 662