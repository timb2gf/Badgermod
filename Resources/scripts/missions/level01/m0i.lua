Game.SelectMission("m0");

Game.SetMissionResetPlayerInCar("level1_carstart");
Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;");

Game.UsePedGroup( 0 ); 

Game.AddStage(0);
	Game.SetStageMessageIndex(12);
	Game.AddObjective("getin", "neither");
		Game.SetObjTargetVehicle("current");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(1);
	Game.RESET_TO_HERE();
	Game.SetHUDIcon( "kwike" );
	Game.ShowStageComplete();
	Game.SetStageMessageIndex(131);
	Game.AddObjective("goto");
		Game.SetDestination("m0_kwickemart","carsphere");
		Game.SetCollectibleEffect("wrench_collect");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(1);
	Game.SetHUDIcon( "kwike" );
	Game.SetMaxTraffic(2);
	Game.SetStageMessageIndex(102);
	Game.AddObjective("interior","neither");
		Game.SetDestination("KwikEMart", "kwik_mission_doorstar"); -- use name of interiors entry locator
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(15);
	Game.SetHUDIcon("icecream");
	Game.SetStageMessageIndex(152);
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetDestination("m0_locator_sd","triggersphere");  
		Game.SetCollectibleEffect("wrench_collect");  
		Game.MustActionTrigger();
		Game.SetFadeOut( 2 );
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage("final");
	Game.SetStageMessageIndex(153);
	Game.AddObjective("timer");
		Game.SetDurationTime(4);
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
