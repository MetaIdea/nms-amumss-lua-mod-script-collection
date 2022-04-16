NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoHazardDamage.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ENVIRONMENT\HAZARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = {"NoOxygen","DamageRate",},
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExtremeHeat","DamageRate",},
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExtremeCold","DamageRate",},
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ToxicGas","DamageRate",},
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Radiation","DamageRate",},
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"NoOxygen","WoundRate",},
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExtremeHeat","WoundRate",},
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExtremeCold","WoundRate",},		
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ToxicGas","WoundRate",},			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Radiation","WoundRate",},				
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"x",	"0"},
								{"y",	"0"},
							}
						},
					}
				},
			}
		}, --20 global replacements 
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE