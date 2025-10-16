Game.SelectMission("m3sd");

Game.UsePedGroup( 0 ); 

--Game.SetInitialWalk("level1_homer_start");

Game.SetMissionResetPlayerOutCar("m3_skinnerstart", "level1_carstart");
Game.SetDynaLoadData("l1z3.p3d;l1r2.p3d;l1r3.p3d;");

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(166);
	Game.SetStageCharacterModel("skinner");
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "m3_skinnerstart", "", "", "");
		Game.AddStageVehicle("skinn_v","m3_skinnecarrstart","NULL","", "");
		Game.SetDurationTime(3);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageCharacterModel("mibach");
	Game.AddObjective("dialogue");
		Game.AddNPC ("npd", "m3_hiddenbadgerbar");
		Game.AddNPC ("skinner", "m3_skinnerstart");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.AddAmbientNpcAnimation( "dialogue_hands_in_air" );
		Game.SetConversationCam( 0, "pc_far" );
		Game.SetCamBestSide("bestside_m3");
		Game.AddAmbientPcAnimation( "dialogue_hands_in_air" );
		Game.SetDialogueInfo("skinner","npd","pedaly",0);
		Game.SetDialoguePositions("m3_skinnerstart","m3_hiddenbadgerbar","bestside_m3");
		Game.SetSwapPlayerLocator("m3_skinnecarrstart");
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();

--dialogue_hands_in_air
--dialogue_hands_on_hips
--dialogue_scratch_head
--dialogue_shaking_fist
--dialogue_thinking
--dialogue_yes
--dialogue_no
--dialogue_cross_arms 
--dialogue_open_arm_hand_gesture
--dialogue_shake_hand_in_air