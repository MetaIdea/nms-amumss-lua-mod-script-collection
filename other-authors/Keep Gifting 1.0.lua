NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Keep Gifting 1.0.pak",
  ["MOD_AUTHOR"]				= "JustRuthless",
  ["NMS_VERSION"]				= "3.89",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
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
			},
		}
	},
}


