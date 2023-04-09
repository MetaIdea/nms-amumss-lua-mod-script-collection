NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Distinct Pirate Systems.pak", 
["MOD_AUTHOR"]				= "Pixelyunkee",
["LUA_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.21",
["MOD_DESCRIPTION"]			= "Makes Pirate systems white on the galaxy map",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {
												"GCGALAXYGLOBALS.GLOBAL.MBIN",
											},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_FIRST"]		= "TRUE",
							["PKW"]		= "ConflictFilterDefaultColours",
							["SKW"]		= {"Pirate", "Colour.xml"},
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