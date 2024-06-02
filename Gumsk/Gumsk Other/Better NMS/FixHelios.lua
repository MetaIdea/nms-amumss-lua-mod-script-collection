NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FixHelios.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.52",
["MOD_DESCRIPTION"]			= "Helios talks to you again",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/ATLASPATHTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]					= {"Event", "SE_NEXUS1_DATA"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"]	= "ALL",
							["REMOVE"] 	= "SECTION",
						},
					}
				},
			}
		}
	}	
}