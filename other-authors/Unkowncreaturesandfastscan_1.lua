NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "CreatureUtilities.pak",
["MOD_AUTHOR"]		= "Corvus",
["NMS_VERSION"]		= "3.0+",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocsDisplayUnknownCreatures",		"True"}, 
								{"BinocCreatureScanTime",				"0"}
							}
						},
					}
				},
			}
		},		
	}	
}