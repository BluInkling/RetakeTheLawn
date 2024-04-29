waves = ds_list_create();
//[wave,object,spawnpoint(doesnt matter),delay,enemytype]
basic = obj_Controller.enemystats.basic
conehead = obj_Controller.enemystats.conehead
buckethead = obj_Controller.enemystats.buckethead
soldier = obj_Controller.enemystats.footsoldier
flag = obj_Controller.enemystats.flagzombie

ds_list_add(waves,[0,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,50,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,100,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,150,soldier]);
ds_list_add(waves,[0,obj_Enemy,0,200,soldier]);




ds_list_add(waves,[1,obj_Enemy,0,0,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,150,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,250,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,300,conehead]);
ds_list_add(waves,[1,obj_Enemy,0,320,buckethead]);


ds_list_add(waves,[2,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,0,soldier]);
ds_list_add(waves,[2,obj_Enemy,0,300,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,300,buckethead]);
ds_list_add(waves,[2,obj_Enemy,0,300,buckethead]);

//locations to spawn gravestones in room
//x
//y
spawn[0,0] = 1672
spawn[0,1] = 746

spawn[1,0] = 1370
spawn[1,1] = 770