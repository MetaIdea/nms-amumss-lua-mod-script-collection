GameVersion = "3_70"
ModeName = "UninstallCoreWeapons"
Author = "Jackty89"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModeName..GameVersion..".pak",
["MOD_DESCRIPTION"]			= ModeName,   
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
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
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Core",	"False"}
							}
						},
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","LASER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Core",	"False"}
							}
						}                        
                    }
				}				
            }
        }
    }
}