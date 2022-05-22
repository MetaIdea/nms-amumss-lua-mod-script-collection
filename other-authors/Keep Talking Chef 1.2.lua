NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Keep Talking Chef 1.2.pak",
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
			},
		}
	},
}


