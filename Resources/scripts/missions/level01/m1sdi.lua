Game.SelectMission("m1sd");

Game.SetMissionResetPlayerOutCar("m1_homerstart", "m1_carstart");
Game.SetDynaLoadData("l1r2.p3d;l1r1.p3d;l1z2.p3d;");

Game.UsePedGroup( 0 ); 

Game.AddStage(0);
	Game.SetStageMessageIndex(154);
	Game.AddObjective("gooutside");
		Game.SetDestination("outside_Kwik_locator");
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage(15);
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(155);
	Game.SetHUDIcon("icecream");
	Game.SetMaxTraffic(1); 
	Game.AddObjective("goto");
		Game.AddStageVehicle("icecream","m1_icecream_sd","NULL", "Missions\\level01\\M5evade.con", "none");
		Game.SetDestination("m1_locator_sd","triggersphere");  
		Game.MustActionTrigger();
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage();
	Game.ActivateVehicle("icecream","NULL","evade");
	Game.AddStageWaypoint( "icecream_1" );
	Game.AddStageWaypoint( "icecream_2" );
	Game.AddObjective("timer");
		Game.SetDurationTime(3);
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();
