Game.SelectMission("m7");

Game.SetMissionResetPlayerInCar("m7_ned_carstart");
Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;");
Game.InitLevelPlayerVehicle("geo_v","m7_ned_carstart","OTHER");
Game.SetForcedCar();

Game.UsePedGroup( 0 ); 

Game.AddStage();
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(277);
	Game.SetMaxTraffic(0);
	Game.SetHUDIcon("mansion");	
	Game.AddStageWaypoint( "m7_pizza_race1" );
	Game.AddStageWaypoint( "m7_pizza_race2" );
	Game.AddStageWaypoint( "m7_pizza_race3" );
	Game.AddStageWaypoint( "m7_pizza_race4" );
	Game.AddStageWaypoint( "m7_race8" );
	Game.StageStartMusicEvent("M7_drama");
	Game.StartCountdown("count");
	Game.AddToCountdownSequence( "3",  1000 ); -- duration time in milliseconds
	Game.AddToCountdownSequence( "2",  1000 ); -- duration time in milliseconds
	Game.AddToCountdownSequence( "1",  1000 ); -- duration time in milliseconds
	Game.AddToCountdownSequence( "GO", 400 ); -- duration time in milliseconds
	Game.SetStageCharacterModel("ned");
	Game.AddObjective( "race","both");
		Game.AddStageVehicle("pizza","m7_smithers_carstart","race","Missions\\level01\\M7race.con");
		Game.SetStageAIRaceCatchupParams("pizza", 80, 0.5, 1.0, 1.5);
		Game.AddCollectible("m7_race2");
		Game.AddCollectible("m7_race4");
		Game.AddCollectible("m7_race6");
		Game.AddCollectible("m7_race7");
		Game.AddCollectible("m7_race8","finish_line")
		Game.AddNPC("burns", "m7_burns_place");
		Game.RemoveNPC ("ned");
	Game.CloseObjective();
	Game.AddCondition("race");
		Game.SetCondTargetVehicle("pizza");
	Game.CloseCondition();
	Game.AddCondition("outofvehicle");
		Game.SetCondTime( 10000 );
	Game.CloseCondition();
	Game.AddCondition( "damage" );
		Game.SetCondMinHealth( 0.0 );
		Game.SetCondTargetVehicle( "current" );
	Game.CloseCondition();
	Game.ShowStageComplete();
Game.CloseStage();

Game.AddStage(0);
	Game.SetHUDIcon("burns");	
	Game.SetStageMessageIndex(278);
	Game.SetStageCharacterModel("ned");
	Game.AddObjective("talkto","neither");
		Game.SetTalkToTarget("burns", 0, 0.2);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.SetStageMessageIndex(282);
	Game.SetStageCharacterModel("ned");
	Game.AddObjective("timer");
		Game.SetDurationTime(5);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageMessageIndex(12);
	Game.SetStageCharacterModel("ned");
	Game.AddObjective("getin", "neither");
		Game.SetObjTargetVehicle("current");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageMessageIndex(279);
	Game.SetHUDIcon("church");
	Game.AddObjective("goto");
		Game.SetStageCharacterModel("ned");
		Game.AddStageVehicle("famil_v","m7_homer_car","NULL","Missions\\level01\\M4follow.con");
		Game.SetDestination("m7_dest_church", "carsphere");
		Game.SetCollectibleEffect("wrench_collect");
		Game.AddNPC("bart", "m7_bart_place")
	Game.CloseObjective();
	Game.ShowStageComplete();
Game.CloseStage();

Game.AddStage();
	Game.SetHUDIcon("bart");	
	Game.SetStageMessageIndex(280);
	Game.SetStageCharacterModel("ned");
	Game.AddObjective("talkto","neither");
		Game.SetTalkToTarget("bart", 0, 0.2);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage("final");
	Game.AddObjective("timer");
	Game.SetStageCharacterModel("ned");
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
