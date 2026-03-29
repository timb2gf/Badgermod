Game.SelectMission("m6sd");

Game.SetMissionResetPlayerOutCar("m4_homer_start", "m4_carstart");
Game.SetDynaLoadData("l1r4a.p3d;l1z6.p3d;l1r6.p3d;");

Game.UsePedGroup(3); 

Game.AddStage();
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "m4_homer_start", "", "current", "m4_carstart");
		Game.AddNPC("burns", "m4_carl_sd");
		Game.SetDurationTime(3);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(254);
	Game.SetHUDIcon( "wstation" );
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetDestination("m4_locator_sd", "triggersphere");
		Game.SetCollectibleEffect("wrench_collect");
		Game.MustActionTrigger();
		Game.SetFadeOut(1.0);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "m6_homer", "", "current", "m4_homer_start");
		Game.SetDurationTime(3);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0);
	Game.AddObjective("dialogue");
		Game.AddNPC("npd", "m6_hiddenbadgerbar");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.SetConversationCam( 0, "pc_near" );
		Game.SetDialogueInfo("homer","npd","sucks",0);
		Game.SetDialoguePositions("m6_homer","m6_hiddenbadgerbar","m6_bestcam");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageMessageIndex(12);
	Game.AddObjective("getin", "neither");
	Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_06.p3d" );
		Game.SetObjTargetVehicle("current");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.SetStageMessageIndex(217);
	Game.SetHUDIcon( "simpsons" );
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetDestination("m6_pp", "nosphere");
		Game.SetCollectibleEffect("wrench_collect");
		Game.SetFadeOut(1.0);
		Game.SetSwapDefaultCarLocator("m4_carstart");
		Game.SetSwapPlayerLocator("m6_lenny");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.AddObjective("timer");
		Game.SetStageCharacterModel("lenny");
		Game.AddStageCharacter ("homer", "m6_lenny", "", "current", "m4_homer_start");
		Game.AddNPC ("carl", "m6_carl");
		Game.AddStageVehicle("tacos","m6_lennycar","NULL","", "");
		Game.SetDurationTime(3);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageCharacterModel("mibach");
	Game.AddObjective("dialogue");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.AddAmbientNpcAnimation( " " );
		Game.SetConversationCam( 0, "pc_far" );
		Game.AddAmbientPcAnimation( "dialogue_yes" );
		Game.SetCamBestSide("m5_bestcam");
		Game.SetDialogueInfo("lenny","carl","churro",0);
		Game.SetDialoguePositions("m6_lenny","m6_carl","m6_lennycar");
		Game.SetSwapPlayerLocator("m6_lenny");
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