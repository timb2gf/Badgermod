Game.SelectMission("m4");

Game.SetMissionResetPlayerInCar("m4_williecar");
Game.SetDynaLoadData("l1z3.p3d;l1r2.p3d;l1r3.p3d;");
Game.SetNumValidFailureHints( 2 );
Game.InitLevelPlayerVehicle("willi_v","m4_willystart","OTHER");
Game.SetForcedCar();

Game.AddStage(10);
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(10);
	Game.SetHUDIcon( "powercou" );
	Game.SetStageCharacterModel("willie");
	Game.AddObjective("delivery","neither");
		Game.AddCollectible("m4_evi1","fish");
		Game.AddCollectible("m4_evi2","fish");
		Game.AddCollectible("m4_evi3","fish");
		Game.AddCollectible("m4_evi4","fish");
		Game.AddCollectible("m4_evi5","fish");
		Game.AddCollectible("m4_evi6","fish");
		Game.AddCollectible("m4_evi7","fish");
	Game.CloseObjective();
	Game.StageStartMusicEvent("M4_start");
	Game.SetStageMusicAlwaysOn();
	Game.ShowStageComplete();
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageMessageIndex(11);
	Game.SetHUDIcon( "wstation" );
	Game.AddObjective("goto");
		Game.AddNPC("burns", "m4_carl_sd");
		Game.SetDestination("m4_locator_sd", "triggersphere");
		Game.SetCollectibleEffect("wrench_collect");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage("final");
	Game.AddObjective("dialogue");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.AddAmbientNpcAnimation( "none" );
		Game.AddAmbientPcAnimation( "dialogue_hands_in_air" );
		Game.SetDialogueInfo("homer","burns","sleep",0);
	Game.CloseObjective();
Game.CloseStage();


Game.CloseMission();
