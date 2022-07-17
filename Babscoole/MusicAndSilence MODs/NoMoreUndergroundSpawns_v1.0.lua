NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "NoMoreUndergroundSpawns_v1.0.pak",
["MOD_AUTHOR"]    = "MusicAndSilence",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.93",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = 	"METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",											
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ProbabilityOfBeingEnabled", 	"0" },
								{"IncreasedSpawnDistance", 		"2" },					
							}
						},
					}
				},
			}
		},
	}	
}