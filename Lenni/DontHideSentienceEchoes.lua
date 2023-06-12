NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DontHideSentienceEchoes.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.30",
["MOD_DESCRIPTION"]			= "Do not hide sentience echoes crystals",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/EXTREMESENTINELPROPS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]		= {"DebugName", "LCRYSTALTORSO"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SupportsScanToReveal", "False"},
							}
						},
					}
				},
			}
		}
	}	
}