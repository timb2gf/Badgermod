Game.SelectMission("m5");

Game.SetMissionResetPlayerInCar("m5_barneycar"); 
Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;");
Game.UsePedGroup( 0 ); 
Game.InitLevelPlayerVehicle("plowk_v","m5_barneycar","OTHER");
Game.SetForcedCar();

Game.AddStage("final");
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(266);
	Game.SetStageCharacterModel("barney", "barney");
	Game.AddObjective("delivery","neither");
		Game.AddCollectible("m5_ob1","kmeal");
		Game.AddCollectible("m5_ob2","kmeal");
		Game.AddCollectible("m5_ob3","kmeal");
		Game.AddCollectible("m5_ob4","kmeal");
		Game.AddCollectible("m5_ob5","kmeal");
		Game.AddCollectible("m5_ob6","kmeal");
		Game.AddCollectible("m5_ob7","kmeal");
		Game.AddCollectible("m5_ob8","kmeal");
		Game.AddCollectible("m5_ob9","kmeal");
		Game.AddCollectible("m5_ob10","kmeal");
		Game.AddCollectible("m5_ob11","kmeal");
		Game.AddCollectible("m5_ob12","kmeal");
		Game.AddCollectible("m5_ob13","kmeal");
		Game.AddCollectible("m5_ob14","kmeal");
		Game.AddCollectible("m5_ob15","kmeal");
	Game.CloseObjective();
	Game.StageStartMusicEvent("M5_start");
	Game.SetStageMusicAlwaysOn();
Game.CloseStage();

Game.CloseMission();