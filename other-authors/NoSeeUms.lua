NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoSeeUms.pak",
["MOD_AUTHOR"]		= "OTBP",
["NMS_VERSION"]		= "v4.25.0.1",
["MOD_DESCRIPTION"]	= "Honey I Shrunk the Bettles",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]	= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.Precache.pak ",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/CREATURES/BEETLERIG/BEETLE/ENTITIES/BEETLEDATA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{"Scaler",	 	"0.0000001"},	 --Fractal "0.15"  Testing making the Bettles microscopic.
								{"MaxDistance",	"0"},			--Fractal "90"  Testing making them betters seen that heard.
							}
						}
					}
				}
			}
		}
	}	
}	