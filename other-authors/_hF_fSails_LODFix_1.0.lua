LOD_MULTIPLIER = 3

Version = "1.0"
Game_Version = "4.23"
Mod_Author = "hemis FEAR"
Lua_Author = "hemis FEAR"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fSails_LODFix_"..Version..".pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "fSails: LOD Adjustment for Freighters Sails",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/SAIL1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEEDING_KEY_WORDS"] = {"Name", "Attributes"},	
							["SPECIAL_KEY_WORDS"] = {"Name", "LODDIST1"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",		LOD_MULTIPLIER}, 	
							}
						},
						{
							["PRECEEDING_KEY_WORDS"] = {"Name", "Attributes"},	
							["SPECIAL_KEY_WORDS"] = {"Name", "LODDIST2"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",		LOD_MULTIPLIER}, 	
							}
						},
						{
							["PRECEEDING_KEY_WORDS"] = {"Name", "Attributes"},	
							["SPECIAL_KEY_WORDS"] = {"Name", "LODDIST3"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",		LOD_MULTIPLIER}, 	
							}
						},
					}
				}	
			}
		}
	}	
}