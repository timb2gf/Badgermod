Game.SelectMission("m6");

Game.SetMissionResetPlayerInCar("m6_lennycar");
Game.SetDynaLoadData("l1r4a.p3d;l1z6.p3d;l1r6.p3d;");
Game.InitLevelPlayerVehicle("tacos","m6_lennycar","OTHER");

Game.SetNumValidFailureHints( 5 );

Game.UsePedGroup(3); 

Game.SetForcedCar();

Game.AddStage("final"); -- destroy the video games!
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(16);
	Game.SetHUDIcon( "bonestor" );
	Game.AddStageVehicle("famil_v","m6_homerstart","target","Missions\\level01\\M4evade.con", "homer");
	Game.SetVehicleAIParams( "famil_v", -10, -9 );   -- no shortcuts
	Game.AddStageWaypoint( "m6_homerend" );
	Game.AddObjective("follow","neither");
		Game.SetObjTargetVehicle("famil_v");
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