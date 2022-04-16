NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Ship Teleporter Module Range 3.5.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.82",
["MOD_DESCRIPTION"]			= "This mods increases Ship Teleporter Module range from 100 to 400",
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
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_TELEPORT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"400"}
							}
						}
					}
				}	
			}
		}
	}	
}