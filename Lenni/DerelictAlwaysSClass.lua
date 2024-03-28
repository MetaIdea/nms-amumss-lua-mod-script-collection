NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DerelictAlwaysSClass.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.60",
["MOD_DESCRIPTION"]			= "Makes derelicts always drop S class upgrades",
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
							["SKW"] = {"Id", "R_FREI_TECH", "Reward", "GcRewardSpecificProduct.xml"},
							["SECTION_UP"]		= 1,
							["REPLACE_TYPE"]	= "ALL",
							["REMOVE"]			= "SECTION",
						},
						{
							["SKW"] = {"Id", "R_FREI_TECH"},
							["REPLACE_TYPE"] = "ALL",
							["VCT"] = {
								{"FreighterTechQualityOverride", "3"},
							}
						}
					}
				},
			}
		}
	}	
}