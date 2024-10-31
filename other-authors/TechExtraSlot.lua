AllMinSize = 			48 		--min value of ship, freighter, etc... size 
AllMaxSize = 			48 		--max value of ship, freighter, etc... size 
WeaponMinSize = 		24 		--min value of weapon size
WeaponMaxSize = 		24 		--max value of weapon size
PersonalTechWidth = 	8		--max personal suit tech width
PersonalTechHeight =  	6		--max personal suit tech height

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TechExtraSlots.pak",
["MOD_DESCRIPTION"]			= "Increase to max tech and cargo extra slot for suit, ship, freighter, etc...",
["MOD_AUTHOR"]				= "OnyKroN",
["NMS_VERSION"]				= "3.0.1",
["MODIFICATIONS"] 			= 
	{
		{
			
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "Table",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	AllMinSize},
								{"MaxSize", AllMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_SMALL",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	WeaponMinSize},
								{"MaxSize",	WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_MEDIUM",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	WeaponMinSize},
								{"MaxSize",	WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_LARGE",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	WeaponMinSize},
								{"MaxSize",	WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_DEFAULT",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	WeaponMinSize},
								{"MaxSize",	WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_PRISTINE",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	WeaponMinSize},
								{"MaxSize",	WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_ALIEN",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	WeaponMinSize},
								{"MaxSize",	WeaponMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "GenerationData",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		AllMinSize},
								{"MaxSlots", 		AllMaxSize},
								{"MinExtraTech", 	AllMinSize},
								{"MaxExtraTech", 	AllMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponSmall",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		WeaponMinSize},
								{"MaxSlots", 		WeaponMaxSize},
								{"MinExtraTech", 	WeaponMinSize},
								{"MaxExtraTech", 	WeaponMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponMedium",	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		WeaponMinSize},
								{"MaxSlots", 		WeaponMaxSize},
								{"MinExtraTech", 	WeaponMinSize},
								{"MaxExtraTech", 	WeaponMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponLarge",	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		WeaponMinSize},
								{"MaxSlots", 		WeaponMaxSize},
								{"MinExtraTech", 	WeaponMinSize},
								{"MaxExtraTech", 	WeaponMaxSize},
							}
						} --75 global replacements
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PlayerPersonalInventoryTechWidth",	PersonalTechWidth},
								{"PlayerPersonalInventoryTechHeight",	PersonalTechHeight},
							}
						}	
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PlayerPersonalInventoryTechWidth",	PersonalTechWidth},
								{"PlayerPersonalInventoryTechHeight",	PersonalTechHeight},
							}
						}	
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE