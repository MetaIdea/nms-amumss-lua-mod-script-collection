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
							["SPECIAL_KEY_WORDS"] = {"Value", "U_LAUNCH2"},				
							["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale",	"10"},	
								{"MaxItemsForSale",	"12"}			
							}
						},
						{
							--SuitTechSpecialist
							
							["SPECIAL_KEY_WORDS"] = {"Value", "U_ENERGY3"},	
                            ["SECTION_ACTIVE"] = 2,                            
							["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale",	"10"},	
								{"MaxItemsForSale",	"12"}			
							}
						},
						{
							----WeapTechSpecialist
							["SPECIAL_KEY_WORDS"] = {"Value", "U_LASER3"},	
                            ["SECTION_ACTIVE"] = 2,                             
							["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale",	"10"},	
								{"MaxItemsForSale",	"12"}			
							}
						},
						{
							--VehicleTechSpecialist
							["SPECIAL_KEY_WORDS"] = {"Value", "U_EXOGUN2"},				
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


