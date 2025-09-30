Game.SelectMission("m1");

Game.SetMissionResetPlayerInCar("m1_carstart");
Game.SetDynaLoadData("l1z2.p3d;l1z1.p3d;l1r7.p3d;");
--Game.SetAnimatedCameraName( "cameraShape1" );
--Game.SetAnimCamMulticontName( "MasterController" );

Game.UsePedGroup( 0 ); 

Game.AddStage(0);
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(150);
	Game.AddStageVehicle("icecream","m1_icecream_sd","target", "Missions\\level01\\M1race.con", "jasper");
						--The difference is that 'race' has slow-down catch-up logic, 
						-- 'evade' doesn't
	Game.SetHUDIcon("icecream");
	Game.SetVehicleAIParams( "icecream", -10, -9 );
	Game.SetStageAITargetCatchupParams( 	"icecream", 20, 70);
	Game.AddStageWaypoint( "m1_icecream_1" );
	Game.AddStageWaypoint( "m1_icecream_2" );
	Game.AddStageWaypoint( "m1_icecream_3" );
	Game.AddStageWaypoint( "m1_icecream_5" );
	Game.AddStageWaypoint( "m1_icecream_6" );
	Game.AddStageWaypoint( "m1_icecream_7" );
	Game.AddStageWaypoint( "m1_icecream_8" );
	Game.AddStageWaypoint( "m1_icecream_4" );
	Game.AddObjective("follow","neither");
		Game.SetObjTargetVehicle("icecream");
	Game.CloseObjective();
	Game.AddCondition("followdistance");
		Game.SetFollowDistances(0, 250);
		Game.SetCondTargetVehicle("icecream");
	Game.CloseCondition();
	--Game.SetCompletionDialog("skeleton");
	Game.SetFadeOut(1.0);
Game.CloseStage();

Game.AddStage(15);
	Game.SetStageMessageIndex(158);
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetDestination("m1_schlocator_sd","triggersphere");  
		Game.AddStageCharacter ("homer", "m1_homer_school", "", "current", "m1_schoolcar");
		Game.AddStageVehicle("icecream","m1_icecream_place","target","Missions\\level01\\M1race.con");
		Game.SetCollectibleEffect("wrench_collect");  
		Game.MustActionTrigger();
		Game.SetFadeOut( 2 );
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.SetStageMessageIndex(166);
	Game.AddObjective("timer");
		Game.SetDurationTime(5);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.SetHUDIcon("pwrplant");
	Game.SetStageMessageIndex(157);
	Game.AddObjective("goto");
		Game.SetDestination("m1_powerplant_sd","carsphere");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage("final");
	Game.SetHUDIcon("wstation");
	Game.SetStageMessageIndex(254);
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetDestination("m4_locator_sd", "triggersphere");
		Game.SetCollectibleEffect("wrench_collect");
		Game.MustActionTrigger();
	Game.CloseObjective();
	--Game.SetCompletionDialog("camera");
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
