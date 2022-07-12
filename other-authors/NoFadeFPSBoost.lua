NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	= "NoFadeFPSBoost.pak",
["MOD_AUTHOR"] 		= "WoodyMontana",
["NMS_VERSION"] 	= "3.62",
["MODIFICATIONS"] = 
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TerrainFadeTime",			"0"},
								{"TerrainFadeTimeInShip",	"0"},
								{"CreatureFadeTime",		"0"},
								{"FloraFadeTimeMin",		"0"},
								{"FloraFadeTimeMax",		"0"},
							}
						}
					}
				}
			}
		}
	}
}