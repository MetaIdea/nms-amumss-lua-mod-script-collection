NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "WhisperWings.pak",
["MOD_AUTHOR"]		= "Prescient Stones",
["NMS_VERSION"]		= "Worlds 5.2.0.2",
["MOD_DESCRIPTION"]	= "Muted butterfly scratching audio",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]	= 
	{
		{
			--["PAK_FILE_SOURCE"] 	= "NMSARC.Precache.pak ",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/CREATURES/BUTTERFLYRIG/LARGEBUTTERFLY/ENTITIES/LARGEBUTTERFLYDATA.ENTITY.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{"MaxDistance",	"0"},			--Worlds "90"  Muted them betters seen that heard.
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/CREATURES/BUTTERFLYRIG/BUTTERFLYFLOCK/ENTITIES/BUTTERFLYFLOCK.ENTITY.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{"MaxDistance",	"0"},			--Worlds "90"  Muted them betters seen that heard.
							}
						}
					}
				}
			}
		}
	}	
}	