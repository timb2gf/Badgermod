Game.SelectMission("bm1");

Game.SetMissionResetPlayerInCar("bm1_carstart");
Game.SetDynaLoadData("l1z7.p3d;l1r6.p3d;l1r7.p3d;");

Game.UsePedGroup(5); 

Game.AddStage(0);
	Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_08.p3d" );
	Game.SetStageMessageIndex(12);
	Game.AddObjective("getin");
		Game.SetObjTargetVehicle("current");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(16); 
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(272);
	Game.SetHUDIcon( "cat" );
	Game.AddObjective("delivery");
		Game.AddCollectible("bm1_cat","cat");
		Game.AddCollectible("bm1_cat1","cat");
		Game.AddCollectible("bm1_cat2","cat");
		Game.AddCollectible("bm1_cat3","cat");
		Game.AddCollectible("bm1_cat4","cat");
		Game.AddCollectible("bm1_cat5","cat");
		Game.AddCollectible("bm1_cat6","cat");
		Game.AddCollectible("bm1_cat7","cat");
		Game.AddCollectible("bm1_cat8","cat");
		Game.AddCollectible("bm1_cat9","cat");
		Game.AddCollectible("bm1_cat10","cat");
		Game.AddCollectible("bm1_cat11","cat");
		Game.AddCollectible("bm1_cat12","cat");
		Game.AddCollectible("bm1_cat13","cat");
		Game.AddCollectible("bm1_cat14","cat");
		Game.AddCollectible("bm1_cat15","cat");
		Game.AddCollectible("bm1_cat16","cat");
		Game.AddCollectible("bm1_cat17","cat");
		Game.AddCollectible("bm1_cat18","cat");
		Game.AddCollectible("bm1_cat19","cat");
		Game.AddCollectible("bm1_cat20","cat");
		Game.AddCollectible("bm1_cat21","cat");
		Game.AddCollectible("bm1_cat22","cat");
		Game.AddCollectible("bm1_cat23","cat");
		Game.AddCollectible("bm1_cat24","cat");
		Game.AddCollectible("bm1_cat25","cat");
		Game.AddCollectible("bm1_cat26","cat");
		Game.AddCollectible("bm1_cat27","cat");
		Game.AddCollectible("bm1_cat28","cat");
		Game.AddCollectible("bm1_cat29","cat");
		--SetCollectibleEffect("bonestorm_explosion");
	Game.CloseObjective();
	Game.SetStageTime(130);
	Game.AddCondition("timeout");
	Game.CloseCondition();
	Game.ShowStageComplete();
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageMessageIndex(12);
	Game.AddObjective("getin");
		Game.SetObjTargetVehicle("current");
	Game.CloseObjective();
	Game.AddStageTime(0);
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageMessageIndex(273);
	Game.SetHUDIcon("catlady");
	Game.AddObjective("goto");
		Game.AddNPC ("catlady", "bm1_catlady_sd");
		Game.SetDestination("bm_catladyhouse", "carsphere");
		Game.SetCollectibleEffect("wrench_collect");
	Game.CloseObjective();
	Game.ShowStageComplete();
	Game.AddStageTime(0);
Game.CloseStage();

Game.AddStage(0);
	Game.SetMaxTraffic(2);
	Game.SetStageMessageIndex(274);
	Game.SetHUDIcon("catlady");
	Game.AddObjective("talkto","neither");
		Game.AddObjectiveNPCWaypoint( "catlady", "bm1_catlady_sd" );
		Game.SetTalkToTarget("catlady", 0, 0.2);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0,"final");
	Game.AddObjective("dialogue");
		Game.SetDialogueInfo("homer","catlady","nonsense",0);
		Game.SetCamBestSide( "bm1_bestside" );
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();