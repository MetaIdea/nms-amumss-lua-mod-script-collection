NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DistinctShipTiers.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.08",
["MOD_DESCRIPTION"]			= "Each ship tier has its own slot range",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						--Explorers
						{
							["PKW"]					= {"GenerationData", "SciSmall"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSlots",		"28"},
								{"MaxTechSlots",	"18"},
							}
						},
						{
							["PKW"]					= {"GenerationData", "SciMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",		"29"},
							}
						},
						{
							["PKW"]					= {"GenerationData", "SciLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",		"33"},
								{"MinTechSlots",	"25"},
							}
						},

						--Fighters
						{
							["PKW"]					= {"GenerationData", "FgtMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",		"29"},
								{"MinTechSlots",	"20"},
							}
						},
						{
							["PKW"]					= {"GenerationData", "FgtLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",		"33"},
								{"MinTechSlots",	"25"},
							}
						},

						--Shuttles
						{
							["PKW"]					= {"GenerationData", "ShuSmall"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSlots",		"29"},
							}
						},
						{
							["PKW"]					= {"GenerationData", "ShtMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",		"30"},
								{"MinTechSlots",	"20"},
							}
						},

						--Haulers
						{
							["PKW"]					= {"GenerationData", "DrpSmall"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSlots",		"35"},
							}
						},
						{
							["PKW"]					= {"GenerationData", "DrpMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinTechSlots",	"19"},
								{"MaxSlots",		"39"},
							}
						},
						{
							["PKW"]					= {"GenerationData", "DrpLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinTechSlots",	"25"},
							}
						},

						--Standard MT
						{
							["PKW"]					= {"GenerationData", "WeaponSmall"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSlots",			"14"},
								{"MaxTechSlots",		"14"},
							}
						},
						{
							["PKW"]					= {"GenerationData", "WeaponMedium"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",			"15"},
								{"MinTechSlots",		"15"},
								{"MaxSlots",			"19"},
								{"MaxTechSlots",		"19"},
							}
						},
						{
							["PKW"]					= {"GenerationData", "WeaponLarge"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",		"20"},
								{"MinTechSlots",	"20"},
							}
						},
					}
				},
			}
		}
	}	
}