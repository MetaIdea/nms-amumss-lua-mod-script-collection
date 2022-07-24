NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Reduced Launch Cost 5% 2.5.pak", 
["MOD_AUTHOR"]				= "Lexman6",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.96",
["MOD_DESCRIPTION"]			= "This mods removes any launch cost",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"10"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"10"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"5"}
							}
						}
					}
				}	
			}
		}
	}	
}