ModName = "No Mans Land extreme cost for Portal recharging"
GameVersion = "4_23"
Description = "Practically diables Portals outside the quests"



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
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL1"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL2"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL3"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL4"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL5"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL6"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL7"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL8"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL9"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL10"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL11"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL12"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL13"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL14"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL15"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						},
						{
							
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_PORTAL16"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"9999"}
							}
						}
						
							
					}
				}
			}
		}
	}
}


