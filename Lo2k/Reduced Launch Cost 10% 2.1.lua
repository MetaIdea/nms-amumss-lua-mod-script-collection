NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Reduced Launch Cost 10% 2.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.81",
["MOD_DESCRIPTION"]			= "This mods makes each launch costing 10% instead of 25% ",
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
								{"Bonus",	"20"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"20"}
							}
						}
					}
				}	
			}
		}
	}	
}