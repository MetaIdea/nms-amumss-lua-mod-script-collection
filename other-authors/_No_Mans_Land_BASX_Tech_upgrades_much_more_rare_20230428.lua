ModName = "No Mans Land BASX Tech upgrades become much more rare"
GameVersion = "4_23"
Description = "Number of BASX tech mod upgrades offered at various tech stores reduced by 2/3"



NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "youngneil1",
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						
						{
							--ShipTechSpecialist
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"Value", "U_LAUNCH2"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale",	"10"},	
								{"MaxItemsForSale",	"12"}			
							}
						},
						{
							--SuitTechSpecialist
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"Value", "U_ENERGY3"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale",	"10"},	
								{"MaxItemsForSale",	"12"}			
							}
						},
						{
							----WeapTechSpecialist
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"Value", "U_LASER3"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale",	"10"},	
								{"MaxItemsForSale",	"12"}			
							}
						},
						{
							--VehicleTechSpecialist
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"Value", "U_EXOGUN2"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale",	"10"},	
								{"MaxItemsForSale",	"12"}			
							}
						},
						{
							--piratetech and illegalProds
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Value", "U_SHIPBLOBX"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale",	"10"},	
								{"MaxItemsForSale",	"12"}			
							}
						}
						
					}
				}
			}
		}
	}
}


