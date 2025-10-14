Game.SelectMission("m4sd");

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

Game.CloseMission();