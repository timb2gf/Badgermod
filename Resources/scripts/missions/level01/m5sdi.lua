Game.SelectMission("m5sd");

Game.SetMissionResetPlayerOutCar("m5_barney", "m4_carstart");
Game.SetDynaLoadData("l1r7.p3d;l1z7.p3d;l1z1.p3d;");

Game.UsePedGroup(1); 

Game.AddStage();
	Game.SetStageCharacterModel("barney", "barney");
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "m5_barney", "", "", "");
		Game.AddStageVehicle("plowk_v","m5_barneycar","NULL","", "");
		Game.SetDurationTime(1);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(270);
	Game.SetStageCharacterModel("barney", "barney");
	Game.AddObjective("goto");
		Game.SetDestination("m5_starter","dice");
		Game.MustActionTrigger();
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.SetStageCharacterModel("barney", "barney");
	Game.AddObjective("timer");
		Game.SetDurationTime(1);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageCharacterModel("mibach");
	Game.AddObjective("dialogue");
		Game.AddNPC ("npd", "m5_hiddenbadgerbar");
		Game.AddNPC ("barney", "m5_barney");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.AddAmbientNpcAnimation( "dialogue_scratch_head" );
		Game.SetConversationCam( 0, "pc_far" );
		Game.AddAmbientPcAnimation( "dialogue_scratch_head" );
		Game.SetCamBestSide("m5_bestcam");
		Game.SetDialogueInfo("barney","npd","belch",0);
		Game.SetDialoguePositions("m5_barney","m5_hiddenbadgerbar","m5_bestcam");
		Game.SetSwapPlayerLocator("m5_barney");
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();