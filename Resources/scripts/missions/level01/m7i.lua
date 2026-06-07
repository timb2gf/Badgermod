Game.SelectMission("m7");

Game.SetMissionResetPlayerInCar("level1_carstart");
Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;");

Game.UsePedGroup( 0 ); 

Game.AddStage(0);
	Game.SetStageMessageIndex(12);
	Game.AddStageDynaLoadData("m7_trash.p3d");
	Game.AddObjective("delivery","neither");
		Game.AddCollectible("L1_Trash1, litter");
		Game.AddCollectible("L1_Trash2, litter");
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
