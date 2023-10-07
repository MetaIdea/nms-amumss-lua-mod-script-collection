NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Distinct Pirate Systems.pak", 
["MOD_AUTHOR"]				= "Pixelyunkee",
["LUA_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.45",
["MOD_DESCRIPTION"]			= "Make pirate systems white on the galaxy map when the economy filter is active",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PKW"]		= {"ConflictFilterDefaultColours", "Pirate"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1"},
								{"G", "1"},
								{"B", "1"},
							}
						},
					}
				},
			}
		}
	}	
}