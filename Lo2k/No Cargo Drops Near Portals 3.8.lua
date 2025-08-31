NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Cargo Drops Near Portals 3.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lowkie",
["NMS_VERSION"]				= "6.01",
["MOD_DESCRIPTION"]			= "This mod removes cargo drops near each portal",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
                    ["MBIN_FILE_SOURCE"]     = {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL.SCENE.MBIN"},
                    ["MXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Clump1"},
                            ["REMOVE"]     = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Clump2"},
                            ["REMOVE"]     = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Clump3"},
                            ["REMOVE"]     = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Clump4"},
                            ["REMOVE"]     = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Clump5"},
                            ["REMOVE"]     = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Clump6"},
                            ["REMOVE"]     = "SECTION"
                        },
                    },
                },
			}
		}
	}	
}