NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoEmptyCrates.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.06",
["MOD_DESCRIPTION"]			= "Crates always give a reward",
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
							["SKW"]					= {"Id", "CRATE"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RewardChoice",	"SelectAlways"},
							}
						},
						{
							["SKW"]					= {"Id", "BARREL"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RewardChoice",	"SelectAlways"},
							}
						},
					}
				},
			}
		}
	}	
}