NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fullscreen Warps 4.7", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.x",
["MOD_DESCRIPTION"]		= "This mods removes ship from warp sequences",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
            {
              ["SPECIAL_KEY_WORDS"] = {"WarpSettings", "GcCameraWarpSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OffsetZStartBias", "60"},
                {"OffsetZBias",      "60"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CorvetteWarpSettings", "GcCameraWarpSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OffsetZStartBias", "32"},
                {"OffsetZBias",      "32"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FreighterWarpSettings", "GcCameraWarpSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OffsetZStartBias", "32"},
                {"OffsetZBias",      "32"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PirateFreighterWarpSettings", "GcCameraWarpSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OffsetZStartBias", "32"},
                {"OffsetZBias",      "32"}
              }
            },
					}
				}	
			}
		}
	}	
}