Game.SelectMission("m6");

Game.SetMissionResetPlayerInCar("m6_lennycar");
Game.SetDynaLoadData("l1r4a.p3d;l1z6.p3d;l1r6.p3d;");
Game.InitLevelPlayerVehicle("tacos","m6_lennycar","OTHER");

Game.SetNumValidFailureHints( 5 );

Game.UsePedGroup(3); 

Game.SetForcedCar();

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(271);
	Game.SetHUDIcon( "homer" );
	Game.SetStageCharacterModel("lenny");
	Game.AddStageVehicle("famil_v","m6_homerstart","target","Missions\\level01\\m6follow.con", "homer");
	Game.SetVehicleAIParams( "famil_v", -10, -9 );   -- no shortcuts
	Game.AddStageWaypoint( "m6_homerend" );
	Game.AddObjective("follow","neither");
		Game.SetObjTargetVehicle("famil_v");
		Game.RemoveNPC ("carl");
		Game.SwapInDefaultCar();
		Game.SetSwapDefaultCarLocator("level1_carstart");
		Game.SetSwapForcedCarLocator("m5_van_carstart");
		Game.SetSwapPlayerLocator("level1_homer_start");
		Game.CloseObjective();
		Game.SetFadeOut(1.0);
	Game.AddCondition("followdistance");
		Game.SetFollowDistances(0,120);
		Game.SetCondTargetVehicle("famil_v");
	Game.CloseCondition();
Game.CloseStage();

Game.AddStage("final");
	Game.SetStageCharacterModel("lenny");
	Game.AddObjective("timer");
		Game.AddStageCharacter ("homer", "level1_homer_walkto", "", "", "");
		Game.AddNPC("homer", "m6_homer_sd");
		Game.AddNPC("carl", "m6_carl_end");
		Game.SetDurationTime(3);
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