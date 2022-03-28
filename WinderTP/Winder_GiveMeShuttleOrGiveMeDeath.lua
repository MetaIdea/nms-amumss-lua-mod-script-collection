NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "_GiveMeShuttlesOrGiveMeDeath.pak",
["MOD_DESCRIPTION"]		= "Makes shuttles eternal",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.38.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Dropship",	"0"},	
								{"Fighter",		"0"},
								{"Scientific",	"0"},
								{"Shuttle",		"100"},
							}
						},
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CivilianTraderSpaceshipsCacheCount", "48"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"5", "15"},
								{"2", "10"},
								{"0.5", "7.5"},
							}
						},
					},
				},				
			}
		}
	},
}