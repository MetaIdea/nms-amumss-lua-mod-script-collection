NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoChargePortal.pak",
["MOD_AUTHOR"]				= "idea by Seekker, script by Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\BUTTON.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL5"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL6"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL7"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL8"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL9"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL10"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL11"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL12"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL13"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL14"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL15"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MAINT_PORTAL16"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRandAmount",	"0"}, 		-- Original "100"
								{"MaxRandAmount",	"0"} 		-- Original "100"								
							}						
						}
					} --32 global replacements
				}
			}
		}	
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE