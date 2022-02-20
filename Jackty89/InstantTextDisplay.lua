GameVersion = "3_68"
ModeName = "InstantTextDisplay"
Author = "Jackty89"

TextDelay = "0.0001"

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
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
                        {
                            ["MATH_OPERATION"] 		= "*", 				
                            ["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Delay", TextDelay},
                                {"DefaultDelay", TextDelay}
							}
						}
                    }
				}				
            }
        }
    }
}