-- File Settings --
FileName = "Keep Talking Polo E7 1.0.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "JustRuthless" -- only for reference
LuaAuthor = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/SIMULATION/MISSIONS/SEASONALMISSIONTABLE.MBIN"

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
							["SPECIAL_KEY_WORDS"]   = {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M1"},
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M2"},
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M3"},
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "D_ROGUE_INTRO_3", "Cost", "C_ROGUE_M1"},
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "D_ROGUE_INTRO_3", "Cost", "C_ROGUE_M2"},
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "D_ROGUE_INTRO_3", "Cost", "C_ROGUE_M3"},
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"KeepOpen",	"True",},
							},
						},
					},
				}
			},
		}
	},
}