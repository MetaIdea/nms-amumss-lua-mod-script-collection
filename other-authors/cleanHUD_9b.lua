NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "cleanHUD_9B.pak", 
["MOD_AUTHOR"]				= "hilightnotes",
["LUA_AUTHOR"]				= "Vasiliy",
["NMS_VERSION"]				= "3.75",
["MOD_DESCRIPTION"]			= "This mod is a part of CLEAN_HUD mod. Translated to LUA with no changes.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandControlMoveSpeed",	"25"}, -- ???
								{"HandControlWarpSelectAngle",	"360"}, -- ???
							}
						},
						
						{							
							["SPECIAL_KEY_WORDS"] = {"IntroLabelAlignmentVR","Vector2f.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.5"}, -- ???
								{"y",	"0.25"}, -- ???
							}
						}
					}
				}
			}
		}
	}	
}