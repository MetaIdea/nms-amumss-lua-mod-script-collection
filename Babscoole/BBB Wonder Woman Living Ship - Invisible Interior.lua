NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Wonder Woman Living Ship - Invisible Interior.pak",
["MOD_AUTHOR"]      = "BigBuffaloBill & Babscoole",
["NMS_VERSION"]     = "5.1.1",
["MOD_DESCRIPTION"] = "Removes many of the front interior parts of a Living Starship for the purposes of useful exploration while in 1st person mode or in VR",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    
					["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Floor"},
								{"Name", "Center"},								
								{"Name", "LeftShell1"},
								{"Name", "RightShell1"},
								{"Name", "RightDash"},
								{"Name", "LeftDash"},
								{"Name", "FrontShell"},
								{"Name", "Group30561"}								
                            },
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        },
    }
}