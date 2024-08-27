NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Stop Smacking the Cat - Move Explorer and Royal Hatch Handles (4 VR).pak",
["MOD_AUTHOR"]      = "BigBuffaloBill",
["NMS_VERSION"]     = "5.1.1",
["MOD_DESCRIPTION"] = "Moves the hatch eject handles upward in Exploere and Royal Ships (they actually use the same interior from a design standpoint) and repostions so that you don't knock the cat off the sofa when playing sitting, in VR, and try to get out of the ship!",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
				{
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR.SCENE.EXML",
                    ["EXML_CHANGE_TABLE"] =
                    {
						
						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","joint4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.341109"},
								{"RotX", "180"}
                            },
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","joint3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.341109"},
								{"RotX", "180"}
                            },
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","SUB4Dash1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "-0.00877"},
								{"TransZ", "1.0249"},
								{"RotX", "180"}								
                            },
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","SUB4Dash4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "-0.00877"},
								{"TransZ", "1.0249"},
								{"RotX", "180"}	
                            },
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","LHandRailStartPos"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.394646"}
                            },
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","RHandRailStartPos"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.396677"}
						
                            },
                        },	
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","LHandRailEndPos"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "0.50"},
								{"TransY", "0.394646"}
                            },
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","RHandRailEndPos"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "-0.50"},
								{"TransY", "0.396677"}					
                            },
                        }						
						
						
                    }
                },
            },
        },
    }
}