Game.SelectMission("m3");

Game.SetMissionResetPlayerInCar("m3_skinnecarrstart");
Game.SetDynaLoadData("l1z3.p3d;l1r2.p3d;l1r7.p3d;");
Game.InitLevelPlayerVehicle("skinn_v","m3_skinnecarrstart","OTHER");
Game.SetForcedCar();

Game.SetNumValidFailureHints( 5 );

Game.UsePedGroup( 1 ); 

Game.AddStage(0);
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(253);
	Game.SetHUDIcon("kburger");
	Game.SetStageCharacterModel("skinner");
	Game.AddObjective("goto");
		Game.SetDestination("m3_dest_church", "carsphere");
		Game.AddStageVehicle("bookb_v","m3_lovejo_carstart","NULL","Missions\\level01\\M3dest.con", "lovejoy");
		Game.SetCollectibleEffect("wrench_collect");
	Game.CloseObjective();
	Game.AddCondition("outofvehicle");
		Game.SetCondTime( 10000 );
	Game.CloseCondition();
	Game.AddCondition( "damage" );
		Game.SetCondMinHealth( 0.0 );
		Game.SetCondTargetVehicle( "current" );
	Game.CloseCondition();
Game.CloseStage();

Game.AddStage("final");
	Game.SetStageMessageIndex(7);
	Game.SetHUDIcon( "smith_v" );
	Game.SetStageCharacterModel("skinner");
	Game.ActivateVehicle("bookb_v","NULL","target");
	Game.SetVehicleAIParams( "bookb_v", -10, -9 );   -- no shortcuts

	Game.AddStageWaypoint( "m3_lovjo_path1" );
	Game.AddStageWaypoint( "m3_lovjo_path3" );
	Game.AddObjective("destroy","neither");
		Game.SetObjTargetVehicle("bookb_v");
	Game.CloseObjective();
	Game.AddCondition("race");
		Game.SetCondTargetVehicle("bookb_v");
	Game.CloseCondition();
	Game.AddStageMusicChange();
	Game.AddCondition("outofvehicle");
		Game.SetCondTime( 10000 );
	Game.CloseCondition();
	Game.AddCondition( "damage" );
		Game.SetCondMinHealth( 0.0 );
		Game.SetCondTargetVehicle( "current" );
	Game.CloseCondition();
	Game.StageStartMusicEvent("M3_drama");
	Game.SetCompletionDialog("convertible", "smithers");
Game.CloseStage();

Game.CloseMission();