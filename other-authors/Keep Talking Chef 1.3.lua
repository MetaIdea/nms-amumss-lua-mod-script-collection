-- File Settings --
FileName = "Keep Talking Chef 1.3.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
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
							["SPECIAL_KEY_WORDS"]   = {"Id","EXOTIC_CHEF","Cost","C_NEXUSCHEF1"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","EXOTIC_CHEF","Cost","C_NEXUSCHEF2"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_MATCH"] 	= "False",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"KeepOpen",	"True",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","EXOTIC_CHEF","Cost","C_NEXUSCHEF3"},
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


