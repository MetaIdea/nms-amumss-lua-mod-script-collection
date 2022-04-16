ModeName = "UninstallCoreWeapons"
Author = "Jackty89"

GCTechnologyTablePath = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= ModeName..".pak",
["MOD_DESCRIPTION"]			= ModeName,
["MOD_AUTHOR"]				= Author,
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
                {
					["MBIN_FILE_SOURCE"] 	= GCTechnologyTablePath,
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