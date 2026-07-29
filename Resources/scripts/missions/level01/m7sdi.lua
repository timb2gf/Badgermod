Game.SelectMission("m7sd");

Game.SetMissionResetPlayerOutCar("level1_homer_start", "level1_carstart");
Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;");

Game.UsePedGroup( 0 );

Game.SetMissionStartCameraName( "mission0camShape" );
Game.SetMissionStartMulticontName( "mission0cam" );
Game.SetMissionStartCameraName( "mission0camShape" );
Game.SetMissionStartMulticontName( "mission0cam" );

Game.SetInitialWalk("level1_homer_walkto");

Game.AddStage(0);
	Game.SetMaxTraffic(2);
	Game.SetHUDIcon("lenny");	
	Game.SetStageMessageIndex(275);
	Game.AddObjective("talkto","neither");
		Game.AddStageVehicle("pizza","m7_blackvan","NULL","Missions\\level01\\M4follow.con");
		Game.AddNPC("lenny", "m1_marge_sd");
		Game.SetTalkToTarget("lenny", 0, 0.2);
		Game.AddNPC("carl", "m6_carl_end");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0);
	Game.SetMaxTraffic(2);
	Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_07.p3d" );
	Game.SetHUDIcon("ned");	
	Game.SetStageMessageIndex(276);
	Game.AddObjective("talkto","neither");
		Game.AddNPC("ned", "m2_ned_sd");
		Game.SetTalkToTarget("ned", 0, 0.2);
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