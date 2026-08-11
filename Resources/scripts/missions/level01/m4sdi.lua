Game.SelectMission("m4sd");

Game.SetMissionStartCameraName( "mission4camShape" ); --41cam cuz sick game
Game.SetMissionStartMulticontName( "mission4cam" );
Game.SetAnimatedCameraName( "mission4camShape" );
Game.SetAnimCamMulticontName( "mission4cam" );

Game.SetMissionResetPlayerOutCar("ambient_willie", "m4_carstart");
Game.SetDynaLoadData("l1z3.p3d;l1r2.p3d;l1r3.p3d;");

Game.UsePedGroup(1); 

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageCharacterModel("willie");
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "ambient_willie", "", "", "");
		Game.AddStageVehicle("willi_v","m4_williecar","NULL","", "");
		Game.SetDurationTime(3);
	Game.CloseObjective();
Game.CloseStage();

--Game.AddStage();
--	Game.RESET_TO_HERE();
--	Game.SetStageMessageIndex(270);
--	Game.SetStageCharacterModel("willie");
--	Game.AddObjective("goto");
--		Game.SetDestination("m4_starter","dice");
--		Game.MustActionTrigger();
--	Game.CloseObjective();
--Game.CloseStage();

Game.AddStage();
	Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_04.p3d" );
	Game.SetStageCharacterModel("willie");
	Game.AddObjective("timer");
		Game.SetDurationTime(1);
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();