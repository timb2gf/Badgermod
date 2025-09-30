Game.SelectMission("m2sd");

Game.SetMissionResetPlayerOutCar("m4_homer_start", "m4_carstart");
Game.SetDynaLoadData("l1r4a.p3d;l1z6.p3d;l1r6.p3d;");

Game.UsePedGroup( 0 ); 

Game.AddStage(9);
	Game.SetMaxTraffic(2);
	Game.SetStageMessageIndex(08);
	Game.SetHUDIcon( "pwrplant" );
	Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_04.p3d" );
	Game.AddObjective("goto","both");
		Game.SetDestination("m4_powerplant", "carsphere");
		Game.AddNPC("burns", "m4_carl_sd");
		Game.SetCollectibleEffect("wrench_collect");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.SetStageMessageIndex(254);
	Game.SetHUDIcon( "wstation" );
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetDestination("m4_locator_sd", "triggersphere");
		Game.SetCollectibleEffect("wrench_collect");
		Game.MustActionTrigger();
	Game.CloseObjective();
	--Game.SetCompletionDialog("camera");
Game.CloseStage();

Game.AddStage(0);
	Game.AddObjective("dialogue");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.AddAmbientNpcAnimation( "none" );
		Game.AddAmbientPcAnimation( "none" );
		Game.SetDialogueInfo("homer","burns","sleep",0);
		Game.SetFadeOut( 2 );
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.AddObjective("timer");
		Game.SetDurationTime(3);
		Game.SetStageCharacterModel("burns");
		Game.TurnGotoDialogOff();
		Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_02.p3d" );
		Game.AddStageCharacter ("homer", "m1_smithers", "", "", "");
		Game.AddStageVehicle("burns_v","m1_smitherscar","target","Missions\\level01\\M1race.con");
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();