Game.SelectMission("m4sd");

Game.SetMissionStartCameraName( "mission4camShape" );
Game.SetMissionStartMulticontName( "mission4cam" );
Game.SetAnimatedCameraName( "mission4camShape" );
Game.SetAnimCamMulticontName( "mission4cam" );

Game.SetMissionResetPlayerOutCar("m4_homer_start", "m4_carstart");
Game.SetDynaLoadData("l1r4a.p3d;l1z6.p3d;l1r6.p3d;");

Game.UsePedGroup(7); 

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(166);
	Game.SetStageCharacterModel("willie");
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "m3_skinnerstart", "", "", "");
		Game.AddStageVehicle("skinn_v","m3_skinnecarrstart","NULL","", "");
		Game.SetDurationTime(3);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(154);
	Game.SetHUDIcon( "wstation" );
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.AddNPC("carl", "m4_carl_sd");
		Game.SetDestination("m4_locator_sd", "triggersphere");
		Game.SetCollectibleEffect("wrench_collect");
		Game.MustActionTrigger();
	Game.CloseObjective();
	--SetCompletionDialog("camera");
Game.CloseStage();

Game.AddStage(0);
	Game.AddObjective("dialogue");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.AddAmbientNpcAnimation( "none" );
		Game.AddAmbientPcAnimation( "dialogue_hands_in_air" );
		Game.SetDialogueInfo("homer","carl","camera",0);
	Game.CloseObjective();
Game.CloseStage();

--AddStage(0);
--	SetStageMessageIndex(252);
--	SetHUDIcon( "pwrplant" );
--	AddObjective( "goto" );
--		SetDestination( "m4_start_sd", "triggersphere");
--		SetCollectibleEffect("wrench_collect");
--	CloseObjective();
--CloseStage();

Game.CloseMission();