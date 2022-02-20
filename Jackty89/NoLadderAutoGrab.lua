GameVersion = "3_68"
ModeName = "NoLadderAutoGrab"
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
					["MBIN_FILE_SOURCE"] 	= "GCCHARACTERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"LadderDistanceToAutoMount", "-1"},
                                {"SitPostureChangeTimeMin", "0.1"},
                                {"SitPostureChangeTimeMax", "1"}
							}
						}
                    }
				}
            }
        }
    }
}