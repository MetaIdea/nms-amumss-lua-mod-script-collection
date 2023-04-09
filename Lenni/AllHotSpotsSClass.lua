NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AllHotSpotsSClass.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.21",
["MOD_DESCRIPTION"]			= "All hotspots are S-Class",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PKW"]					= "ClassWeightings",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"C", "0"},
								{"B", "0"},
								{"A", "0"},
							}
						},
					}
				},
			}
		}
	}	
}