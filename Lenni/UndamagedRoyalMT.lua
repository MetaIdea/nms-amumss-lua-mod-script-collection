NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UndamagedRoyalMT.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.07",
["MOD_DESCRIPTION"]			= "Multitools from Sentinel Pillars are not damaged",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]					= {"Id", "R_HIVE_GUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ForceFixed",	"True"},
							}
						},
					}
				},
			}
		}
	}	
}