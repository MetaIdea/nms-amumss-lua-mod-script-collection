NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-FastScan-MorePirates-CapitalSpawn.pak", 
["MOD_AUTHOR"]				= "Personal Built",
["NMS_VERSION"]				= "3.3",
["MOD_DESCRIPTION"]			= "FastScan MorePirates Capital spawn jump rate",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxNumSameGroupTech",			"3"},--Default 3
								{"ShipInteractRadius",			"400"}, --Increased range of ship transfer
								{"SurveyMaxDistance",			"800"},--Default 400
								--{"TerrainResourceScanTime",		".5"},--Default 30 --new..
								--{"TerrainResourceScanRange",	"2400"},--Default 1200
								--{"TerrainResourceCompassRange",	"1200"},--Default 120
								{"BinocTimeBeforeScan",			"0.01"},--Default 0.5
								{"BinocMinScanTime",			"0.02"},--Default 3.9
								{"BinocScanTime",				"0.02"},--Default 3.9
								{"BinocCreatureScanTime",		"0.02"},--Default 3.2	
								{"ZoomFindBuildingRange",		"1200"},--Default 600
								{"TorchFoV",					"360"}, -- Original "100"	
								{"TorchStrength",				"2"},	-- Original "4"
								{"TorchOffsetY",				"1"},	-- Original "0.5"
								{"TorchOffsetZ",				"-1"},	-- Original "-0.5							
								--{"WarpsBetweenBattles",			"1"},	--Default 5? for freighter battles
								{"HoursBetweenBattles",			"5"},	--Default 3? for freighter battles	
								--Goes with in PERSONALIZED_BetterShipAI
								--{"FreighterSpawnRate",					"100"},	--Default ?  for freighter battles
								
                                --New Testing
                                --{"TerrainResourceScanTime",		"30"},--Default 30 --new..
                                --{"ScannerMarkerFadeTime",			"120"},	--Default 120 does NOT affect freighter scans
                                {"ScannerSmallMarkerFadeTime",			"800"},	--Default 5 
                                --{"ScannerPhysicsProbeAABBSize",			"25"},	--Default 25 
                                --{"ScannerAnalyzeFXRate",			"0.5"},	--Default 0.5 
                                {"ScannerSubstanceTimePerTrigger",			"150"},	--Default 35 --changes how long ore outlines lasts 300 seemed long						
							}
						},	
						{							
							["PRECEDING_KEY_WORDS"] = {"ToolScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"PulseRange","1000"},--Default 200
								{"ChargeTime","1"},--Default 30
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"ToolScanHardMode"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"PulseRange","700"},--Default 150
								{"ChargeTime","3"},--Default 90
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"WaypointScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"PulseRange","25000"},--Default 5000
								{"PulseTime","1"},--Default 4
								{"ChargeTime","1"},--Default 4
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"BeaconScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{															
								{"PulseTime","1"},--Default 8
								{"ChargeTime","1"},--Default 4
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"RadioTowerScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{				
								{"PulseRange","500000"},--Default 100000							
								{"PulseTime","1"},--Default 8
								{"ChargeTime","1"},--Default 4
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"ObservatoryScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{				
								{"PulseRange","500000"},--Default 100000							
								{"PulseTime","1"},--Default 8
								{"ChargeTime","1"},--Default 4
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"DistressSignalScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{				
								{"PulseRange","500000"},--Default 100000							
								{"PulseTime","1"},--Default 8
								{"ChargeTime","1"},--Default 4
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"DebugScanSpace"},
							["VALUE_CHANGE_TABLE"] 	= 
							{					
								{"PulseTime","1"},--Default 5
								{"ChargeTime","1"},--Default 4
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"DebugScanPlanet"},
							["VALUE_CHANGE_TABLE"] 	= 
							{					
								{"PulseTime","1"},--Default 5
								{"ChargeTime","1"},--Default 4
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"ShipScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"PulseRange","1000000"},--Default 10000
								{"PulseTime","1"},--Default 3
								{"ChargeTime","1"},--Default 10
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"VisualScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"PulseRange","500000"},--Default 10000
								{"PulseTime","1"},--Default 8
								{"ChargeTime","1"},--Default 4
							}
						},
						{								
							["PRECEDING_KEY_WORDS"] = {"ZoomLevels","GcZoomData.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"MaxScanDistance","100"},--Default 10
							}
						},
						{								
							["PRECEDING_KEY_WORDS"] = {"ZoomLevels","GcZoomData.xml","GcZoomData.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"MaxScanDistance","250"},--Default 25
								{"WalkSpeed","1.0"},--Default 0.5
							}
						},
						{								
							["PRECEDING_KEY_WORDS"] = {"ZoomLevels","GcZoomData.xml","GcZoomData.xml","GcZoomData.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"FoV","40"},--Default 40
								{"MinScanDistance","1"},--Default 5
								{"MaxScanDistance","700"},--Default 70
								{"WalkSpeed","1.0"},--Default 0.4
							}
						},
						{								
							["PRECEDING_KEY_WORDS"] = {"ZoomLevels","GcZoomData.xml","GcZoomData.xml","GcZoomData.xml","GcZoomData.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"FoV","15"},--Default 20
								{"MinScanDistance","1"},--Default 20
								{"MaxScanDistance","5000"},--Default 500
								{"WalkSpeed","1.0"},--Default 0.3
							}
						},
						{--PIRATE CHANGES START HERE
							 ["PRECEDING_KEY_WORDS"]	= {"PIRATEINTERESTLEVELS"},
							 ["REPLACE_TYPE"]			= "ALL",
							 ["VALUE_CHANGE_TABLE"] 	= 
							 {
								 {"100000","10000"},--DEFAULT 100000 
								 {"500000","50000"},--DEFAULT 500000 
								 {"2500000","250000"},--DEFAULT 2500000 The lower the more interest
							 }
						 },
						{							
							["PRECEDING_KEY_WORDS"]	= {"PirateInterestLevelsSurvival"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"50000","5000"},--Default 50000
								{"150000","15000"},--Default 150000
								{"1600000","160000"},--Default 1600000  The lower the more interest
							}
						},	
						{							
							["PRECEDING_KEY_WORDS"] = {"SpacePirateTimers","High"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"x","30"},--Default 60
								{"y","150"},--Default 300
							}
						},
						{							
							["PRECEDING_KEY_WORDS"]	= {"SpacePirateTimers","Normal"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"x","60"},--Default 120
								{"y","225"},--Default 450
							}
						},
						{	
							["PRECEDING_KEY_WORDS"]	= {"SpacePirateTimers","Low"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"x","90"},--Default 180
								{"y","300"},--Default 600
							}
						},
						-- {	--Removed in NMS 4.0
							-- ["PRECEDING_KEY_WORDS"]	= {"HardSpacePirateTimers","High"},							
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {								
								-- {"x","30"},--Default 60
								-- {"y","45"},--Default 90
							-- }
						-- },
						-- {	
							-- ["PRECEDING_KEY_WORDS"]	= {"HardSpacePirateTimers", "Normal"},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {								
								-- {"x","38"},--Default 75
								-- {"y","45"},--Default 90
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"HardSpacePirateTimers","Low"},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {								
								-- {"x","45"},--Default 90
								-- {"y","75"},--Default 150
							-- }
						-- },										
					}
				}								
			}
		}
	}	
}