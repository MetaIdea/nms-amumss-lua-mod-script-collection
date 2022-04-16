NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoPirates+NoRandomSentinels-extended.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnPirates",				"False"}, 	-- Original "True"
								{"SpawnRobots",					"False"}	-- Original "True"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCROBOTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DroneSpawnTime",				"2000000"}, 	-- Original "2" 
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PirateBattleMaxTime",			"2000000"}, 	-- Original "20"
								{"PirateArriveTime",			"3000000"}		-- Original "3"
							}
						}
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","DRONE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	""} 		-- Original "MODELS/COMMON/ROBOTS/DRONE.SCENE.MBIN"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\ROLEDESCRIPTIONTABLES\SENTINELS\GROUNDTABLESENTINELS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupScale", 				"0" },  -- Original "1"
								{"MaxGroupScale", 				"0" },  -- Original "1"
								{"MinGroupSize", 				"0" },  -- Original "2"
								{"MaxGroupSize", 				"0" },  -- Original "3"
								{"GroupsPerSquareKm", 			"0" },  -- Original "1"
								{"FractionActiveInDay", 		"0" },  -- Original "1"
								{"FractionActiveInNight", 		"0" },  -- Original "1"
								{"ProbabilityOfBeingEnabled", 	"0" },  -- Original "1"
								{"IncreasedSpawnDistance", 		"0" }  	-- Original "10"						
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\ROBOTDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DRONE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MoveArea", 		"0" }, -- Original "Air" --this won't work, not the same type
								{ "MinScale", 		"0" }, -- Original "1"
								{ "MaxScale", 		"0" }, -- Original "1"
								{ "MoveRange", 		"0" }, -- Original "100"
								{ "MoveSpeedScale", "0" }, -- Original "1"
								{ "HeightMin", 		"0" }, -- Original "1"
								{ "HeightMax", 		"0" }, -- Original "256"
								{ "HeightTime", 	"0" }, -- Original "5"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "Count" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"
								{"y",	"0"} 		-- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"
								{"y",	"0"} 		-- Original "1"
							}
						}
					}
				}
			} --35 global replacements
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE