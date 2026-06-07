Game.SelectMission("m0");

Game.SetMissionResetPlayerInCar("level1_carstart");
Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;");

Game.UsePedGroup( 0 ); 

Game.AddStage(0);
	Game.SetStageMessageIndex(12);
	Game.AddStageDynaLoadData("m7_trash.p3d");
	AddObjective("delivery","neither");
		AddCollectible("PP_powerbox1");
		AddCollectible("PP_powerbox2");
		AddCollectible("PP_powerbox3");
		AddCollectible("PP_powerbox4");
		AddCollectible("PP_powerbox5");
		AddCollectible("PP_powerbox6");
		AddCollectible("PP_powerbox7");
		AddCollectible("PP_powerbox8");
		AddCollectible("PP_powerbox9");
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
