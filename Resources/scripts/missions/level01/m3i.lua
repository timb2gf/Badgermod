Game.SelectMission("m3");

Game.SetMissionResetPlayerInCar("m3_skinnecarrstart");
Game.SetDynaLoadData("l1z3.p3d;l1r2.p3d;l1r7.p3d;");
Game.InitLevelPlayerVehicle("skinn_v","m3_skinnecarrstart","OTHER");
Game.SetForcedCar();

Game.SetNumValidFailureHints( 5 );

Game.UsePedGroup( 1 ); 

Game.AddStage(0);
	Game.RESET_TO_HERE();
	Game.SetStageMessageIndex(262);
	Game.SetHUDIcon("church");
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

Game.AddStage(0);
	Game.SetStageMessageIndex(263);
	Game.SetHUDIcon( "bookb_v" );
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
	Game.AddCondition("outofvehicle");
		Game.SetCondTime( 10000 );
	Game.CloseCondition();
	Game.AddCondition( "damage" );
		Game.SetCondMinHealth( 0.0 );
		Game.SetCondTargetVehicle( "current" );
	Game.CloseCondition();
	Game.ShowStageComplete();
	Game.SetCompletionDialog("convertible", "smithers");
Game.CloseStage();

Game.AddStage(0);
	Game.SetStageMessageIndex(264);
	Game.SetHUDIcon("library");
	Game.SetStageCharacterModel("skinner");
	Game.AddObjective("goto");
		Game.AddNPC ("mibach", "m3_librarian");
		Game.SetDestination("m3_dest_library", "carsphere");
		Game.SetCollectibleEffect("wrench_collect");
	Game.CloseObjective();
	Game.AddCondition( "damage" );
		Game.SetCondMinHealth( 0.0 );
		Game.SetCondTargetVehicle( "current" );
	Game.CloseCondition();
	Game.ShowStageComplete();
Game.CloseStage();

Game.AddStage(0);
	Game.SetMaxTraffic(2);
	Game.SetStageMessageIndex(265);
	Game.SetStageCharacterModel("skinner");
	Game.AddObjective("talkto","neither");
		Game.AddObjectiveNPCWaypoint( "mibach", "m3_librarian_path1" );
		Game.SetTalkToTarget("mibach", 0, 0.2);
	Game.CloseObjective();
Game.CloseStage();

Game.AddStage("final");
	Game.SetStageCharacterModel("skinner");
	Game.AddObjective("dialogue");
		Game.AmbientAnimationRandomize( 1, 0 );      -- ( pc=0, npc=1) (nonrandom=0, random=1)
		Game.AmbientAnimationRandomize( 0, 0 );
		Game.AddAmbientNpcAnimation( "none" );
		Game.SetConversationCam( 0, "npc_far" );
		Game.AddAmbientPcAnimation( "none" );
		Game.SetDialogueInfo("homer","mibach","miba",0);
	Game.CloseObjective();
Game.CloseStage();

Game.CloseMission();