NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Speed Lines 1.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.37",
["MOD_DESCRIPTION"]			= "This mod removes speed lines",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
                    ["MBIN_FILE_SOURCE"]     = {"MODELS\EFFECTS\SPEEDLINES\SPEEDLINE.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Type", "SPEEDLINE"},
							["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"]     = "SECTION"
                        },
                    },
                },
			}
		}
	}	
}