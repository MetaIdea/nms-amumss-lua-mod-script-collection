NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoRandomSentinels_extended.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
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
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DroneSpawnTime",				"2000000"}, 	-- Original "2" 
							}
						}
					}
				}
			}
		},
		{
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
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\SENTINELS\GROUNDTABLESENTINELS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 				"0" },  -- Original "2"
								{"MaxGroupSize", 				"0" },  -- Original "3"
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
				}
			} --28 global replacements
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
