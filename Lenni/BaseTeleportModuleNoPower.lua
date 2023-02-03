NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BaseTeleportModuleNoPower.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.08",
["MOD_DESCRIPTION"]			= "Base Teleport Module doesn't require power",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]					= {"ID", "TELEPORTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Rate",	"0"},
							}
						},
					}
				},
			}
		}
	}	
}