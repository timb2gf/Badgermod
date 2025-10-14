Game.SelectMission("m2");

--Game.SetMissionResetPlayerOutCar("m2_homer_inside","level1_carstart");
--Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;l1i02.p3d@", "SimpsonsHouse");

Game.SetMissionResetPlayerInCar("m1_smitherscar");
Game.SetDynaLoadData("l1z6.p3d;l1r6.p3d;");
Game.InitLevelPlayerVehicle("burns_v","m1_smitherscar","OTHER");
Game.SetForcedCar();

Game.UsePedGroup( 0 ); 

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(257);
	Game.SetStageCharacterModel("burns");
	Game.SetHUDIcon("lisa");
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetDestination( "m2_elecloc", "carsphere");
		Game.AddStageVehicle("elect_v","m2_electarus","NULL","Missions\\level01\\M2dump.con", "lisa");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.SetStageMessageIndex(258);
	Game.SetHUDIcon("book");
	Game.SetStageCharacterModel("burns");
	Game.SetVehicleAIParams( "elect_v", -10, -9 );
	Game.ActivateVehicle("elect_v","NULL","target");
	Game.AddStageWaypoint( "m2_elec_path1" );
	Game.AddStageWaypoint( "m2_elec_path12" );
	Game.AddObjective("dump","neither");
		Game.SetObjTargetVehicle("elect_v");
		Game.AddCollectible("m2_bk1","book");
		Game.AddCollectible("m2_bk2","book");
		Game.AddCollectible("m2_bk3","book");
		Game.AddCollectible("m2_bk4","book");
		Game.AddCollectible("m2_bk5","book");
		Game.AddCollectible("m2_bk6","book");
		Game.SetCollectibleEffect("bonestorm_explosion");
	Game.CloseObjective();
		Game.AddCondition( "damage" );
		Game.SetCondMinHealth( 0.0 );
		Game.SetCondTargetVehicle( "burns_v" );
	Game.CloseCondition();
	Game.AddCondition("race");
		Game.SetCondTargetVehicle("elect_v");
	Game.CloseCondition();
	--Game.SetFadeOut(1.0);
Game.CloseStage();

Game.AddStage();
	Game.SetStageMessageIndex(259);
	Game.SetStageCharacterModel("burns");
	Game.SetHUDIcon( "elect_v" );
	Game.SetVehicleAIParams( "elect_v", -10, -9 );
	Game.ActivateVehicle("elect_v","NULL","target");
	Game.AddStageWaypoint( "m2_elec_path12" );
	Game.AddObjective("destroy","neither");
		Game.SetObjTargetVehicle("elect_v");
	Game.CloseObjective();
	Game.AddCondition( "damage" );
		Game.SetCondMinHealth( 0.0 );
		Game.SetCondTargetVehicle( "burns_v" );
	Game.CloseCondition();
	Game.AddCondition("race");
		Game.SetCondTargetVehicle("elect_v");
	Game.CloseCondition();
	--Game.SetFadeOut(1.0);
	Game.StageStartMusicEvent("M2_drama");
	Game.SetCompletionDialog("greed","lisa");
	Game.ShowStageComplete();
Game.CloseStage();

Game.AddStage(3);
	Game.SetStageMessageIndex(260);
	Game.SetStageCharacterModel("burns");
	Game.SetHUDIcon("school");
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetDestination("m1_school_sd", "carsphere");
	Game.CloseObjective();
	Game.StageStartMusicEvent("M2_start");
	Game.ShowStageComplete();
Game.CloseStage();

Game.AddStage(3);
	Game.SetStageMessageIndex(261);
	Game.SetStageCharacterModel("burns");
	Game.SetHUDIcon( "bookb_v" );
	Game.AddObjective("goto");
		Game.TurnGotoDialogOff();
		Game.SetMaxTraffic(0); 
		Game.SetDestination("m2_locator_sd", "triggersphere");
		Game.AddStageVehicle("bookb_v","m2_bookcar","NULL","Missions\\level01\\M1race.con", "lovejoy");
		Game.MustActionTrigger();	
		Game.SetFadeOut(1.0);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage("final");
	Game.SetStageCharacterModel("burns");
	Game.ActivateVehicle("bookb_v","NULL","evade");
	Game.AddStageWaypoint( "m2_bookb1" );
	Game.AddObjective("timer");
		Game.SetDurationTime(4);
		Game.SetMaxTraffic(0); 
		Game.SetCompletionDialog("excel","burns");
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();


--DIALOGUE ANIMATION LIST
--
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
