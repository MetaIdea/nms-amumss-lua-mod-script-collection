NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Shorter Shop Dialogs 1.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.35",
["MOD_DESCRIPTION"]			= "This mod removes doubles or triple intro dialogs from merchants",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MISSIONSHOP", "Text", "EXP_MISSION_GIVER_DESC_PLAIN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TextAlien",	""},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MISSIONSHOP", "Text", "TRA_MISSION_GIVER_DESC_PLAIN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TextAlien",	""},
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MISSIONSHOP", "Text", "WAR_MISSION_GIVER_DESC_PLAIN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TextAlien",	""},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE_1", "Text", "EXP_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE_1", "Text", "DNT_EXP_TECHSHOP_SPACE_LANG_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE_2", "Text", "EXP_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE_2", "Text", "DNT_EXP_TECHSHOP_SPACE_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE_3", "Text", "EXP_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE_3", "Text", "DNT_EXP_TECHSHOP_SPACE_LANG_3"},
							["REMOVE"] 	= "SECTION",
						},
						--[[  can't be used or it removes all the sections, the good and the bad ones
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE", "Text", "DNT_EXP_TECHSHOP_SPACE_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE", "Text", "DNT_EXP_TECHSHOP_SPACE_LANG_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_TECHSHOP_SPACE", "Text", "DNT_EXP_TECHSHOP_SPACE_LANG_4"},
							["REMOVE"] 	= "SECTION",
						}, --]]
						
						--[[  can't be used or it removes all the sections, the good and the bad ones
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] 	= "SECTION",
						}, --]]
						
						--[[  can't be used or it removes all the sections, the good and the bad ones
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] 	= "SECTION",
						}, --]]
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE_1", "Text", "TRA_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE_1", "Text", "DNT_TRA_TECHSHOP_SPACE_LANG_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE_2", "Text", "TRA_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE_2", "Text", "DNT_TRA_TECHSHOP_SPACE_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE_3", "Text", "TRA_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_TECHSHOP_SPACE_3", "Text", "DNT_TRA_TECHSHOP_SPACE_LANG_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE_1", "Text", "WAR_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE_1", "Text", "DNT_WAR_TECHSHOP_SPACE_LANG_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE_2", "Text", "WAR_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE_2", "Text", "DNT_WAR_TECHSHOP_SPACE_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE_3", "Text", "WAR_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_TECHSHOP_SPACE_3", "Text", "DNT_WAR_TECHSHOP_SPACE_LANG_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?EXPLORER_TECHSHOP_PLANET_1", "Text", "EXP_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?EXPLORER_TECHSHOP_PLANET_1", "Text", "DNT_EXP_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?EXPLORER_TECHSHOP_PLANET_2", "Text", "EXP_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?EXPLORER_TECHSHOP_PLANET_2", "Text", "DNT_EXP_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?EXPLORER_TECHSHOP_PLANET_3", "Text", "EXP_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?EXPLORER_TECHSHOP_PLANET_3", "Text", "DNT_EXP_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?TRADER_TECHSHOP_PLANET_1", "Text", "TRA_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?TRADER_TECHSHOP_PLANET_1", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?TRADER_TECHSHOP_PLANET_2", "Text", "TRA_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?TRADER_TECHSHOP_PLANET_2", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?TRADER_TECHSHOP_PLANET_3", "Text", "TRA_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?TRADER_TECHSHOP_PLANET_3", "Text", "DNT_TRA_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?WARRIOR_TECHSHOP_PLANET_1", "Text", "WAR_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?WARRIOR_TECHSHOP_PLANET_1", "Text", "DNT_WAR_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?WARRIOR_TECHSHOP_PLANET_2", "Text", "WAR_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?WARRIOR_TECHSHOP_PLANET_2", "Text", "DNT_WAR_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?WARRIOR_TECHSHOP_PLANET_3", "Text", "WAR_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "?WARRIOR_TECHSHOP_PLANET_3", "Text", "DNT_WAR_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] 	= "SECTION",
						},
					},
				}	
			}
		}
	}	
}