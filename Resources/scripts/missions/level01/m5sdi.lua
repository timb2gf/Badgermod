Game.SelectMission("m5sd");

Game.SetMissionResetPlayerOutCar("m5_barney", "m4_carstart");
Game.SetDynaLoadData("l1z3.p3d;l1r2.p3d;l1r3.p3d;");

Game.UsePedGroup(1); 

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageCharacterModel("barney");
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "m5_barney", "", "", "");
		Game.AddStageVehicle("plowk_v","m5_barneycar","NULL","", "");
		Game.SetDurationTime(3);
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();