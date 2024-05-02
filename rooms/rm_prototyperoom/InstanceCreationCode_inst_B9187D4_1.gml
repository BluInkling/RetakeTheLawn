waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
imp = obj_Controller.enemystats.imp

ds_list_add(waves,[0,obj_Enemy,0,0,basic]);
//ds_list_add(waves,[0,obj_Enemy,0,50,basic]);
ds_list_add(waves,[0,obj_Enemy,0,100,basic]);
/*
ds_list_add(waves,[0,obj_Enemy,0,100,imp]);
ds_list_add(waves,[0,obj_Enemy,0,100,imp]);
ds_list_add(waves,[0,obj_Enemy,0,100,imp]);
ds_list_add(waves,[0,obj_Enemy,0,100,imp]);
ds_list_add(waves,[0,obj_Enemy,0,100,imp]);
*/
ds_list_add(waves,[1,obj_Enemy,0,0,basic]);
//ds_list_add(waves,[1,obj_Enemy,0,30,basic]);
ds_list_add(waves,[1,obj_Enemy,0,60,basic]);
//ds_list_add(waves,[1,obj_Enemy,0,90,basic]);
ds_list_add(waves,[1,obj_Enemy,0,120,basic]);
//ds_list_add(waves,[1,obj_Enemy,0,150,basic]);

ds_list_add(waves,[2,obj_Enemy,0,0,basic]);
ds_list_add(waves,[2,obj_Enemy,0,10,basic]);
//ds_list_add(waves,[2,obj_Enemy,0,20,conehead]);
ds_list_add(waves,[2,obj_Enemy,0,60,conehead]);

//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 795
spawn[0,1] = 234

spawn[1,0] = 897
spawn[1,1] = 375