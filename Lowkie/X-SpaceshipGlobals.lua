NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-SpaceshipGlobals.pak", 
["MOD_AUTHOR"]				= "Personal",
["NMS_VERSION"]				= "3.21",
["MOD_DESCRIPTION"]			= "Capital Fights, trader ships more ",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCAISPACESHIPGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{--Root
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AttackShipsFollowLeader",				"False"},	--Default False
								{"FlybyPlanetLandingProbability",		".05"},		--Default .02  ".30" dropping back to less way to many .05 still a lot
								{"MaxNumTurretMissiles", 				"10"},		--Default 0
								{"DisableTradeRoutes", 					"True"},	--Default False, may flip back.
								{"MissileLaunchSpeed", 					"1200"},	--Default 120
								{"FreightersSamePalette", 				"False"},	--Default false
								{"WitnessSightRange", 					"3000"},	--Default 3000
								{"FreighterAttackDisengageDistance",	"30000"},	--Default 3000
								--{"FreighterSpawnRate",					"100"},	--Default ?  for freighter battles
								--Goes with in PERSONALIZED-FastScan-MorePirates-8Tech
								--{"WarpsBetweenBattles",			"5"},	--Default 5 for freighter battles
								--{"HoursBetweenBattles",			"0"},	--Default 3 for freighter battles
									
                                
								{"AbandonedSystemShipSpawnProbablity", 		"50"},		--Default 0  50 may have been to high
								{"CrashedShipMinNonBrokenSlots", 			"8"},		--Default 3
								{"CrashedShipBrokenSlotChance", 			"0.33"},	--Default 0.75  "0.02" did not notice change -0.001 did not change it either...
								{"CrashedShipBrokenTechChance", 			"0.6"},	    --Default 0.7  "0.02" did not notice change -0.001 did not change it either...
								{"CrashedShipRepairSlotCostIncreaseFactor", "1.3"},		--Default 1.3
								{"CrashedShipGeneralCostDiscount", 			"0.1"},	--Default 0.7 "0.95" did not notice change
								{"CrashedShipTechSlotsCostDiscount", 		"0.1"},	--Default 0.1 "0.95" did not notice change
                                
                                --Added in the Fast Locate Assistant for ship hunting
                                {"MaxNumActiveTraders", 80},	-- Default 15 // Modded 104~520 depending on ship types
                                {"FillUpOutposts", true},					-- Default false

                                -- These settings allow ships to cycle in and out faster
                                {"MinimumCircleTimeBeforeLanding", 3},		-- Default 5
                                {"MinimumTimeBetweenOutpostLandings", 1},	-- Default 3
                                {"DockWaitMinTime", 20},					-- Default 20
                                {"DockWaitMaxTime", 30},					-- Default 60
                                
                                -- These settings affect spawning controls
                                {"SpaceStationTraderRequestTime", 1},		-- Default 20
                                {"ShipSpawnStationRadius", 500},			-- Default 2000
                                {"TraderArriveSpeed", 3000},				-- Default 300
                                {"TraderArriveTime", 1},					-- Default 3

                                -- Additional settings pending investigation
                                -- {"TraderWantedTime", 10},					-- Default 20
                                -- {"TraderRequestTime", 1},					-- Default 5
                                -- {"TradingPostTraderRequestTime", 1},		-- Default 5
                                -- {"TradingPostTraderRangeSpace", 1000},		-- Default 3000
                                
                                
								--{"DockingRotateSpeed", 						"0.4"},		--Default 0.7
								--{"FinalDeathExplosionScale", 				"2"},		--Default 2
								--{"FinalDeathExplosionTime", 				"0.8"},		--Default 0.8
								--{"WingmanLockArriveTime", 					"5"},	--Default 0.5 mod was "320.5"
								--{"WingmanLockDistance", 					"250"},		--Default 500

                            },
                        },
					},
				}	
			}
		}
	}	
}
	