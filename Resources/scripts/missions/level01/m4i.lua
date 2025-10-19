Game.SelectMission("m4");

Game.SetMissionResetPlayerInCar("m4_williecar");
Game.SetDynaLoadData("l1z3.p3d;l1r2.p3d;l1r3.p3d;");
Game.SetNumValidFailureHints( 2 );
Game.InitLevelPlayerVehicle("willi_v","m4_willystart","OTHER");
Game.SetForcedCar();

Game.AddStage(10);
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(266);
	Game.SetHUDIcon( "burns" );
	Game.SetStageCharacterModel("willie");
	Game.AddStageVehicle("smith_v","m4_burnscar","NULL","Missions\\level01\\M4evade.con", "smithers");
	Game.AddObjective("delivery","neither");
		Game.AddCollectible("m4_evi1","bloodbag");
		Game.AddCollectible("m4_evi3","radio");
		Game.AddCollectible("m4_evi5","roadkill");
		Game.AddCollectible("m4_evi7","inhaler");
		Game.AddCollectible("m4_evi9","litter");
	Game.CloseObjective();
	Game.StageStartMusicEvent("M4_start");
	Game.ShowStageComplete();
	Game.SetStageMusicAlwaysOn();
Game.CloseStage();

Game.AddStage();
	Game.SetStageMessageIndex(267);
	Game.SetHUDIcon( "smithers" );
	Game.SetStageCharacterModel("willie");
	Game.AddStageWaypoint( "m4_burnspath1" );
	Game.AddStageWaypoint( "m4_burnspath2" );
	Game.AddStageWaypoint( "m4_burnspath3" );
	Game.AddStageWaypoint( "m4_burnspath4" );
	Game.AddObjective("dump", "neither");
		Game.SetObjTargetVehicle("smith_v");
		Game.ActivateVehicle("smith_v","NULL","evade");
		Game.SetVehicleAIParams( "smith_v", -10, -9 );
		Game.AddCollectible("m4_burnev_1","molemanr");
		Game.AddCollectible("m4_burnev_2","fish");
		Game.AddCollectible("m4_burnev_3","map");
		Game.BindCollectibleTo(0, 0);
		Game.BindCollectibleTo(1, 1);
		Game.BindCollectibleTo(2, 2);
		Game.BindCollectibleTo(3, 4);
		Game.BindCollectibleTo(4, 5);
		Game.BindCollectibleTo(5, 6);
		Game.BindCollectibleTo(6, 7);
		Game.SetCollectibleEffect("bonestorm_explosion");
	Game.CloseObjective();
	Game.AddCondition("followdistance");
		Game.SetFollowDistances(0,150);
		Game.SetCondTargetVehicle("smith_v");
	Game.CloseCondition();
	Game.ShowStageComplete();
	Game.SetFadeOut(1.0);
	Game.SwapInDefaultCar();
	Game.SetSwapDefaultCarLocator("m4_williecar");
	Game.SetSwapForcedCarLocator("m4_williecarend");
	Game.SetSwapPlayerLocator("m4_willieend");
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageCharacterModel("willie");
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "m4_willieend", "", "", "");
		Game.SetDurationTime(1);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage("final");
	Game.SetStageCharacterModel("willie");
	Game.AddObjective("dialogue");
		Game.AddNPC ("npd", "m4_hiddenbadgerbar");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.AddAmbientPcAnimation( "dialogue_shaking_fist" );
		Game.AddAmbientNpcAnimation( "none" );
		Game.SetConversationCam( 0, "pc_far" );
		Game.SetDialogueInfo("homer","npd","scotland",0);
		Game.SetDialoguePositions("m4_willieend","m4_hiddenbadgerbar","bestside_m4");
	Game.CloseObjective();
Game.CloseStage();


Game.CloseMission();
