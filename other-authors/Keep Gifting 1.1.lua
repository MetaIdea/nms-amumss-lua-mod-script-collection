-- File Settings --
FileName = "Keep Gifting 1.1.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "JustRuthless" -- only for reference
LuaAuthor = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= FileName,
  ["MOD_AUTHOR"]				= ModAuthor,
  ["LUA_AUTHOR"]				= LuaAuthor,
  ["NMS_VERSION"]				= NMS_Version,
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {FileSource1},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","OUTLAW_SECONDARY","Cost","GEKGIFT1"}, -- Gifting Random Outlaw Station Gek NPCs
							["REPLACE_TYPE"] 	= "ALL",										
							["VALUE_MATCH"] 	= "False",			
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},	-- KeepOpen = True will keep the dialog window open after option is selected
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","OUTLAW_SECONDARY","Cost","KORVAXGIFT1"}, -- Gifting Random Outlaw Station Korvax NPCs
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","OUTLAW_SECONDARY","Cost","VYKGIFT1"}, -- Gifting Random Outlaw Station Vy'keen NPCs
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","?TRA_NPC_SECONDARY","Cost","GEKGIFT1"}, -- Gifting Random Station Gek NPCs (with only the request description 1)
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TRA_NPC_SECONDARY","Cost","GEKGIFT1"}, -- Gifting Random Station Gek NPCs
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","EXP_NPC_SECONDARY","Cost","KORVAXGIFT1"}, -- Gifting Random Station Korvax NPCs
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","WAR_NPC_SECONDARY","Cost","VYKGIFT1"},	-- Gifting Random Station Vy'keen NPCs
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"KeepOpen",	"True",},
							},
						},
					}
				},
			}
		},
	}
}


