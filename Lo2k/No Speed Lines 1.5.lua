NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Speed Lines 1.5.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.52",
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
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NormalLines1"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NormalLines2"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BigLines"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MiniJump2"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MiniJump1"},
                            ["REMOVE"]     = "SECTION"
                        },
                    },
                },
			}
		}
	}	
}