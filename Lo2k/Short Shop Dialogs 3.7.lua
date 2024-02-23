NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= "Short Shop Dialogs 3.7.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["LUA_AUTHOR"]		= "Droseran",
	["NMS_VERSION"]		= "4.51",
	["MOD_DESCRIPTION"]	= "Reduces shop dialogs to a single page.",
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
					
						-- Remove dialogs from EXP (Korvax) mission givers
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Text","EXP_MISSION_GIVER_DESC_PLAIN"},
							["VALUE_CHANGE_TABLE"] = {
								{"TextAlien",""}
							}
						},
						
						-- Remove dialogs from TRA (Gek) mission givers
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Text","TRA_MISSION_GIVER_DESC_PLAIN"},
							["VALUE_CHANGE_TABLE"] = {
								{"TextAlien",""}
							}
						},
						
						-- Remove dialogs from WAR (Vy'keen) mission givers
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Text","WAR_MISSION_GIVER_DESC_PLAIN"},
							["VALUE_CHANGE_TABLE"] = {
								{"TextAlien",""}
							}
						},
						
						-- Delete sections contained in ?EXPLORER_TECHSHOP_PLANET_ sections first since ?EXPLORER_TECHSHOP_PLANET_ are unique key words
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?EXPLORER_TECHSHOP_PLANET_1","Text","EXP_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?EXPLORER_TECHSHOP_PLANET_1","Text","DNT_EXP_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?EXPLORER_TECHSHOP_PLANET_2","Text","EXP_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?EXPLORER_TECHSHOP_PLANET_2","Text","DNT_EXP_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?EXPLORER_TECHSHOP_PLANET_3","Text","EXP_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?EXPLORER_TECHSHOP_PLANET_3","Text","DNT_EXP_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						
						-- Delete sections containing DNT_EXP_TECHSHOP_SPACE_LANG_1 and some associated sections
						-- This works by finding the first EXP_TECHSHOP_DESC_INTRO and then setting the DNT_EXP_TECHSHOP_SPACE_LANG field in the section following it to a unique key
						-- This requires going up a level after finding the EXP_TECHSHOP_DESC_INTRO special key word
						-- Next it deletes that EXP_TECHSHOP_DESC_INTRO section
						-- At the end of the script, any sections containing the unique key are deleted (this should be more efficient than deleting them one at a time)
						-- This script should only break if more EXP_TECHSHOP_DESC_INTRO/DNT_EXP_TECHSHOP_SPACE_LANG sections are added earlier in the file
						{
							["SPECIAL_KEY_WORDS"] = {"Text","EXP_TECHSHOP_DESC_INTRO_1"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_EXP_TECHSHOP_SPACE_LANG_1",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","EXP_TECHSHOP_DESC_INTRO_1",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","EXP_TECHSHOP_DESC_INTRO_2"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_EXP_TECHSHOP_SPACE_LANG_2",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","EXP_TECHSHOP_DESC_INTRO_2",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","EXP_TECHSHOP_DESC_INTRO_3"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_EXP_TECHSHOP_SPACE_LANG_3",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","EXP_TECHSHOP_DESC_INTRO_3",},
							["REMOVE"] = "SECTION"
						},
						
						-- Now that there are not many DNT_EXP_TECHSHOP_SPACE_LANG instances left, it's easy to find and delete these
						-- ["SECTION_ACTIVE"] = {1,} is used to silence warnings
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_SPACE","Text","DNT_EXP_TECHSHOP_SPACE_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_SPACE","Text","DNT_EXP_TECHSHOP_SPACE_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_SPACE","Text","DNT_EXP_TECHSHOP_SPACE_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_SPACE","Text","DNT_EXP_TECHSHOP_SPACE_LANG_4"},
							["REMOVE"] = "SECTION"
						},
						
						-- The remaining DNT_EXP_TECHSHOP_SPACE_LANG sections can be deleted now
						-- There is some filtering still performed to try to prevent problems arising from future changes to the file
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_SPACE","Text","DNT_EXP_TECHSHOP_SPACE_LANG_1"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_SPACE","Text","DNT_EXP_TECHSHOP_SPACE_LANG_2"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_SPACE","Text","DNT_EXP_TECHSHOP_SPACE_LANG_3"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_SPACE","Text","DNT_EXP_TECHSHOP_SPACE_LANG_4"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						
						-- Delete some sections inside EXPLORER_TECHSHOP_PLANET containing DNT_EXP_TECHSHOP_PLANET_LANG
						-- ["SECTION_ACTIVE"] = {1,} is used to silence warnings
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_PLANET","Text","DNT_EXP_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_PLANET","Text","DNT_EXP_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_PLANET","Text","DNT_EXP_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_PLANET","Text","DNT_EXP_TECHSHOP_PLANET_LANG_4"},
							["REMOVE"] = "SECTION"
						},
						
						-- Delete the EXPLORER_TECHSHOP_PLANET sections that contain the last DNT_EXP_TECHSHOP_PLANET_LANG sections
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_PLANET","Text","DNT_EXP_TECHSHOP_PLANET_LANG_1"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_PLANET","Text","DNT_EXP_TECHSHOP_PLANET_LANG_2"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_PLANET","Text","DNT_EXP_TECHSHOP_PLANET_LANG_3"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EXPLORER_TECHSHOP_PLANET","Text","DNT_EXP_TECHSHOP_PLANET_LANG_4"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						
						-- Delete sections contained in ?TRADER_TECHSHOP_PLANET_ sections first since ?TRADER_TECHSHOP_PLANET_ are unique key words
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?TRADER_TECHSHOP_PLANET_1","Text","TRA_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?TRADER_TECHSHOP_PLANET_1","Text","DNT_TRA_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?TRADER_TECHSHOP_PLANET_2","Text","TRA_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?TRADER_TECHSHOP_PLANET_2","Text","DNT_TRA_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?TRADER_TECHSHOP_PLANET_3","Text","TRA_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?TRADER_TECHSHOP_PLANET_3","Text","DNT_TRA_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						
						-- Delete sections containing DNT_TRA_TECHSHOP_SPACE_LANG and some associated sections
						-- This works by finding the first TRA_TECHSHOP_DESC_INTRO and then setting the DNT_TRA_TECHSHOP_SPACE_LANG_1 field in the section following it to a unique key
						-- This requires going up a level after finding the TRA_TECHSHOP_DESC_INTRO special key word
						-- Next it deletes that TRA_TECHSHOP_DESC_INTRO section
						-- At the end of the script, any sections containing the unique key are deleted (this should be more efficient than deleting them one at a time)
						-- This script should only break if more TRA_TECHSHOP_DESC_INTRO/DNT_TRA_TECHSHOP_SPACE_LANG_1 sections are added earlier in the file
						{
							["SPECIAL_KEY_WORDS"] = {"Text","TRA_TECHSHOP_DESC_INTRO_1"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_TRA_TECHSHOP_SPACE_LANG_1",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","TRA_TECHSHOP_DESC_INTRO_1",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","TRA_TECHSHOP_DESC_INTRO_2"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_TRA_TECHSHOP_SPACE_LANG_2",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","TRA_TECHSHOP_DESC_INTRO_2",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","TRA_TECHSHOP_DESC_INTRO_3"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_TRA_TECHSHOP_SPACE_LANG_3",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","TRA_TECHSHOP_DESC_INTRO_3",},
							["REMOVE"] = "SECTION"
						},
						
						-- Now that there are not many DNT_TRA_TECHSHOP_PLANET_LANG sections left inside TRADER_TECHSHOP_SPACE sections, it's easy to find and delete these
						-- ["SECTION_ACTIVE"] = {1,} is used to silence warnings
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_SPACE","Text","DNT_TRA_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_SPACE","Text","DNT_TRA_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_SPACE","Text","DNT_TRA_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_SPACE","Text","DNT_TRA_TECHSHOP_PLANET_LANG_4"},
							["REMOVE"] = "SECTION"
						},
						
						-- This deletes the TRADER_TECHSHOP_SPACE sections that still contain DNT_TRA_TECHSHOP_PLANET_LANG sections
						-- There is some filtering performed to try to prevent problems arising from future changes to the file
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_SPACE","Text","DNT_TRA_TECHSHOP_PLANET_LANG_1"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_SPACE","Text","DNT_TRA_TECHSHOP_PLANET_LANG_2"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_SPACE","Text","DNT_TRA_TECHSHOP_PLANET_LANG_3"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_SPACE","Text","DNT_TRA_TECHSHOP_PLANET_LANG_4"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						
						-- Delete some sections inside TRADER_TECHSHOP_PLANET containing DNT_TRA_TECHSHOP_PLANET_LANG
						-- ["SECTION_ACTIVE"] = {1,} is used to silence warnings
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_PLANET","Text","DNT_TRA_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_PLANET","Text","DNT_TRA_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_PLANET","Text","DNT_TRA_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_PLANET","Text","DNT_TRA_TECHSHOP_PLANET_LANG_4"},
							["REMOVE"] = "SECTION"
						},
						
						-- Delete the TRADER_TECHSHOP_PLANET sections that contain the last DNT_TRA_TECHSHOP_PLANET_LANG sections
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_PLANET","Text","DNT_TRA_TECHSHOP_PLANET_LANG_1"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_PLANET","Text","DNT_TRA_TECHSHOP_PLANET_LANG_2"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_PLANET","Text","DNT_TRA_TECHSHOP_PLANET_LANG_3"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_TECHSHOP_PLANET","Text","DNT_TRA_TECHSHOP_PLANET_LANG_4"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						
						-- Delete sections contained in ?WARRIOR_TECHSHOP_PLANET_ sections first since ?WARRIOR_TECHSHOP_PLANET_ are unique key words
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?WARRIOR_TECHSHOP_PLANET_1","Text","WAR_TECHSHOP_DESC_INTRO_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?WARRIOR_TECHSHOP_PLANET_1","Text","DNT_WAR_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?WARRIOR_TECHSHOP_PLANET_2","Text","WAR_TECHSHOP_DESC_INTRO_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?WARRIOR_TECHSHOP_PLANET_2","Text","DNT_WAR_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?WARRIOR_TECHSHOP_PLANET_3","Text","WAR_TECHSHOP_DESC_INTRO_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?WARRIOR_TECHSHOP_PLANET_3","Text","DNT_WAR_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						
						-- Delete sections containing DNT_WAR_TECHSHOP_SPACE_LANG and some associated sections
						-- This works by finding the first WAR_TECHSHOP_DESC_INTRO and then setting the DNT_WAR_TECHSHOP_SPACE_LANG field in the section following it to a unique key
						-- This requires going up a level after finding the WAR_TECHSHOP_DESC_INTRO special key word
						-- Next it deletes that WAR_TECHSHOP_DESC_INTRO section
						-- At the end of the script, any sections containing the unique key are deleted (this should be more efficient than deleting them one at a time)
						-- This script should only break if more WAR_TECHSHOP_DESC_INTRO/DNT_WAR_TECHSHOP_SPACE_LANG sections are added earlier in the file
						{
							["SPECIAL_KEY_WORDS"] = {"Text","WAR_TECHSHOP_DESC_INTRO_1"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_WAR_TECHSHOP_SPACE_LANG_1",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","WAR_TECHSHOP_DESC_INTRO_1",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","WAR_TECHSHOP_DESC_INTRO_2"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_WAR_TECHSHOP_SPACE_LANG_2",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","WAR_TECHSHOP_DESC_INTRO_2",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","WAR_TECHSHOP_DESC_INTRO_3"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_WAR_TECHSHOP_SPACE_LANG_3",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Text","WAR_TECHSHOP_DESC_INTRO_3",},
							["REMOVE"] = "SECTION"
						},
						
						-- Now that there are not many DNT_WAR_TECHSHOP_SPACE_LANG instances left, it's easy to find and delete these
						-- ["SECTION_ACTIVE"] = {1,} is used to silence warnings
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_SPACE","Text","DNT_WAR_TECHSHOP_SPACE_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_SPACE","Text","DNT_WAR_TECHSHOP_SPACE_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_SPACE","Text","DNT_WAR_TECHSHOP_SPACE_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_SPACE","Text","DNT_WAR_TECHSHOP_SPACE_LANG_4"},
							["REMOVE"] = "SECTION"
						},
						
						-- The remaining DNT_WAR_TECHSHOP_SPACE_LANG sections can be deleted now
						-- There is some filtering performed to try to prevent problems arising from future changes to the file
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_SPACE","Text","DNT_WAR_TECHSHOP_SPACE_LANG_1"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_SPACE","Text","DNT_WAR_TECHSHOP_SPACE_LANG_2"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_SPACE","Text","DNT_WAR_TECHSHOP_SPACE_LANG_3"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_SPACE","Text","DNT_WAR_TECHSHOP_SPACE_LANG_4"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						
						-- Delete some sections inside WARRIOR_TECHSHOP_PLANET containing DNT_WAR_TECHSHOP_PLANET_LANG
						-- ["SECTION_ACTIVE"] = {1,} is used to silence warnings
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_PLANET","Text","DNT_WAR_TECHSHOP_PLANET_LANG_1"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_PLANET","Text","DNT_WAR_TECHSHOP_PLANET_LANG_2"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_PLANET","Text","DNT_WAR_TECHSHOP_PLANET_LANG_3"},
							["REMOVE"] = "SECTION"
						},
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_PLANET","Text","DNT_WAR_TECHSHOP_PLANET_LANG_4"},
							["REMOVE"] = "SECTION"
						},
						
						-- Delete the WARRIOR_TECHSHOP_PLANET sections that contain the last DNT_WAR_TECHSHOP_PLANET_LANG sections
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_PLANET","Text","DNT_WAR_TECHSHOP_PLANET_LANG_1"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_PLANET","Text","DNT_WAR_TECHSHOP_PLANET_LANG_2"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_PLANET","Text","DNT_WAR_TECHSHOP_PLANET_LANG_3"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WARRIOR_TECHSHOP_PLANET","Text","DNT_WAR_TECHSHOP_PLANET_LANG_4"},
							["SECTION_UP"] = 2,
							["REMOVE"] = "SECTION"
						},
						
						-- This finds the DNT_EXP_MAPSHOP_LANG section that directly follows a EXP_MAPSHOP_DESC section
						-- The DNT_EXP_MAPSHOP_LANG key is set to a unique key to allow the section to be deleted later
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Text","EXP_MAPSHOP_DESC"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_EXP_MAPSHOP_LANG",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						
						-- Do the same as the previous for "TRA_MAPSHOP_DESC" section
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Text","TRA_MAPSHOP_DESC"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_TRA_MAPSHOP_LANG",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						
						-- Do the same as the previous for "WAR_MAPSHOP_DESC" section
						{
							["SECTION_ACTIVE"] = {1,},
							["SPECIAL_KEY_WORDS"] = {"Text","WAR_MAPSHOP_DESC"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "DNT_WAR_MAPSHOP_LANG",
							["VALUE_CHANGE_TABLE"] = {
								{"Text","MakeThisKeyUnique"}
							}
						},
						
						-- Delete the sections containing the unique keys
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Text","MakeThisKeyUnique",},
							["REMOVE"] = "SECTION"
						},
					}
				}
			}
		}
	}
}