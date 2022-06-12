-- File Settings --
FileName = "Max Technology Stats Default Type Chance 1.1.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "JustRuthless" -- only for reference
LuaAuthor = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

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
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["MATH_OPERATION"] 		  = "*F:ValueMax",
							["INTEGER_TO_FLOAT"] 		= "FORCE",
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ValueMin",	"1",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MinIsSuperRare",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MinIsRare",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MinIsUncommon",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MaxIsSuperRare",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MaxIsRare",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MaxIsUncommon",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
					}
				},
			}
		},
	}
}